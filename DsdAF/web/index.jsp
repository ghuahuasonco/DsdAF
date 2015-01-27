<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*, java.io.*"%>
<% 
String pathweb  = request.getContextPath()+"/"; 

String opc=request.getParameter("opc");
int opcid = 0;
if(opc !=null && !opc.isEmpty())
opcid=Integer.parseInt(opc.trim());

String nameweb  = "AF CONSULTORA";
%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title><%=nameweb%></title>

    <!-- jquery 1.9.x -->
    <script src="<%=pathweb%>jquery/jquery.min.js"></script>
    <script src="<%=pathweb%>jquery/jquery.numeric.js"></script>

    <!-- Bootstrap -->
    <link  href="<%=pathweb%>bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link  href="<%=pathweb%>bootstrap/css/bootstrap-theme.min.css" rel="stylesheet">
    <link  href="<%=pathweb%>bootstrap/css/docs.min.css" rel="stylesheet">
    <script src="<%=pathweb%>bootstrap/js/bootstrap.min.js"></script>

    <!-- jquery form upload -->
    <script src="<%=pathweb%>jquery/jquery.form.min.js"></script>

    <!--controlar numero enteros--> 
    <script type="text/javascript">
    $(document).ready(function (){    
        $(".numeric").numeric();
        $(".integer").numeric(false, function() { alert("Integers only"); this.value = ""; this.focus(); });
        $(".positive").numeric({ negative: false }, function() { alert("No negative values"); this.value = ""; this.focus(); });
        $(".positive-integer").numeric({ decimal: false, negative: false }, function() { alert("Positive integers only"); this.value = ""; this.focus(); });
        $(".decimal-2-places").numeric({ decimalPlaces: 2 });
        $("#remove").click(
        function(e) {
            e.preventDefault();
            $(".numeric,.integer,.positive,.positive-integer,.decimal-2-places").removeNumeric();
        }
        );
    });
    </script>
    
<!-- jquery update records -->
    <script type="text/javascript">
         function tpupdate(iduno,iddos){
          $('input[name="idtpp"]').val(iduno); 
          $('input[name="idtps"]').val(iddos);  
         }
    </script>
<!-- end jquery delete records -->
    
    
<!-- jquery delete records -->
    <script type="text/javascript">
    $(document).ready(function(){
         function TPupdatescore(){
              var tpids=$("#idtpp").val();
              var tpsco=$("#idtps").val();
                 $.ajax({
                    type:"get",
                    url:"updscore.jsp",
                    data:"idsc="+tpids+"&score="+tpsco,
                    success:function(data){
                        if (data.length==5){
                            $("#msgerror").hide();
                            $("#msgupdate").show();
                            setTimeout(function() { $("#msgupdate").hide(); }, 2000);
                        } else {
                            $("#msgupdate").hide();
                            $("#msgerror").html(data);
                            $("#msgerror").show();
                            setTimeout(function() { $("#msgerror").hide(); }, 4000);
                        }
                     }
                  });
         }
          $("#btn1").click(function(){
             TPupdatescore();
          });
          $("#btn2").click(function(){
             TPupdatescore();
          });
          $("#btn3").click(function(){
             TPupdatescore();
          });
          $("#btn4").click(function(){
             TPupdatescore();
          });
          $("#btn5").click(function(){
             TPupdatescore();
          });
          $("#btn6").click(function(){
             TPupdatescore();
          });
          $("#btn7").click(function(){
             TPupdatescore();
          });
          $("#btn8").click(function(){
             TPupdatescore();
          });
          $("#btn9").click(function(){
             TPupdatescore();
          });
          $("#btn10").click(function(){
             TPupdatescore();
          });
          $("#btn11").click(function(){
             TPupdatescore();
          });
    });
    </script>
<!-- end jquery delete records -->
    
    
    
    
        
    <style>
    /* Move down content because we have a fixed navbar that is 50px tall */
    body {
      padding-top: 50px;
    }
    /* Sidebar navigation */
    .nav-sidebar {
      margin-left: -20px;
      margin-right: -21px; /* 20px padding + 1px border */
      margin-bottom: 20px;
    }
    .nav-sidebar > li > a {
      padding-left: 20px;
      padding-right: 20px;
    }
    </style>

</head>
<body>

<div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
      <div class="container-fluid">
       <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#"><%=nameweb%></a>
       </div>

       <div class="navbar-collapse collapse">

          <div class="navbar-form navbar-left">
            <input type="text" id="txtsearch" name="txtsearch" class="form-control input-sm" placeholder="Search">
            <button type="button" id="btnsearch" class="btn btn-primary btn-sm">
            <span class="glyphicon glyphicon-search"></span>
            </button>
          </div>  

          <ul class="nav navbar-nav navbar-right">
            <li><a href="<%=pathweb%>index.jsp?opc=2"><small>Gestionar Trainig Program</small></a></li>
            <li><a href="<%=pathweb%>index.jsp?opc=3"><small>Calificar Trainig Program</small></a></li>
            <li><a href="<%=pathweb%>index.jsp?opc=1"><small>Acerca de</small></a></li>
          </ul>

       </div>
      </div>   
</div>

<div class="container-fluid">
  <div class="row">
    <div class="main">
      <div class="row">
        <div class="container-fluid">
          <div id="result">

                <div class="col-md-8 col-md-offset-2">
                <div class="bs-callout bs-callout-default">    
              
                    <%
                    try {

                      switch (opcid) {
                        case 1:
                    %>         
                             <jsp:include page="/about.jsp" />
                    <%         
                             break;
                        case 2: 
                    %>         
                             <jsp:include page="/frmgtp.jsp" />
                    <%
                             break;
                        case 3:
                    %>         
                             <jsp:include page="/frmlsttp.jsp" />
                    <%
                             break;
                        case 4:
                    %>         
                             <jsp:include page="/frmctp.jsp" />
                    <%      
                             break;
                        default:
                             break;
                      }
                      } catch (Exception e) {
                          out.println(e.getMessage());
                    %>         
                             
                    <%                         
                      }
                    %>

                </div> 
                </div>   
              
          </div> 
        </div>   
      </div>
    </div>
  </div>
  </div>

</body>
</html>