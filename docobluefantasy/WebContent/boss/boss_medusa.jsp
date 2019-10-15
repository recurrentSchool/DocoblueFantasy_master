<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="bean.Boss"%>
<% Boss boss = (Boss)request.getAttribute("boss"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>メドゥーサ詳細</title>
<link rel="stylesheet" href="boss.css">
</head>
<body>
<center>
<img src="${pageContext.request.contextPath}/image/boss/Medusa.png" width="400" height="350" alt="メドゥーサの画像">
</center>
	<table border="1" align="center">
			<tr>
				<th>名前</th>
				<td><%= boss.getName()%></td>
			</tr>
			<tr>
				<th>攻撃力</th>
				<td><%= boss.getAttack()%></td>
			</tr>
			<tr>
				<th>HP</th>
				<td><%= boss.getHp()%></td>
			</tr>
			<tr>
				<th>特殊攻撃</th>
				<td><%= boss.getSpecialAttack()%></td>
			</tr>
		</table>
</body>
</html>