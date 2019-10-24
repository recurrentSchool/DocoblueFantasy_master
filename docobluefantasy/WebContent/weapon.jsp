<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DOCOBLE FANTASY(仮) | 武器ページ</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/reset.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/button.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/weaponList.css">
</head>
<body>

<header>
<div align="left">
<a href="/docobluefantasy/main.jsp"><input type="image" src="${pageContext.request.contextPath}/image/siteLogo/POPUTE.png" width="200" height="50"></a>
<a href="/docobluefantasy/weapon.jsp"><input type="image" src="${pageContext.request.contextPath}/image/icon/weaponicon.png" width="200" height="50"></a>
<a href="/docobluefantasy/character.jsp"><input type="image" src="${pageContext.request.contextPath}/image/icon/charactericon.png" width="200" height="50"></a>
<a href="/docobluefantasy/boss.jsp"><input type="image" src="${pageContext.request.contextPath}/image/icon/bossicon.png" width="100" height="50"></a>
<a href="/docobluefantasy/gacha.jsp"><input type="image" src="${pageContext.request.contextPath}/image/icon/gachaicon.png" width="200" height="50"></a>
</div>
</header>
<div align="center"><br><h2><font color="#FFFFFF">武器一覧</font></h2></div><br>
		<div align="center">
		<table border="1">
				<tr>
					<td width="230" height="230"><div align="center"><p>ブルースフィア</p> <hr><a href="/docobluefantasy/ContentsServlet?weaponName=bluesphere"><input type="image" src="${pageContext.request.contextPath}/image/weapon/BlueSphere.png" width="180" height="150"></a></div></td>
					<td width="230" height="230"><div align="center"><p>D.ビィ</p> <hr><a href="/docobluefantasy/ContentsServlet?weaponName=dragonbarv"><input type="image" src="${pageContext.request.contextPath}/image/weapon/DragonBarV.png" width="180" height="150"></a></div></td>
					<td width="230" height="230"><div align="center"><p>イクサバ</p> <hr><a href="/docobluefantasy/ContentsServlet?weaponName=ixaba"><input type="image" src="${pageContext.request.contextPath}/image/weapon/Ixaba.png" width="180" height="150"></a></div></td>
</tr>
<tr>
					<td width="230" height="230"><div align="center"><p>エターナル・ラヴ</p> <hr><a href="/docobluefantasy/ContentsServlet?weaponName=loveeternal"><input type="image" src="${pageContext.request.contextPath}/image/weapon/LoveEternal.png" width="180" height="150"></a></div></td>
					<td width="230" height="230"><div align="center"><p>シュバリエソード・マグナ</p> <hr><a href="/docobluefantasy/ContentsServlet?weaponName=luminieralsordomega"><input type="image" src="${pageContext.request.contextPath}/image/weapon/LuminieraSwordOmega.png" width="180" height="150"></a></div></td>
					<td width="230" height="230"><div align="center"><p>ニーベルン・ホルン</p> <hr><a href="/docobluefantasy/ContentsServlet?weaponName=nibelunghorn"><input type="image" src="${pageContext.request.contextPath}/image/weapon/NibelungHorn.png" width="180" height="150"></a></div></td>
</tr>
		</table>
		</div>

<br>
		<div align="center">
<a href="/docobluefantasy/main.jsp"><input id="image" type="image" src="${pageContext.request.contextPath}/image/icon/return.png" ></a>

		</div>


<div align="center">
<footer>
<br>
<form action="/docobluefantasy/ContentsServlet" method="post">
<a><input id="image" type="image" src="${pageContext.request.contextPath}/image/icon/back.png"></a>
</form>
<br>
<table>
<tr>
<th><a href="/docobluefantasy/weapon.jsp">武器一覧　</a></th>
<th>  </th>
<th><a href="/docobluefantasy/character.jsp">キャラ一覧　</a></th>
<th>  </th>
<th><a href="/docobluefantasy/boss.jsp">ボス一覧　</a></th>
<th>  </th>
<th><a href="/docobluefantasy/gacha.jsp">ガチャシュミレーター</a></th>
</tr>
</table>
<br>
<h5><font color="#0000CC">Copyright ドコウィズ攻略班 All Rights Reseved.</font></h5>
</footer>
</div>
</body>
</html>