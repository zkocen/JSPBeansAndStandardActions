<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="com.worldmanager.models.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Welcome to the World Manager</title>
</head>
<body>
	<jsp:include page="header.jsp" />
	<table style="width:100%;">
		<tr>
			<td style="width:25%;height:80%;" valign="top">
			  	<jsp:include page="navbar.jsp" />
			</td>
			<td style="width:75%;height:80%;">
				<jsp:useBean id="wu" class="com.worldmanager.models.WebUser" scope="request">
					<jsp:setProperty name="wu" property="userId" param="uid" />
					<jsp:setProperty name="wu" property="password" param="pwd"/>
					<jsp:setProperty name="wu" property="authLevel" value="1" />
				</jsp:useBean>
				<jsp:forward page="useBeansWithParametrs.jsp" />
			</td>
		</tr>
	</table>
	<jsp:include page="footer.jsp" />
</body>
</html>