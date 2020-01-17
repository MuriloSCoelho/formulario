<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>

<style type="text/css">

.control:checked ~ .conditional3,
			#Outro:checked ~ .conditional3
 {	
				clip: auto;
				height: auto;
				margin: 0;
				overflow: visible;
				position: static;
				width: auto;
			}

			.control:not(:checked) ~ .conditional3,
			#Outro:not(:checked) ~ .conditional3
{
				border: 0;
				clip: rect(0 0 0 0);
				height: 1px;
				margin: -1px;
				overflow: hidden;
				padding: 0;
				position: absolute;
				width: 1px;
			}

.control:checked ~ .conditional,
			#Sim:checked ~ .conditional
 {	
				clip: auto;
				height: auto;
				margin: 0;
				overflow: visible;
				position: static;
				width: auto;
			}

			.control:not(:checked) ~ .conditional,
			#Sim:not(:checked) ~ .conditional
{
				border: 0;
				clip: rect(0 0 0 0);
				height: 1px;
				margin: -1px;
				overflow: hidden;
				padding: 0;
				position: absolute;
				width: 1px;
			}

.control:checked ~ .conditional2,
			#Sim:checked ~ .conditional2
 {	
				clip: auto;
				height: auto;
				margin: 0;
				overflow: visible;
				position: static;
				width: auto;
			}

			.control:not(:checked) ~ .conditional2,
			#Sim:not(:checked) ~ .conditional2
{
				border: 0;
				clip: rect(0 0 0 0);
				height: 1px;
				margin: -1px;
				overflow: hidden;
				padding: 0;
				position: absolute;
				width: 1px;
			}

#salve{
color: white;
}

#1{
margin-top: 0%;
}

body{
	text-align: left;
	background-color: black;
	
}

</style>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
	
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/js/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
	<script src='<spring:url value="/resource/js/form.js"/>'></script>
<title>Insert title here</title>
<spring:url value="/pergunta/salva" var="salva"></spring:url>
<spring:url value="/" var="index"></spring:url>
</head>
<body>

	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand">QINTESS</a>
			</div>

			<ul class="nav navbar-nav">
				<li><a href="${index}">Home</a></li>
				<li class="active"><a href="${pergunta}">Formulário de Realocação</a></li>
			</ul>
		</div>
	</nav>
	
	<div class="container" id="1" style="background-color:black;" >
		<h1 align="center" style="color: white;">FORMULÁRIO DE REALOCAÇÃO</h1>
		
		<br />
		<br />	
		
		<form:form action="${salva}" modelAttribute="pergunta">
		
		<div class="form-group">
			<form:hidden path="id" />
		</div>
		
		<div id="salve">
		
		<div class="form-group" >
			<label>1- Seu trabalho pela empresa é técnico ?</label><br />
			<form:radiobutton path="tecnico" value="Sim" label="Sim" /> 
			<form:radiobutton path="tecnico" value="Não" label="Não" />
		</div>		

		<br />

		<div class="form-group" >
			<label>2- Tecnologia principal ou atividades que executa :</label><br />
			<form:textarea path="atividades" rows="4" cols="45" placeholder="Atividades que realiza" style="color: black;" />
		</div>	

		<br />
				
		<div class="form-group">
			<label>3- Possui conhecimento em outras tecnologias ? </label><br />
			
			<form:radiobutton path="outrastec" value="Não" id="Não" label="Não"/>
			
			<form:radiobutton path="outrastec" value="Sim" id="Sim" label="Sim"/><br /><br />

			<label class="conditional" >3.1- Qual(is) ?</label><br />
			<form:textarea class="conditional" path="outrastec" rows="4" cols="45" style="color: black;" placeholder="Qual(is) tecnologia(s)"/><br /><br />
		</div>


		<div class="form-group" style="color: black;">
			<label style="color: white;">4- Formação Acadêmica :</label><br />
			<form:select path="formacao">
				<form:option value="Ensino médio completo" label="Ensino médio completo"/>
			    <form:option value="Superior cursando" label="Superior cursando"/>
			    <form:option value="Superior completo" label="Superior completo"/>
			    <form:option value="Pós Graduação em andamento" label="Pós Graduação em andamento"/>
			    <form:option value="Pós Graduação concluída" label="Pós Graduação concluída"/>				
			    <form:option value="Mestrado em andamento" label="Mestrado em andamento"/>
			    <form:option value="Mestrado concluído" label="Mestrado concluído"/>
			    <form:option value="Doutorado em andamento" label="Doutorado em andamento" />
			    <form:option value="Doutorado concluído" label="Doutorado concluído" />
			</form:select>
		</div>		
		
		<br />

		<div class="form-group">
			<label>5- Certificações :</label><br />
			<form:textarea path="certificacoes" rows="4" cols="45" placeholder="Cursos extracurriculares" style="color: black;"/>
		</div>	
		
		<br />	

		<div class="form-group">
			<label>6- Tempo de experiência na área e função atual :</label><br />
			<form:textarea path="tempoexp" rows="4" cols="45" placeholder="Tempo na área e função atual" style="color: black;"/>
		</div>		

		<br />

		<div class="form-group">
			<label>7- Idiomas :</label><br />
			<form:checkbox path="idiomas"  value="Alemão" label="Alemão"/><br />
			<form:checkbox path="idiomas"  value="Espanhol" label="Espanhol"/><br />
			<form:checkbox path="idiomas"  value="Francês" label="Francês"/><br />
			<form:checkbox path="idiomas"  value="Italiano" label="Italiano"/><br />
			<form:checkbox path="idiomas"  value="Inglês" label="Alemão"/><br />
			<form:checkbox path="idiomas"  value="Outro" label="Outro" class="control"/><br />
			<label class="conditional3">7.1- Qual(is) ?</label><br />
			<form:textarea class="conditional3" path="idiomas" rows="3" cols="50" placeholder="Qual(is) idioma(s)" style="color: black;"/>

		</div>		

		<br />

		<div class="form-group">
			<label>8- Possui restrição do local de atuação ? </label><br />
			
			<form:radiobutton path="restricao" value="Não" id="Não" label="Não"/>
			
			<form:radiobutton path="restricao" value="Sim" id="Sim" label="Sim"/><br /><br /> 

			<label class="conditional">8.1- Qual(is) ?</label><br />
			<form:textarea class="conditional" path="restricao" rows="4" cols="45" placeholder="Qual(is) local(s)" style="color: black;"/>
		</div>
		
		<br />

		<div class="form-group">
			<label>9- Possui interesse de atuar em outra(s) área(s) ? </label><br />
			
			<form:radiobutton path="outraarea" value="Não" id="Não" label="Não"/>
			
			<form:radiobutton path="outraarea" value="Sim" id="Sim" label="Sim"/><br /><br /> 

			<label class="conditional">9.1- Qual(is) ?</label><br />
			<form:textarea class="conditional" path="outraarea" rows="4" cols="45" placeholder="Qual(is) área(s)" style="color: black;"/>
		</div>

		<div class="form-group">
			<label>10- Possui filho(s) ? </label><br />
			
			<form:radiobutton path="filhos" value="Não" id="Não" label="Não"/>
			
			<form:radiobutton path="filhos" value="Sim" id="Sim" label="Sim"/><br /><br /> 

			<label class="conditional">10.1- Quanto(s) ?</label><br />
			<form:textarea class="conditional" path="qtdfilhos" rows="4" cols="45" style="color: black;" /><br /><br /> 
			
			<label class="conditional">10.2- Idade </label><br />
			<form:textarea class="conditional" path="idadefilhos" rows="4" cols="45" placeholder="Qual(is) a(s) idade(s)" style="color: black;"/>
		</div>
		
		<br />

		<div class="form-group">
			<label>11- Que benefícios você gostaria de ter ?</label><br />
			<form:textarea path="beneficios" rows="4" cols="45" placeholder="Benefícios que deseja" style="color: black;"/>
		</div>		
		
		<br />

		<div class="form-group">
			<label>12- Gostaria de conhecer outro(s) tema(s) ? </label><br />
			
			<form:radiobutton path="conhecer" value="Não" id="Não" label="Não" />
			<form:radiobutton path="conhecer" value="Sim" id="Sim" label="Sim" /><br /><br /> 
			
			<div class="conditional2">
				<label>12.1 - Tecnologias ?</label><br />
				<form:radiobutton path="conhecertec" value="Não" id="Não" label="Não" />
				<form:radiobutton path="conhecertec" value="Sim" id="Sim" label="Sim" /><br />									
				<label class="conditional">12.1.1- Qual(is) ?</label><br />
				<form:textarea class="conditional" path="conhecertec" rows="4" cols="45" placeholder="Qual(is) tecnologia(s)" style="color: black;"/><br />
			</div>
			
			<br />
			
			<div class="conditional2">
				<label>12.2 - Idiomas ?</label><br />
				<form:radiobutton path="conhecerlinguas" value="Não" id="Não" label="Não" />
				<form:radiobutton path="conhecerlinguas" value="Sim" id="Sim" label="Sim" /><br />									
				<label class="conditional">12.2.1- Qual(is) ?</label><br />
				<form:textarea class="conditional" path="conhecerlinguas" rows="4" cols="45" placeholder="Qual(is) idioma(s)" style="color: black;"/><br /><br />
			</div>
			
			<br />
			
			<div class="conditional2">
				<label>12.3 - Comportamentais ?</label><br />
				<form:radiobutton path="conhecercomp" value="Não" id="Não" label="Não" />
				<form:radiobutton path="conhecercomp" value="Sim" id="Sim" label="Sim" /><br />									
				<label class="conditional">12.3.1- Qual(is) ?</label><br />
				<form:textarea class="conditional" path="conhecercomp" rows="4" cols="45" placeholder="Qual(is)" style="color: black;"/><br />
			</div>
			
			<br />

			<div class="conditional2">
				<label>12.4 - Off-topics ?</label><br />
				<form:radiobutton path="conheceroff" value="Não" id="Não" label="Não" />
				<form:radiobutton path="conheceroff" value="Sim" id="Sim" label="Sim" /><br />									
				<label class="conditional">12.4.1- Qual(is) ?</label><br />
				<form:textarea class="conditional" path="conheceroff" rows="4" cols="45" placeholder="Qual(is)" style="color: black;"/>
			</div>				
		</div>
		
		<br />

		<div class="form-group">
			<label>13- Gostaria de ensinar outro(s) tema(s) ? </label><br />
			
			<form:radiobutton path="ensinar" value="Não" id="Não" label="Não" />
			<form:radiobutton path="ensinar" value="Sim" id="Sim" label="Sim" /><br /><br /> 
			
			<div class="conditional2">
				<label>13.1 - Tecnologias ?</label><br />
				<form:radiobutton path="ensinartec" value="Não" id="Não" label="Não" />
				<form:radiobutton path="ensinartec" value="Sim" id="Sim" label="Sim" /><br />									
				<label class="conditional">13.1.1- Qual(is) ?</label><br />
				<form:textarea class="conditional" path="ensinartec" rows="4" cols="45" placeholder="Qual(is) tecnologia(s)" style="color: black;"/><br />
			</div>
			
			<br />

			<div class="conditional2">
				<label>13.2 - Idiomas ?</label><br />
				<form:radiobutton path="ensinarlinguas" value="Não" id="Não" label="Não" />
				<form:radiobutton path="ensinarlinguas" value="Sim" id="Sim" label="Sim" /><br />									
				<label class="conditional">13.2.1- Qual(is) ?</label><br />
				<form:textarea class="conditional" path="ensinarlinguas" rows="4" cols="45" placeholder="Qual(is) idioma(s)" style="color: black;"/><br />
			</div>
			
			<br />

			<div class="conditional2">
				<label>13.3 - Comportamentais ?</label><br />
				<form:radiobutton path="ensinarcomp" value="Não" id="Não" label="Não" />
				<form:radiobutton path="ensinarcomp" value="Sim" id="Sim" label="Sim" /><br />									
				<label class="conditional">13.3.1- Qual(is) ?</label><br />
				<form:textarea class="conditional" path="ensinarcomp" rows="4" cols="45" placeholder="Qual(is)" style="color: black;"/><br />
			</div>
			
			<br />

			<div class="conditional2">
				<label>13.4 - Off-topics ?</label><br />
				<form:radiobutton path="ensinaroff" value="Não" id="Não" label="Não" />
				<form:radiobutton path="ensinaroff" value="Sim" id="Sim" label="Sim" /><br />									
				<label class="conditional">13.4.1- Qual(is) ?</label><br />
				<form:textarea class="conditional" path="ensinaroff" rows="4" cols="45" placeholder="Qual(is)" style="color: black;"/>
			</div>				
		</div>
		
		</div>

		<br />
		
		<input type="submit" class="btn btn-primary" 
			value="${pergunta.id == 0 ? 'Cadastrar' : 'Alterar' }" />

		<c:if test="${pergunta.id ne 0}">
			<a href="${cancela} ${pergunta.id}" class="btn btn-danger">Cancelar</a>
		</c:if>
		
		<br />
			
		</form:form>	
	</div>
</body>
</html>