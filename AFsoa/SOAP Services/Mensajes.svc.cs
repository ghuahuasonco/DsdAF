using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;
using System.Data.SqlClient;
using System.Net;
using System.Net.Mail;
using System.Net.Mime;

namespace SOAP_Services
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "Mensajes" in code, svc and config file together.
    public class Mensajes : IMensajes
    {

        public string CadenaConexion() {
            return "Data Source = ghuahuasonco; Initial Catalog = BD_AF; Integrated Security = True";
        }

        public string ObtenerTrainigProgram(int Trainig) { 
            try
            {
                SqlConnection cone = new SqlConnection(CadenaConexion());
                cone.Open();

                SqlDataAdapter cmd = new SqlDataAdapter("SELECT DESTPG+':'+CONVERT(CHAR(10),TPGFIN,126)+'  '+CONVERT(CHAR(10),TPGFFI,126)+':'+CONVERT(CHAR(10),CODTPG) AS TPGM FROM AFTPROGRAM ORDER BY TPGFIN", cone);
                System.Data.DataTable dt = new System.Data.DataTable();
                cmd.Fill(dt);

                String lista = "";
                int listalen = 0;

                foreach (System.Data.DataRow row in dt.Rows) {
                    lista= lista + row["TPGM"].ToString().Trim()+':';
                }
                listalen = lista.Length-1;
                return lista.Substring(0,listalen);
            } catch (Exception e)  {
                return e.ToString();
            }                
        }

        public string CalificarTrainigProgram(int Trainig) {
            try
            {
                SqlConnection cone = new SqlConnection(CadenaConexion());
                cone.Open();

                SqlDataAdapter cmd = new SqlDataAdapter("SELECT LTRIM(RTRIM(A.PERTNOM))+':'+LTRIM(RTRIM(CONVERT(CHAR(10),A.PERTNOTA)))+':'+LTRIM(RTRIM(CONVERT(CHAR(10),A.CODPERT)))+':'+B.DESTPG AS TPGM FROM AFPERSONAL A, AFTPROGRAM B WHERE A.CODTPG=" + Trainig.ToString() + "  AND  A.CODTPG =B.CODTPG", cone);
                System.Data.DataTable dt = new System.Data.DataTable();
                cmd.Fill(dt);

                String lista = "";
                int listalen = 0;

                foreach (System.Data.DataRow row in dt.Rows)
                {
                    lista = lista + row["TPGM"].ToString().Trim() + ':';
                }

                switch(lista.Length){
                    case 0:
                        return "";
                    default:
                        listalen = lista.Length - 1;
                        return lista.Substring(0, listalen);
                }
            }
            catch (Exception e)
            {
                String error = e.ToString(); 
                return ""; 
            }
        }

        public string UPDCalificarTProgram(int trainig, double score) {
            if (score >= 0 && score <= 20)
            {
                try
                {
                    SqlConnection cone = new SqlConnection(CadenaConexion());
                    cone.Open();

                    string updatescore = "UPDATE AFPERSONAL SET PERTNOTA=" + score.ToString() + " WHERE CODPERT=" + trainig.ToString();
                    SqlCommand cmd = new SqlCommand(updatescore, cone);
                    cmd.ExecuteNonQuery();


                    if (score >= 13)
                    {
                        SqlDataAdapter cmde = new SqlDataAdapter("SELECT A.PERTNOM,A.PERTMAIL,B.DESTPG FROM AFPERSONAL A, AFTPROGRAM B WHERE A.CODPERF=" + trainig.ToString() + " AND A.CODTPG=B.CODTPG", cone);
                        System.Data.DataSet ds = new System.Data.DataSet();
                        cmde.Fill(ds);

                        System.Data.DataTable table = ds.Tables[0];
                        String msgto = table.Rows[0]["PERTMAIL"].ToString();
                        String msgsubject = table.Rows[0]["DESTPG"].ToString();
                        String msgbody = "";

                        msgbody = msgbody + "<!DOCTYPE html>";
                        msgbody = msgbody + "<html lang='en'>";
                        msgbody = msgbody + "<head>";
                        msgbody = msgbody + "</head>";
                        msgbody = msgbody + "<body>";
                        msgbody = msgbody + "Estimado <B>" + table.Rows[0]["PERTNOM"].ToString() + ",</B><BR>";
                        msgbody = msgbody + "La empresa AF Consultora le da la bienvenida a formar parte de nuestro Staff, ya que aprobó el examen del Training Program: <B>" + msgsubject + "</B>.<BR><BR>";
                        msgbody = msgbody + "Favor de presentarse a la oficina con los siguientes documentos:<BR><BR>";
                        msgbody = msgbody + "<ul><li>Currículo Vitae documentado.</li>";
                        msgbody = msgbody + "<li>Antecedentes Policiales.</li>";
                        msgbody = msgbody + "<li>Antecedentes Penales.</li>";
                        msgbody = msgbody + "<li>Antecedentes Judiciales.</li>";
                        msgbody = msgbody + "<li>Certificado de domicilio.</li></ul><BR>";
                        msgbody = msgbody + "Gracias.<BR>";
                        msgbody = msgbody + "Saludos.<BR><BR>";
                        msgbody = msgbody + "AF CONSULTORA.<BR>";
                        msgbody = msgbody + "<body>";
                        msgbody = msgbody + "</html>";

                        try
                        {
                            String Error = EmailCalificarTProgram(msgto, msgsubject, msgbody);
                            return Error;
                        }
                        catch (Exception email)
                        {
                            return email.ToString();
                        }
                    }
                    else {
                        return "";
                    }
                }
                catch (Exception e)
                {
                    return e.ToString();
                }
            }
            else {
                return "<div class='panel panel-danger'><div class='panel-heading'>Alerta</div><div class='panel-body'>La nota ingresada no es la correcta " + score.ToString() +", el rango de nota es: 0 a 20.</div></div>";
            }
        }

        public string EmailCalificarTProgram(String msgto, String msgsubjet, String msgbody) {
            try
            {
                SmtpClient cliente = new SmtpClient("smtp.gmail.com", 587);
                cliente.EnableSsl = true;
                cliente.Timeout = 10000;
                cliente.DeliveryMethod = SmtpDeliveryMethod.Network;
                cliente.UseDefaultCredentials = false;
                cliente.Credentials = new NetworkCredential("ghuahuasonco@gmail.com", "XXXXXXXXXXXXXX");
                MailMessage msg = new MailMessage();
                msg.To.Add(msgto);
                msg.From = new MailAddress("ghuahuasonco@gmail.com");
                msg.Subject = msgsubjet;
                msg.Body = msgbody;
                msg.IsBodyHtml = true;
                cliente.Send(msg);
                return "";
            }
            catch (Exception e) {
                return e.ToString();
            }   
        }
    }
}
