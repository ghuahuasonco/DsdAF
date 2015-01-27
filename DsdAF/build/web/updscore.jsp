<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>    
<%
        
    int idstp = 0;
    String idsc=request.getParameter("idsc");
    if(idsc !=null && !idsc.isEmpty())
    idstp=Integer.parseInt(idsc.trim());

    Double idscore = 0.0;
    String scores=request.getParameter("score");
    if(scores !=null && !scores.isEmpty())
    idscore=Double.parseDouble(scores.trim());
   
    try {
	org.tempuri.Mensajes service = new org.tempuri.Mensajes();
	org.tempuri.IMensajes port = service.getBasicHttpBindingIMensajes();
	 // TODO initialize WS operation arguments here
	java.lang.Integer trainig = idstp; //Integer.valueOf(0);
	java.lang.Double score = idscore; //Double.valueOf(0.0d);
	// TODO process result here
	java.lang.String result = port.updCalificarTProgram(trainig, score);
	out.print(result);
    } catch (Exception ex) {
        String error = ex.getMessage();
        out.print("<div class='panel panel-danger'><div class='panel-heading'>Alerta</div><div class='panel-body'>Parece que hay un problema con el servidor, lo siento por las molestias. Deberíamos estar de vuelta en breve.</div></div>");
    }
%>