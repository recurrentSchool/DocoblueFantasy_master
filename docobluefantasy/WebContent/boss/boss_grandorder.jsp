<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="bean.Boss"%>
<% Boss boss = (Boss)request.getAttribute("boss"); %>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>ジ・オーダー・グランデ詳細</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/reset.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/boss.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/button.css">
</head>

<body>

<header>
<div align="left">
<a href="/docobluefantasy/main.jsp"><input type="image" src="${pageContext.request.contextPath}/image/siteLogo/POPUTE.png" width="200" height="50"></a>
<a href="/docobluefantasy/weapon.jsp"><input type="image" src="${pageContext.request.contextPath}/image/icon/weaponicon.png" width="200" height="50"></a>
<a href="/docobluefantasy/character.jsp"><input type="image" src="${pageContext.request.contextPath}/image/icon/charactericon.png" width="200" height="50"></a>
<a href="/docobluefantasy/boss.jsp"><input type="image" src="${pageContext.request.contextPath}/image/icon/bossicon.png" width="100" height="50"></a>
<a href="/docobluefantasy/gacha.jsp"><input type="image" src="${pageContext.request.contextPath}/image/icon/gachaicon.png" width="150" height="50"></a>
</div>
</header>
<div class="main_content">
<div class="image">
<div align="center">
<img src="${pageContext.request.contextPath}/image/boss/GrandOrder.png" width="480" height="420" alt="BlueSphereの画像">
</div>
</div>
</div>
<div class="main_visual">
<div class="boss">
	<table>
			<tr>
				<th>名前：</th>
				<td align="center"><%= boss.getName()%></td>
			</tr>
			<tr>
				<th>攻撃力：</th>
				<td align="center"><%= boss.getAttack()%></td>
			</tr>
			<tr>
				<th>HP：</th>
				<td align="center"><%= boss.getHp()%></td>
			</tr>
			<tr>
				<th>特殊攻撃：</th>
				<td align="center"><%= boss.getSpecialAttack()%></td>

			</tr>
		</table>
</div>
</div>
<br>
		<div align="center">
		<table border="1" bgcolor="#FFFFFF">
		<tr>
		<th><a href="/docobluefantasy/boss.jsp"><input id="image" type="image" src="${pageContext.request.contextPath}/image/icon/return.png" ></a></th>
		</tr>
		</table>
		</div>
		<br>
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