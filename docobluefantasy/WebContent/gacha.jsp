<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ガチャ画面</title>
<link rel="stylesheet" href="/docobluefantasy/css/reset.css">
</head>
<body>
<div align="center">
<h2>ガチャシミュレーション</h2>
<form action="/docobluefantasy/GachaServlet" method="post">
<input type="image" src="${pageContext.request.contextPath}/image/gacha/gacha.gif"><br>
<input type="image" src="${pageContext.request.contextPath}/image/gacha/gachaBTN.png" width="140" height="70">
</form>
</div>
</body>
</html>