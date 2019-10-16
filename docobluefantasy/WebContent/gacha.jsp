<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>ガチャ画面</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/reset.css">
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

<div align="center">
<h2>ガチャシミュレーション</h2>
<br>
<form action="/docobluefantasy/GachaServlet" method="post">
<input type="image" src="${pageContext.request.contextPath}/image/gacha/gacha.gif"><br>
<input type="image" src="${pageContext.request.contextPath}/image/gacha/gachaBTN.png" width="140" height="70">
</form>
</div>

<div align="center">
<hr>
<h5><font color="#0000CC">Copyright ドコウィズ攻略班 All Rights Reseved.</font></h5>
</div>

</body>
</html>