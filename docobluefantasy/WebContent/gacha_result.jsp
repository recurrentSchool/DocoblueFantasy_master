<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="bean.Weapon"%>
<%@ page import="java.util.List"%>
<%
	Weapon weapon = (Weapon) session.getAttribute("weapon");
	List<Weapon> listWeapon = (List<Weapon>) request.getAttribute("listWeapon");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ガチャ結果</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/reset.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/gacharesult.css">
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
<div align="center">
<table align = center border="1" width="500" height="300">
<th>名前</th>
<th>攻撃力</th>
<th>スキル</th>
<tr>
<td><%= listWeapon.get(0).getName() %></td>
<td><%= listWeapon.get(0).getAttack() %></td>
<td><%= listWeapon.get(0).getSkill() %></td>
</tr>
<tr>
<td><%= listWeapon.get(1).getName() %></td>
<td><%= listWeapon.get(1).getAttack() %></td>
<td><%= listWeapon.get(1).getSkill() %></td>
</tr>
<tr>
<td><%= listWeapon.get(2).getName() %></td>
<td><%= listWeapon.get(2).getAttack() %></td>
<td><%= listWeapon.get(2).getSkill() %></td>
</tr>
<tr>
<td><%= listWeapon.get(3).getName() %></td>
<td><%= listWeapon.get(3).getAttack() %></td>
<td><%= listWeapon.get(3).getSkill() %></td>
</tr>
<tr>
<td><%= listWeapon.get(4).getName() %></td>
<td><%= listWeapon.get(4).getAttack() %></td>
<td><%= listWeapon.get(4).getSkill() %></td>
</tr>
<tr>
<td><%= listWeapon.get(5).getName() %></td>
<td><%= listWeapon.get(5).getAttack() %></td>
<td><%= listWeapon.get(5).getSkill() %></td>
</tr>
<tr>
<td><%= listWeapon.get(6).getName() %></td>
<td><%= listWeapon.get(6).getAttack() %></td>
<td><%= listWeapon.get(6).getSkill() %></td>
</tr>
<tr>
<td><%= listWeapon.get(7).getName() %></td>
<td><%= listWeapon.get(7).getAttack() %></td>
<td><%= listWeapon.get(7).getSkill() %></td>
</tr>
<tr>
<td><%= listWeapon.get(8).getName() %></td>
<td><%= listWeapon.get(8).getAttack() %></td>
<td><%= listWeapon.get(8).getSkill() %></td>
</tr>
<tr>
<td><%= listWeapon.get(9).getName() %></td>
<td><%= listWeapon.get(9).getAttack() %></td>
<td><%= listWeapon.get(9).getSkill() %></td>
</tr>
</table>
</div>
<div align="center">
<p><a href="/docobluefantasy/gacha.jsp"><input type="image" src="${pageContext.request.contextPath}/image/icon/regacha.png"></a></p><br>
<p><a href="/docobluefantasy/main.jsp">メインページに戻る</a></p>
</div>
</body>
</html>