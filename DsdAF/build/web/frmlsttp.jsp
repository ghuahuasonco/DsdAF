<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<% 
    String pathweb  = request.getContextPath()+"/";

try {
	org.tempuri.Mensajes service = new org.tempuri.Mensajes();
	org.tempuri.IMensajes port = service.getBasicHttpBindingIMensajes();
	Integer trainig = Integer.valueOf(0);
        String str = port.obtenerTrainigProgram(trainig);
        
        switch(str.length()){
        case 0:
%>
           <div class="panel panel-danger">
              <div class="panel-heading">Training Program</div>
              <div class="panel-body">
                No Existen Training Program en este momento. 
              </div>
            </div>
<%
            break;
        default:    
            String[] parts;
            parts = str.split(":");
%>

            <div class="panel panel-primary">
              <div class="panel-heading">Training Program</div>
              <div class="panel-body">
              <table class="table table-hover">
                  <thead>
                    <tr>
                      <th><small>Nro</small></th>
                      <th><small>Trainig Program</small></th>
                      <th><small>Fecha Inicio y Fin</small></th>
                      <th></th>
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
                <tr><th scope="row"><small><%=indice%></small></th>
                <td><small><%=parts[k]%></small></td>
<%      
                break;
            case 2:
%>           
                <td><small><%=parts[k]%></small></td>
<%      
                break;
            case 3:
%>           
                <td>
                <a href="<%=pathweb%>index.jsp?opc=4&id=<%=parts[k]%>" class="btn btn-primary btn-xs" role="button">
                <span class="glyphicon glyphicon-pencil"></span>     
                </a>
                </td></tr>
<%
                indice++;
                contar=0;
                break;
        }
    }
%>      
    </tbody>
    </table>      
    <a href="<%=pathweb%>index.jsp?opc=1" class="btn btn-primary btn-sm" role="button">
    &nbsp;&nbsp;&nbsp;Salir&nbsp;&nbsp;&nbsp;
    </a>
    </div></div>
<%
            break;
    }
} catch (Exception e) {
%>
       <jsp:include page="/error.jsp" />
<%
}
%>

