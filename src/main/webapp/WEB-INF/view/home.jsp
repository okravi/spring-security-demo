<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<html>

<head>
	<title> Company home page</title>
</head>

<body>
	<h2>Company home page</h2>
	<hr>
	
	<p>
	Welcome to the company home page!
	</p>
	
	<hr>
	<p>
		User: <security:authentication property="principal.username"/>
		<br><br>
		Role(s): <security:authentication property="principal.authorities"/>
	<p>
	<hr>
	
	<hr>
		<p>
			<a href="${pageContext.request.contextPath}/leaders">Leadership Meeting</a>
			(Only for managers)
		</p>
	<hr>
	
	<form:form action="${pageContext.request.contextPath}/logout" method="POST">
	
		<input type="submit" value="Logout" />
		
	</form:form>
	
</body>

</html>