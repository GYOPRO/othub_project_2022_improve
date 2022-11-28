<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>LogIn | OtHub</title>
    <!-- Meta Tags -->
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="expire" content="-1" />
    <meta http-equiv="cache-control" content="no-cache" />
    <meta http-equiv="pragma" content="no-cache" />
    <meta http-equiv="imagetoolbar" content="no" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0">
    <meta name="robots" content="index,follow" />
    <!-- css, javascript -->
    <link href="css/login/import.css" rel="stylesheet">
    <link href="css/login/common.css" rel="stylesheet">
    <script src="js/jquery-3.6.0.min.js"></script>

<script>
$(document).ready(function(){

});
</script>


</head>
<body>
<!-- navbar include -->
	<%@include file="../include/navbar.jsp" %>
	
<div id="container">
    <div class="inner">
      	 <div class="form_content form_content_login">
            <h1>LOG IN</h1>
            <form action="loginprocess" method="post">
                <fieldset>회원가입 폼</fieldset>
                <input id="id" type="text" name="m_id" placeholder="Id">
                
                <input id="password" type="password" name="m_pw" placeholder="Password">
                <a href="signin">Sign in</a>
                <input id="btnLogin" type="submit" value="Log in" style="background-color: #2186db;">
                <c:if test="${message == 'error'}">
 					<div style="color:red;"> 아이디 또는 비밀번호가 일치하지 않습니다.
 					</div>
 				</c:if>
            </form>
            
        </div>
    </div>
</div>

</body>
</html>
