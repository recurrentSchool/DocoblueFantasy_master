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
<div align="center">


<br>
	<b>名前　：　</b><%= user.getName()%>
<br>
<br>
	<b>パスワード　：　</b><%= user.getPass()%>
<br>
<br>
	<b>課金額　：　</b><%= user.getBilling()%>
<br>
<br>
<br>
<font size="10" color="black">この情報でよろしいですか?</font>
<br>
<br>
<br>
<form action="/docobluefantasy/RegisterServlet" method="GET">
<input type="submit" value="はい">

<p>
<div align="right">
<p>
	<a href="/docobluefantasy/registar.jsp" >戻る</a>　　
</p>
</div>
</form>

</div>


<hr>

<div align="center">

<h5><font color="#0000CC">Copyright ドコウィズ攻略班 All Rights Reseved.</font></h5>
</div>

</body>
</html>