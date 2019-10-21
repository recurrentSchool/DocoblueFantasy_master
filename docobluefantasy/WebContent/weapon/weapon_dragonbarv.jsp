<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="bean.Weapon"%>
<% Weapon weapon = (Weapon)request.getAttribute("weapon"); %>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>D・ビィ詳細</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/reset.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/weapon.css">
</head>

<body>

<header>
<input type="image" src="${pageContext.request.contextPath}/image/siteLogo/POPUTE.png" width="200" height="50">
</header>
<div class="main_content">
<div class="image">
<div align="center">
<img src="${pageContext.request.contextPath}/image/weapon/DragonBarV.png" width="480" height="420" alt="D・ビィの画像">
</div>
</div>
</div>
<div class="main_visual">
<div class="weapon">
	<table>
		<tr>
			<th>名前：</th>
			<td align="center"><%= weapon.getName()%></td>
		</tr>
		<tr>
			<th>攻撃力：</th>
			<td align="center"><%= weapon.getAttack()%></td>
		</tr>
		<tr>
			<th>スキル：</th>
			<td align="center"><%= weapon.getSkill()%></td>
		</tr>
	</table>
</div>
</div>
<div class="footer">
<h5><font color="#0000CC">Copyright ドコウィズ攻略班 All Rights Reseved.</font></h5>
</div>
</body>
</html>