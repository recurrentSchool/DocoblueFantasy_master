<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ page%>
    <% String message =(String)request.getAttribute("message"); %>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>DOCOBLE FANTASY(仮)ログインページ</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/reset.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
</head>

<body>

<br>

<header>
<div align="center">
<h1>DOCOBLUEFANTASY攻略</h1>
<hr>
</div>

<div align="center">
<input type="image" src="${pageContext.request.contextPath}/image/siteLogo/POPUTE.png" width="600" height="150">
</div>
</header>

<hr>

	<%
		if (message != null) {
	%>
		<p> <%= message %> </p>
	<%
		}
	%>
<div align="center">
	<form action="/docobluefantasy/LoginServlet" method="POST">
		<table border="1">
			<tr>
				<th bgcolor="#99CCFF">名前</th>
				<td><input type="text" name="name" maxlength="20" required></td>
			</tr>
			<tr>
				<th bgcolor="#99CCFF">パスワード</th>
				<td><input type="password" name="pass" required></td>
			</tr>
		</table>
		<br>
		<input type="submit" value="ログイン">
	</form>
	<br>
	<p>ホーム画面に戻るには「戻る」を</p>
	<br>
	<a href="/docobluefantasy/index.jsp">戻る</a>
<hr>

<h5><font color="#0000CC">Copyright ドコウィズ攻略班 All Rights Reseved.</font></h5>
</div>
</body>
</html>