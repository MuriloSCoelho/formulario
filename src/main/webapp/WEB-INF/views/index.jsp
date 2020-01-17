<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>    
<!DOCTYPE html>
<html>
<head>
<style>
body, html {
  height: 100%;

  /* The image used */
   background-image: url('resource/q.jpg'); 
  /* background-image: url("livraria.jpg"); */

  /* Half height */
  height: 90%;
  width: 100%;
  
  margin-top: 0%;

  /* Center and scale the image nicely */
  background-position: center ;
  background-repeat: no-repeat;
/*   background-size: cover;
 */  background-attachment: fixed;
  background-size: cover;
}
</style>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<title>Insert title here</title>
<spring:url value="pergunta/" var="pergunta"></spring:url>
</head>
<body>

	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand">QINTESS</a>
			</div>

			<ul class="nav navbar-nav">
				<li class="active"><a href="${index}">Home</a></li>
				<li><a href="${pergunta}">Formulário de Realocação</a></li>
			</ul>
		</div>
	</nav>
	
	<div class="bg" >
	</div>	
	
</body>
</html>