using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace SOAP_Services
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "Mensajes" in code, svc and config file together.
    public class Mensajes : IMensajes
    {

        public string Saludar(string nombre)
        {
            return "Buenos días " + nombre;
        }

        public string Despedir(string nombre, string curso)
        {
            return "Adiós " + nombre + " !Regresa pronto al " + curso + "." ;
        }
    }
}
