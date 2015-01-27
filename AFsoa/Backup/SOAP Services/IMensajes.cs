using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace SOAP_Services
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "IMensajes" in both code and config file together.
    [ServiceContract]
    public interface IMensajes
    {
        [OperationContract]
        string Saludar(string nombre);
        
        [OperationContract]
        string Despedir(string nombre, string curso);
    }
}
