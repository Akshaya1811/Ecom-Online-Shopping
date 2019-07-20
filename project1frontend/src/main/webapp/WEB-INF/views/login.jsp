<%@ page language="java" 
    pageEncoding="ISO-8859-1"%>
<%@include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>FashionCastle</title>
<link href= "<c:url value='/resources/css/login.css'></c:url>" rel="stylesheet">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

</head>

<body  background="resources/images/antonovich-design-nicewhit3.jpg"> <!--bg of login-->
    <div id="login">
       <h1 class="text-center text-white pt-5">Welcome To FashionCastle</h1>
        <div class="container">
            <div id="login-row" class="row center-content-center align-items-center">
                <div id="login-column" class="col-md-6">
                    <div id="login-box" class="box-center">
<c:url value="/j_spring_security_check" var="url"></c:url>
                        <form id="login-form" class="form" action="${url }" method="post">
                            <h3 class="text-center text-info"><b>Login</b></h3>
                            <div class="form-group">
                                <label for="username" class="text-info">User Email:</label><br>
                                <input type="text" name="j_username" id="username" class="form-control">
                            </div>
                            <div class="form-group">
                                <label for="password" class="text-info">Password:</label><br>
                                <input type="password" name="j_password" id="password" class="form-control">
                            </div>
                            <div class="form-group">
                                <label for="remember-me" class="text-info"><span>Remember me</span> <span><input id="remember-me" name="remember-me" type="checkbox"></span></label><br>
                                <input type="submit" name="submit" class="btn btn-info btn-md" value="submit">
                            </div>
                            <span style="color:red">${error }</span><br>
                             <span style="color:green">${msg }</span><br>
                            
                            <div id="register-link" class="text-right">
                                <a href="WEB-INF/views/registrationform.jsp" class="text-info">Register here</a>
                            </div>
                        </form>
                      <!-- <h2><font color="#FF00FF"><marquee>WELCOME..!!</marquee></font></h2> -->
                    </div>
                </div>
            </div>
        </div>
        <h2><B><I><font color="#FF00FF"><marquee>WELCOME..!!</marquee></font></I></B></h2>
    </div>
   </body>
</html>



