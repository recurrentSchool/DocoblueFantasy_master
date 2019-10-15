<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="bean.Weapon"%>
<% Weapon weapon = (Weapon)request.getAttribute("weapon"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>D・ビィ詳細</title>
</head>
<body>
<center>
<img src="${pageContext.request.contextPath}/image/weapon/DragonBarV.png" width="400" height="350" alt="D・ビィの画像">
</center>
	<table border="1" align="center">
		<tr>
			<th>名前</th>
			<td><%= weapon.getName()%></td>
		</tr>
		<tr>
			<th>攻撃力</th>
			<td><%= weapon.getAttack()%></td>
		</tr>
		<tr>
			<th>スキル</th>
			<td><%= weapon.getSkill()%></td>
		</tr>
	</table>
</body>
</html>