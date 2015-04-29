<%@page import="java.util.GregorianCalendar"%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP 04 - Response</title>
</head>
<body>

	<!-- Sayfa yenileme 
		http://www.tutorialspoint.com/jsp/jsp_server_response.htm
		"Refresh" header'ı sayfa yenileme süresini düzenler
		Örnek; http://localhost:8080/JSP/jsp05_Response/Response.jsp?refresh=2
	-->
	<%
		if (request.getParameterMap().containsKey("refresh")) {
			int refreshTime = Integer.parseInt(request.getParameter("refresh"));
			response.setIntHeader("Refresh", refreshTime);
		}
		// Get current time
	   	Calendar calendar = new GregorianCalendar();
	   	String am_pm;
	   	int hour = calendar.get(Calendar.HOUR);
	   	int minute = calendar.get(Calendar.MINUTE);
	   	int second = calendar.get(Calendar.SECOND);
	   	am_pm = calendar.get(Calendar.AM_PM) == 0 ? "AM" : "PM";
	   	String CT = hour+":"+ minute +":"+ second +" "+ am_pm;
	   	out.println("Current Time is: " + CT + "\n");
	%>
	
	<!-- 
	http://www.tutorialspoint.com/jsp/jsp_server_response.htm
	http://blog.burakkutbay.com/jsp-java-server-pages-dersleri.html/
	http://beginnersbook.com/2013/11/jsp-implicit-object-response-with-examples/
		sendRedirect fonksiyonu sayfa yönlendirme için kullanılır
		Örnek; localhost:8080/JSP/jsp04_Response/Response.jsp?redirect=RedirectPage.jsp
	 -->
	<%
		if (request.getParameterMap().containsKey("redirect")) {
			if (request.getParameter("redirect").equalsIgnoreCase("google")) {
				response.sendRedirect("http://www.google.com");
			} else {
				response.sendRedirect(request.getParameter("redirect"));	
			}	
		}
	%>

	<!-- 
	Hata gönderebilmek için 
	Örnek; http://localhost:8080/JSP/jsp05_Response/Response.jsp?error=Sayfa%20Bulunamadı
	-->
	<%
		if (request.getParameterMap().containsKey("error")) {
			String errorMessage = request.getParameter("error");
			response.sendError(404, errorMessage);
		}
	%>
</body>
</html>