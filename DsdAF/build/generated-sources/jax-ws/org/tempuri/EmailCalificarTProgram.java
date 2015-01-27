
package org.tempuri;

import javax.xml.bind.JAXBElement;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElementRef;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Java class for anonymous complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType>
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element name="msgto" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="msgsubjet" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="msgbody" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *       &lt;/sequence>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "", propOrder = {
    "msgto",
    "msgsubjet",
    "msgbody"
})
@XmlRootElement(name = "EmailCalificarTProgram")
public class EmailCalificarTProgram {

    @XmlElementRef(name = "msgto", namespace = "http://tempuri.org/", type = JAXBElement.class, required = false)
    protected JAXBElement<String> msgto;
    @XmlElementRef(name = "msgsubjet", namespace = "http://tempuri.org/", type = JAXBElement.class, required = false)
    protected JAXBElement<String> msgsubjet;
    @XmlElementRef(name = "msgbody", namespace = "http://tempuri.org/", type = JAXBElement.class, required = false)
    protected JAXBElement<String> msgbody;

    /**
     * Gets the value of the msgto property.
     * 
     * @return
     *     possible object is
     *     {@link JAXBElement }{@code <}{@link String }{@code >}
     *     
     */
    public JAXBElement<String> getMsgto() {
        return msgto;
    }

    /**
     * Sets the value of the msgto property.
     * 
     * @param value
     *     allowed object is
     *     {@link JAXBElement }{@code <}{@link String }{@code >}
     *     
     */
    public void setMsgto(JAXBElement<String> value) {
        this.msgto = value;
    }

    /**
     * Gets the value of the msgsubjet property.
     * 
     * @return
     *     possible object is
     *     {@link JAXBElement }{@code <}{@link String }{@code >}
     *     
     */
    public JAXBElement<String> getMsgsubjet() {
        return msgsubjet;
    }

    /**
     * Sets the value of the msgsubjet property.
     * 
     * @param value
     *     allowed object is
     *     {@link JAXBElement }{@code <}{@link String }{@code >}
     *     
     */
    public void setMsgsubjet(JAXBElement<String> value) {
        this.msgsubjet = value;
    }

    /**
     * Gets the value of the msgbody property.
     * 
     * @return
     *     possible object is
     *     {@link JAXBElement }{@code <}{@link String }{@code >}
     *     
     */
    public JAXBElement<String> getMsgbody() {
        return msgbody;
    }

    /**
     * Sets the value of the msgbody property.
     * 
     * @param value
     *     allowed object is
     *     {@link JAXBElement }{@code <}{@link String }{@code >}
     *     
     */
    public void setMsgbody(JAXBElement<String> value) {
        this.msgbody = value;
    }

}
