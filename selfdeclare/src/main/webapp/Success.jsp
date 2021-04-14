<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head> 
 <link rel="shortcut icon" href="img/favicon.png"> 
  <title>Success</title>

  <!-- Bootstrap CSS -->
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <!-- bootstrap theme -->
  <link href="css/bootstrap-theme.css" rel="stylesheet">
  <!--external css-->
  <!-- font icon -->
  <link href="css/elegant-icons-style.css" rel="stylesheet" />
  <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
  <!-- Custom styles -->
  <link href="css/style.css" rel="stylesheet">
  <link href="css/style-responsive.css" rel="stylesheet" /> 
</head>

<body>
   <%
   String name = request.getParameter("name");
   String id = request.getParameter("id");
   %>
   <div class="row">
          <div class="col-lg-12"> 
              <div class="panel-body"> 
                <div class="panel panel-success">
                  <div class="panel-heading"><strong style="font-size: 18px;"><%=name %></strong> Successfully registered Corona virus Self-Declaration Form</div>
                  <div class="panel-content"><strong>Please Note :</strong> Your Registration id is :  <strong style="font-size: 18px;"><%=id %></strong> </div>
                  <div class="panel-content"><a href="selfdeclare.jsp"><b>Return Home</b></a></div>
                </div> 
              </div> 
        	</div>
	</div>
</body>

</html>
