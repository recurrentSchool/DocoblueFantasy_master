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

<div align="center">
<h1>DOCOBLUEFANTASY攻略</h1>
<hr>

<div align="center">
<img src="${pageContext.request.contextPath}/image/boss/Medusa.png" width="400" height="350" alt="メドゥーサの画像">
</div>
	<table border="1" >
			<tr>
				<th>名前</th>
				<td align="center"><%= boss.getName()%></td>
			</tr>
			<tr>
				<th>攻撃力</th>
				<td align="center"><%= boss.getAttack()%></td>
			</tr>
			<tr>
				<th>HP</th>
				<td align="center"><%= boss.getHp()%></td>
			</tr>
			<tr>
				<th>特殊攻撃</th>
				<td align="center"><%= boss.getSpecialAttack()%></td>
			</tr>
		</table>

<hr>
<p>Copyright ドコウィズ攻略班 All Rights Reseved.</p>
</div>

</body>
</html>