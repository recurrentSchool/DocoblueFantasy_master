<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page%>
<%
	String message =(String)request.getAttribute("message");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DOCOBLE FANTASY(仮)結果表示画面ページ</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/reset.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/message.css">
</head>
<body>
<header>
<div align="left">
<a href="/docobluefantasy/index.jsp"><input type="image" src="${pageContext.request.contextPath}/image/siteLogo/POPUTE.png" width="200" height="50"></a>
</div>
</header>
<div align="center" class="messagePage">
<p><%= message %></p>
<img src="${pageContext.request.contextPath}/image/character/message_bi.png" width="200" height="175" alt="message画像">
<a href="/docobluefantasy/index.jsp" class="top">TOPへ</a>
</div>

<hr>
<h5><font color="#0000CC">Copyright ドコウィズ攻略班 All Rights Reseved.</font></h5>
</body>
</html>