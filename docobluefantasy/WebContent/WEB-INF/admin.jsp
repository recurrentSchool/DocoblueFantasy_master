<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String message = (String) request.getAttribute("message");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DOCOBLE FANTASY(仮)管理者ページ</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/reset.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/admin.css">
</head>
<body>
<div align="center">
<input type="image" src="${pageContext.request.contextPath}/image/siteLogo/POPUTE.png" width="600" height="150" >
</div>
<hr>
<div align="center">
	<%
		if (message != null) {
	%>
		<p> <%= message %> </p>
	<%
		}
	%>

<form action="/docobluefantasy/AdminFunctionServlet" method="post">
	<input type="submit" name="adminPage" value="情報登録">
	<br>
	<input type="submit" name="adminPage" value="情報削除">
	<br>
	<input type="submit" name="adminPage" value="情報更新">
</form>

<br>
<table>
<tr>
<th width="50"><a href="/docobluefantasy/AdminFunctionServlet?status=logout"><input type="image" src="${pageContext.request.contextPath}/image/icon/logout.png"></a></th>
</tr>
</table>
<hr>
	<h5><font color="#FFFFFF">Copyright ドコウィズ攻略班 All Rights Reseved.</font></h5>
</div>
</body>
</html>