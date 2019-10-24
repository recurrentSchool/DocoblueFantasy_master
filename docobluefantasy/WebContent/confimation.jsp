<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="bean.User"%>
<% User user = (User)session.getAttribute("user");%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DOCOBLE FANTASY(仮)確認ページ</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/reset.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/confirmation.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/button.css">
</head>
<body>
<header>
<div align="left">
<a href="/docobluefantasy/index.jsp"><input type="image" src="${pageContext.request.contextPath}/image/siteLogo/POPUTE.png" width="200" height="50"></a>
</div>
</header>

<br>
<div align="center">
<b>
この内容でよろしければ「はい」を<br>
やめるならば「いいえ」をクリックしてください。
</b>
<table>
<tr>
<th>名前</th>
<td><%= user.getName()%></td>
</tr>
<tr>
	<th>パスワード</th>
	<td><%= user.getPass()%></td>
</tr>
<tr>
	<th>課金額</th>
	<td><%= user.getBilling()%></td>
</tr>
</table>
<form action="/docobluefantasy/RegisterServlet" method="GET">
<a><input id="yes" type="image" src="${pageContext.request.contextPath}/image/icon/yes.png"></a>
</form>
<a href="/docobluefantasy/index.jsp"><input id="no" type="image" src="${pageContext.request.contextPath}/image/icon/no.png"></a>
<footer>
<h5><font color="#0000CC">Copyright ドコウィズ攻略班 All Rights Reseved.</font></h5>
</footer>
</div>
</body>
</html>