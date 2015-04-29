<%-- Directive Tag --%>
<%@page import="j02_Tag.SimpleClass"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Tags</title>
</head>
<body>

<p>
<%-- Declaration Tag --%>
<%! 
    String string = "Java Server Pages";
%>
</p>

<p>
<%--Expression Tag --%>
<%= 
    string
%>
</p>

<p>
<%-- Scriptlet Tag --%>
<% 
    String string = "JSP";
    out.println(string);
    
    String string2 = "Java";
    out.println(string2);
%>
</p>

<p>
<%-- Directive Tag ile çağrılan sınıfla işlem --%>
<% 
	//SimleClass sınıfından method çağrıldı
    out.println(new SimpleClass().getAString());
%>
</p>

</body>
</html>