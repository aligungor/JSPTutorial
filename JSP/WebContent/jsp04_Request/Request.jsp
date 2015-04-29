<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP 03 - Request</title>
</head>
<body>

<!-- JSP url'ini verir -->
<%=
	request.getRequestURI()
%>
<br><br>

<!-- 
	url'deki parametrelerden olusan sorguyu verir 
	Örn; http://localhost:8080/JSP/jsp03_Request/Request.jsp?x=5&y=6&a=false
-->
<%= 
	request.getQueryString()
%>
<br><br>

<!-- url'deki parametreleri tek tek almak için -->
<%
	Enumeration<String> paramNames = request.getParameterNames();
	while (paramNames.hasMoreElements()) {
		String paramName = paramNames.nextElement();
		out.println(paramName + " = " + request.getParameter(paramName));
	}
%>


</body>
</html>