<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<% 
    String pathweb  = request.getContextPath()+"/"; 

    int ids = 0;
    String id=request.getParameter("id");
    if(id !=null && !id.isEmpty())
    ids=Integer.parseInt(id.trim());
    
try {
	org.tempuri.Mensajes service = new org.tempuri.Mensajes();
	org.tempuri.IMensajes port = service.getBasicHttpBindingIMensajes();
	java.lang.Integer trainig = ids; 
	java.lang.String str = port.calificarTrainigProgram(trainig);
    
        switch(str.length()){
        case 0:
%>
            <div class="panel panel-danger">
              <div class="panel-heading">Calificar - Training Program</div>
              <div class="panel-body">
                No Existe Personal para realizar la calificación de Training Program en este momento. 
              </div>
            </div>
<%
            break;
        default:    
            String[] parts;
            parts = str.split(":");
            String dectp = parts[3];
            //type="hidden"

            try {
%>

                    <div style="display:none" id="msgupdate" >
                    <div class="alert alert-success" role="alert">
                    <strong>Exito!</strong> La nota se actualizo en forma exitosa.
                    </div>
                    </div>

                    <div style="display:none" id="msgerror" >
                    <div class="alert alert-danger" role="alert">
                    <strong>Alerta!</strong> Existe inconvientes para actualizar la nota.
                    </div>
                    </div>

		 <input type="hidden" name="idtpp" id="idtpp"/>
		 <input type="hidden" name="idtps" id="idtps"/>


                    <div class="panel panel-primary">
                      <div class="panel-heading"><%=dectp%></div>
                      <div class="panel-body">
                      <table class="table table-hover">
                          <thead>
                            <tr>
                              <th><small>Nro</small></th>
                              <th><small>Apellidos y Nombre(s)</small></th>
                              <th><small>Nota</small></th>
                            </tr>
                          </thead>
                          <tbody>
<%
    int indice =1;
    int contar =0;
    for (int k = 0; k < parts.length; k++) {
        contar++;

        switch(contar){
            case 1:
%>        
            <tr>
            <th scope="row"><small><%=indice%></small></th>
            <td><small><%=parts[k]%></small></td>
<%      
            break;
            case 2:
                String num = Integer.toString(indice);
                String scnum ="id='score"+num+"' name='score"+num+"'";
%> 
                <td><div class="col-xs-3">            
                        <input type="text" <%=scnum%> class="numeric form-control input-xs" placeholder="0" value="<%=parts[k]%>" >
                    </div>            
                <div class="col-xs-1">
<%      
            break;
            case 3: 
                String numid   = Integer.toString(indice);
                String strnota ="onclick='tpupdate("+ parts[k] +",score"+numid+".value);'";
                String strbtn  ="id='btn"+numid+"' name='btn"+numid+"'";
%>              
                      <button type="button" <%=strbtn%> class="btn btn-primary btn-sm" <%=strnota%> >
                      <span class="glyphicon glyphicon-floppy-saved"></span>
                      </button>
                      </div>
                </td></tr>
            
<%      
            break;
            case 4:
                    indice++;
                    contar=0;
                    break;
    }
}
%>        
                </tbody></table> 
                <a href="<%=pathweb%>index.jsp?opc=3" class="btn btn-primary btn-sm" role="button">
                &nbsp;&nbsp;&nbsp;Salir&nbsp;&nbsp;&nbsp;
                </a>
                </div></div>

<%
} catch (Exception e) {
    out.println(e.getMessage());
%>    
       
<%
}
}        
} catch (Exception e) {
%>    
         <jsp:include page="/error.jsp" />       
<%
}
%>
