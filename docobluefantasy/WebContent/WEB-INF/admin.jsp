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
<link rel="stylesheet" href="/docobluefantasy/css/reset.css">
</head>
<body>
<div align="center">
<h1>DOCOBLUEFANTASY攻略</h1>
<hr>

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

<a href="/docobluefantasy/AdminFunctionServlet?status=logout">ログアウト</a>

<hr>
	<p>Copyright ドコウィズ攻略班 All Rights Reseved.</p>
</div>
</body>
</html>