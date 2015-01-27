
package org.tempuri;

import javax.xml.bind.JAXBElement;
import javax.xml.bind.annotation.XmlElementDecl;
import javax.xml.bind.annotation.XmlRegistry;
import javax.xml.namespace.QName;


/**
 * This object contains factory methods for each 
 * Java content interface and Java element interface 
 * generated in the org.tempuri package. 
 * <p>An ObjectFactory allows you to programatically 
 * construct new instances of the Java representation 
 * for XML content. The Java representation of XML 
 * content can consist of schema derived interfaces 
 * and classes representing the binding of schema 
 * type definitions, element declarations and model 
 * groups.  Factory methods for each of these are 
 * provided in this class.
 * 
 */
@XmlRegistry
public class ObjectFactory {

    private final static QName _ObtenerTrainigProgramResponseObtenerTrainigProgramResult_QNAME = new QName("http://tempuri.org/", "ObtenerTrainigProgramResult");
    private final static QName _UPDCalificarTProgramResponseUPDCalificarTProgramResult_QNAME = new QName("http://tempuri.org/", "UPDCalificarTProgramResult");
    private final static QName _CalificarTrainigProgramResponseCalificarTrainigProgramResult_QNAME = new QName("http://tempuri.org/", "CalificarTrainigProgramResult");
    private final static QName _CadenaConexionResponseCadenaConexionResult_QNAME = new QName("http://tempuri.org/", "CadenaConexionResult");
    private final static QName _EmailCalificarTProgramResponseEmailCalificarTProgramResult_QNAME = new QName("http://tempuri.org/", "EmailCalificarTProgramResult");
    private final static QName _EmailCalificarTProgramMsgto_QNAME = new QName("http://tempuri.org/", "msgto");
    private final static QName _EmailCalificarTProgramMsgbody_QNAME = new QName("http://tempuri.org/", "msgbody");
    private final static QName _EmailCalificarTProgramMsgsubjet_QNAME = new QName("http://tempuri.org/", "msgsubjet");

    /**
     * Create a new ObjectFactory that can be used to create new instances of schema derived classes for package: org.tempuri
     * 
     */
    public ObjectFactory() {
    }

    /**
     * Create an instance of {@link EmailCalificarTProgram }
     * 
     */
    public EmailCalificarTProgram createEmailCalificarTProgram() {
        return new EmailCalificarTProgram();
    }

    /**
     * Create an instance of {@link CadenaConexion }
     * 
     */
    public CadenaConexion createCadenaConexion() {
        return new CadenaConexion();
    }

    /**
     * Create an instance of {@link ObtenerTrainigProgramResponse }
     * 
     */
    public ObtenerTrainigProgramResponse createObtenerTrainigProgramResponse() {
        return new ObtenerTrainigProgramResponse();
    }

    /**
     * Create an instance of {@link CalificarTrainigProgramResponse }
     * 
     */
    public CalificarTrainigProgramResponse createCalificarTrainigProgramResponse() {
        return new CalificarTrainigProgramResponse();
    }

    /**
     * Create an instance of {@link EmailCalificarTProgramResponse }
     * 
     */
    public EmailCalificarTProgramResponse createEmailCalificarTProgramResponse() {
        return new EmailCalificarTProgramResponse();
    }

    /**
     * Create an instance of {@link ObtenerTrainigProgram }
     * 
     */
    public ObtenerTrainigProgram createObtenerTrainigProgram() {
        return new ObtenerTrainigProgram();
    }

    /**
     * Create an instance of {@link UPDCalificarTProgram }
     * 
     */
    public UPDCalificarTProgram createUPDCalificarTProgram() {
        return new UPDCalificarTProgram();
    }

    /**
     * Create an instance of {@link CalificarTrainigProgram }
     * 
     */
    public CalificarTrainigProgram createCalificarTrainigProgram() {
        return new CalificarTrainigProgram();
    }

    /**
     * Create an instance of {@link UPDCalificarTProgramResponse }
     * 
     */
    public UPDCalificarTProgramResponse createUPDCalificarTProgramResponse() {
        return new UPDCalificarTProgramResponse();
    }

    /**
     * Create an instance of {@link CadenaConexionResponse }
     * 
     */
    public CadenaConexionResponse createCadenaConexionResponse() {
        return new CadenaConexionResponse();
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://tempuri.org/", name = "ObtenerTrainigProgramResult", scope = ObtenerTrainigProgramResponse.class)
    public JAXBElement<String> createObtenerTrainigProgramResponseObtenerTrainigProgramResult(String value) {
        return new JAXBElement<String>(_ObtenerTrainigProgramResponseObtenerTrainigProgramResult_QNAME, String.class, ObtenerTrainigProgramResponse.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://tempuri.org/", name = "UPDCalificarTProgramResult", scope = UPDCalificarTProgramResponse.class)
    public JAXBElement<String> createUPDCalificarTProgramResponseUPDCalificarTProgramResult(String value) {
        return new JAXBElement<String>(_UPDCalificarTProgramResponseUPDCalificarTProgramResult_QNAME, String.class, UPDCalificarTProgramResponse.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://tempuri.org/", name = "CalificarTrainigProgramResult", scope = CalificarTrainigProgramResponse.class)
    public JAXBElement<String> createCalificarTrainigProgramResponseCalificarTrainigProgramResult(String value) {
        return new JAXBElement<String>(_CalificarTrainigProgramResponseCalificarTrainigProgramResult_QNAME, String.class, CalificarTrainigProgramResponse.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://tempuri.org/", name = "CadenaConexionResult", scope = CadenaConexionResponse.class)
    public JAXBElement<String> createCadenaConexionResponseCadenaConexionResult(String value) {
        return new JAXBElement<String>(_CadenaConexionResponseCadenaConexionResult_QNAME, String.class, CadenaConexionResponse.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://tempuri.org/", name = "EmailCalificarTProgramResult", scope = EmailCalificarTProgramResponse.class)
    public JAXBElement<String> createEmailCalificarTProgramResponseEmailCalificarTProgramResult(String value) {
        return new JAXBElement<String>(_EmailCalificarTProgramResponseEmailCalificarTProgramResult_QNAME, String.class, EmailCalificarTProgramResponse.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://tempuri.org/", name = "msgto", scope = EmailCalificarTProgram.class)
    public JAXBElement<String> createEmailCalificarTProgramMsgto(String value) {
        return new JAXBElement<String>(_EmailCalificarTProgramMsgto_QNAME, String.class, EmailCalificarTProgram.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://tempuri.org/", name = "msgbody", scope = EmailCalificarTProgram.class)
    public JAXBElement<String> createEmailCalificarTProgramMsgbody(String value) {
        return new JAXBElement<String>(_EmailCalificarTProgramMsgbody_QNAME, String.class, EmailCalificarTProgram.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://tempuri.org/", name = "msgsubjet", scope = EmailCalificarTProgram.class)
    public JAXBElement<String> createEmailCalificarTProgramMsgsubjet(String value) {
        return new JAXBElement<String>(_EmailCalificarTProgramMsgsubjet_QNAME, String.class, EmailCalificarTProgram.class, value);
    }

}
