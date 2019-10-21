<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DOCOBLE FANTASY(仮) | ガチャ画面</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/reset.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/gacha.css">
</head>
<body>
<header>
<div align="left">
<a href="/docobluefantasy/main.jsp"><input type="image" src="${pageContext.request.contextPath}/image/siteLogo/POPUTE.png" width="200" height="50"></a>
<a href="/docobluefantasy/weapon.jsp"><input type="image" src="${pageContext.request.contextPath}/image/icon/weaponicon.png" width="100" height="50"></a>
<a href="/docobluefantasy/character.jsp"><input type="image" src="${pageContext.request.contextPath}/image/icon/charactericon.png" width="200" height="50"></a>
<a href="/docobluefantasy/boss.jsp"><input type="image" src="${pageContext.request.contextPath}/image/icon/bossicon.png" width="100" height="50"></a>
<a href="/docobluefantasy/gacha.jsp"><input type="image" src="${pageContext.request.contextPath}/image/icon/gachaicon.png" width="200" height="50"></a>
</div>
</header>
<div align="center">
<form action="/docobluefantasy/GachaServlet" method="post">
<input type="image" src="${pageContext.request.contextPath}/image/gacha/gacha.gif"><br>
<input type="image" src="${pageContext.request.contextPath}/image/gacha/gachaBTN.png" width="140" height="70">


	<table border="1" bgcolor="#FFFFFF">
		<tr>
			<th><a href="/docobluefantasy/main.jsp"><font color="#0000CC">戻る</font></a></th>
		</tr>
	</table>

</form>
</div>

</body>
</html>