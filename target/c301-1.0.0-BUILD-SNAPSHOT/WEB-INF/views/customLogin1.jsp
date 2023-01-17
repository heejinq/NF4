<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ include file="include/header.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C..DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
custom login page
<c:out value="${error}"/>
<c:out value="${logout}"/>

<form method='post' action="/login" >
<div>
	<input type='text' name='username' value=''>
</div>
<div>
	<input type='password' name='password' value=''>
</div>
<div>
	<input type='checkbox' name='remember-me'> Remember Me
</div>
<div>
	<input type='submit'>
</div>
	<input type='hidden' name="${_csrf.parameterName}"
	 value="${_csrf.token}" />


</form>
</body>
</html>