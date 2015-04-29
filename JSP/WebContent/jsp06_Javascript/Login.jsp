<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JS and JSP</title>
	<script language="javascript"> 
		function validateForm() {
			if(document.frm.username.value=="") {
				alert("Kullanıcı adı boş bırakılamaz.");
				return false;
			} else if (document.frm.password.value=="") {
				alert("Şifre boş bırakılamaz.");
				return false;
			}
		}
	</script> 
</head>
<body>
	<form name="frm" method="get" action="Validity.jsp" onSubmit="return validateForm()"> 
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
		<tr><td width="22%"></td><td width="78%"></td></tr>
		<tr><td>Kullanıcı adı : </td><td> <input type="text" name="username"/></td></tr> 
		<tr><td>Şifre : </td><td> <input type="text" name="password"/></td></tr>
		<tr><td></td><td><input type="submit" value="Giriş yap"></td></tr>
		</table>
	</form>
</body>
</html>
