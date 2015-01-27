using System;
using System.Text;
using System.Collections.Generic;
using System.Linq;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace SoapServiceTest
{
    [TestClass]
    public class UnitTest1
    {   
        [TestMethod]
        public void TestMethod4()
        {
            // 1. Preparar la invocación(objeto, argumentos, etc )
            MensajesWS.MensajesClient proxy = new MensajesWS.MensajesClient();
            // 2. Invocar la funcionalidad(Operación del servicio)
            string resultado = proxy.ObtenerTrainigProgram(0);
            // 3. Verificar/validar el resultado esperado
            //Assert.AreEqual("azul", resultado);
        }

        [TestMethod]
        public void TestMethod5()
        {
            // 1. Preparar la invocación(objeto, argumentos, etc )
            MensajesWS.MensajesClient proxy = new MensajesWS.MensajesClient();
            // 2. Invocar la funcionalidad(Operación del servicio)
            int training = 3;
            string resultado = proxy.CalificarTrainigProgram(training);
            // 3. Verificar/validar el resultado esperado
            Assert.AreEqual("", resultado);
        }

        public void TestMethod6()
        {
            // 1. Preparar la invocación(objeto, argumentos, etc )
            MensajesWS.MensajesClient proxy = new MensajesWS.MensajesClient();
            // 2. Invocar la funcionalidad(Operación del servicio)
            int training = 3;
            string resultado = proxy.CalificarTrainigProgram(training);
            // 3. Verificar/validar el resultado esperado
            Assert.AreNotEqual("", resultado);
        }

        public void TestMethod7()
        {
            // 1. Preparar la invocación(objeto, argumentos, etc )
            MensajesWS.MensajesClient proxy = new MensajesWS.MensajesClient();
            // 2. Invocar la funcionalidad(Operación del servicio)
            string resultado = proxy.EmailCalificarTProgram("ghuahuasonco@outlook.com","Test Email","Test email");
            // 3. Verificar/validar el resultado esperado
            Assert.AreEqual("", resultado);
        }




    }
}
