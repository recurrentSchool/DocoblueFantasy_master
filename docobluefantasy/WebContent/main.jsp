<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DOCOBLE FANTASY(仮)メインページ</title>
<link rel="stylesheet" href="style.css">
</head>
<body>

<header>
<div align="center">
<input type="image" src="${pageContext.request.contextPath}/image/siteLogo/POPUTE.png" width="600" height="150">
</div>
</header>
<hr>
<div align="center">
<table border="1"  width="280" height="100" bordercolor="#000000">
<tr><th bgcolor="#FFFFFF">武器</th><th bgcolor="#FFFFFF">キャラクター</th><th bgcolor="#FFFFFF">ボス</th><th bgcolor="#FFFFFF">ガチャシュミレーター</th></tr>
<tr><td ><a href="/docobluefantasy/weapon.jsp"><input type="image" src="${pageContext.request.contextPath}/image/icon/omegasword.png"></a></td>
<td><a href="/docobluefantasy/character.jsp"><input type="image" src="${pageContext.request.contextPath}/image/icon/mizugizoi.png"></a></td>
<td><a href="/docobluefantasy/boss.jsp"><input type="image" src="${pageContext.request.contextPath}/image/icon/shiva.png"></a></td>
<td><a href="/docobluefantasy/gacha.jsp"><input type="image" src="${pageContext.request.contextPath}/image/icon/banner_rd28bxed_1.png"></a></td></tr>
</table>
<hr>
<h5><font color="#0000CC">Copyright ドコウィズ攻略班 All Rights Reseved.</font></h5>
</div>
<hr>
</body>
</html>