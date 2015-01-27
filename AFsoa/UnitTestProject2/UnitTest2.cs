using System;
using System.Text;
using System.Collections.Generic;
using System.Linq;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace UnitTestProject2
{
    [TestClass]
    public class UnitTest2
    {
        [TestMethod]
        public void TestMethod1()
        {
            MensajesWS.MensajesClient proxy = new MensajesWS.MensajesClient();
            // 2. Invocar la funcionalidad(Operación del servicio)
            string resultado = proxy.Descolor("Mijael");
            // 3. Verificar/validar el resultado esperado
            Assert.AreEqual("Azul", resultado);

        }
    }
}
