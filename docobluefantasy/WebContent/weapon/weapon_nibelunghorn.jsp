<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="bean.Weapon"%>
<% Weapon weapon = (Weapon)request.getAttribute("weapon"); %>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>ニーベルン・ホルン詳細</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/reset.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
</head>

<body>

<br>

<header>
<div align="center">
<h1>DOCOBLUEFANTASY攻略</h1>
</div>
<hr>
<header>
<div align="center">
<input type="image" src="${pageContext.request.contextPath}/image/siteLogo/POPUTE.png" width="600" height="150" >
</div>
</header>
<hr>
</div>

<div align="center">
<input type="image" src="${pageContext.request.contextPath}/image/siteLogo/POPUTE.png" width="600" height="150">
</div>
</header>


<div align="center">
<img src="${pageContext.request.contextPath}/image/weapon/NibelungHorn.png" width="400" height="350" alt="ニーベルン・ホルンの画像">

	<table border="1" align="center" bgcolor="#FFFFFF">
		<tr>
			<th>名前</th>
			<td align="center"><%= weapon.getName()%></td>
		</tr>
		<tr>
			<th>攻撃力</th>
			<td align="center"><%= weapon.getAttack()%></td>
		</tr>
		<tr>
			<th>スキル</th>
			<td align="center"><%= weapon.getSkill()%></td>
		</tr>
	</table>

<br>
		<div align="center">
		<table border="1" bgcolor="#FFFFFF">
		<tr>
		<th><a href="/docobluefantasy/character.jsp"><font color="#0000CC">戻る</font></a></th>
		</tr>
		</table>

		</div>


<hr>
	<h5><font color="#0000CC">Copyright ドコウィズ攻略班 All Rights Reseved.</font></h5>

</div>
<br>
</body>
</html>