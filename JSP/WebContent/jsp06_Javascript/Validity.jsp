<%@page import="j06_Login.DummyLogin"%>
<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Validity</title>
</head>
<body>

<%
	String username = request.getParameter("username");
	String password = request.getParameter("password");
	if (DummyLogin.loginSuccessful(username, password)) {
%>
	<script language="javascript">
		alert("Giriş başarılı...");
	</script>
<%
	} else {
%>
	<script language="javascript">
		alert("Giriş başarısız");
		window.history.back();
	</script>
<%
	}
%>
 
</body>
</html>