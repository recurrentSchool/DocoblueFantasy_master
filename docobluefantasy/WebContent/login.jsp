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
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/button.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/message.css">
</head>
<body>
<header>
<div align="left">
<a href="/docobluefantasy/index.jsp"><input type="image" src="${pageContext.request.contextPath}/image/siteLogo/POPUTE.png" width="200" height="50"></a>
</div>
</header>

<div align="center" class="messagePage">
<img src="${pageContext.request.contextPath}/image/character/login_bi.png" width="300" height="200" alt="login画像">

<br>
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
		<a><input id="registar" type="image" src="${pageContext.request.contextPath}/image/icon/login.png"></a>
	</form>
<br>

</div>

<a href="/docobluefantasy/index.jsp"><input id="image" type="image" src="${pageContext.request.contextPath}/image/icon/return.png" ></a>
</div>
<footer>
<h5><font color="#0000CC">Copyright ドコウィズ攻略班 All Rights Reseved.</font></h5>
</footer>
</body>
</html>