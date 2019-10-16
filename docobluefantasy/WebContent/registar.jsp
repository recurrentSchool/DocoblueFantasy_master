<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<% String message = (String) request.getAttribute("message"); %>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>DOCOBLE FANTASY(仮)会員登録ページ</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/reset.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">


<script type="text/javascript" src="js/registar.js"></script>

</head>

<body>
<header>
<div align="center">
<input type="image" src="${pageContext.request.contextPath}/image/siteLogo/POPUTE.png" width="600" height="150">
</div>
</header>
<hr>
<div align="center">
<%
	if(message != null){
%>
	<p><%= message %></p>
<%
	}
%>
	<form action="/docobluefantasy/RegisterServlet" method="POST" onSubmit="return CheckPass()">
	<input type="hidden" name="admin" value="1">
		<table border="1" >
			<tr>
				<th bgcolor="#99CCFF">名前</th>
				<td><input type="text" name="name" required></td>
			</tr>
			<tr>
				<th bgcolor="#99CCFF">課金額</th>
				<td><input type="text" name="billing" required></td>
			</tr>
			<tr>
				<th bgcolor="#99CCFF">パスワード</th>
				<td><input type="password" name="pass" id="pass1" required></td>
			</tr>
			<tr>
				<th bgcolor="#99CCFF" width="120" height="10">パスワード確認</th>
				<td><input type="password" name="pass" id="pass2" required></td><!-- class="conf" -->
		</table>
		<p><input type="submit" value="ログイン"></p>
	</form>
	<hr>

	<h5><font color="#0000CC">Copyright ドコウィズ攻略班 All Rights Reseved.</font></h5>
</div>
</body>
</html>