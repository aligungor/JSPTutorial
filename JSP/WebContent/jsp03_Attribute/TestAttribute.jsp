<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Test Attribute</title>
</head>
<body>
	<%
		String ATTR_TAG = "ATTR";
		out.println(pageContext.getAttribute(ATTR_TAG) + "<br>");
		out.println(application.getAttribute(ATTR_TAG) + "<br>");
		out.println(request.getAttribute(ATTR_TAG) + "<br>");
		out.println(session.getAttribute(ATTR_TAG) + "<br>");
	%>
</body>
</html>