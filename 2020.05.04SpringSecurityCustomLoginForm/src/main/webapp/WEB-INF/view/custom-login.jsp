<!DOCTYPE html>

<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>



<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>Please sign in</title>
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M"
	crossorigin="anonymous">
<link
	href="https://getbootstrap.com/docs/4.0/examples/signin/signin.css"
	rel="stylesheet" crossorigin="anonymous" />
<STYLE>
.error {
	color: red;
}
</STYLE>


</head>
<body>
	<div class="container">
		<f:form class="form-signin" method="post"
			action="${pageContext.request.contextPath}/authenticateTheUser">

			<h2 class="form-signin-heading">Lütfen Bağlanın</h2>
			<p>
				<label for="username" class="sr-only">Kullanici</label> <input
					type="text" id="username" name="username" class="form-control"
					placeholder="Username" required autofocus>
			</p>
			<p>
				<label for="password" class="sr-only">Sifre</label> <input
					type="password" id="password" name="password" class="form-control"
					placeholder="Password" required>
			</p>

			<c:if test="${param.error != null}">
				<b class="error">Hatalı kullanıcı adı / şifre girdiniz</b>

			</c:if>
			
			<c:if test="${param.error != null}">
				<b class="error">SİSTEMDEN ÇIKIŞ YAPTINIZ</b>

			</c:if>
			<button class="btn btn-lg btn-primary btn-block" type="submit">Bağlan</button>
		</f:form>
	</div>
</body>
</html>