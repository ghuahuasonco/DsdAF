using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace SoapServiceTest2
{
    [TestClass]
    public class UnitTest2
    {
        [TestMethod]
        public void TestMethod1()
        {
            // 1. Preparar la invocación(objeto, argumentos, etc )
            MensajesWs2.MensajesClient proxy = new MensajesWs2.MensajesClient();
            // 2. Invocar la funcionalidad(Operación del servicio)
            string resultado = proxy.Descolor("Azul");
            // 3. Verificar/validar el resultado esperado
            Assert.AreEqual("Azul", resultado);

        }
    }
}
