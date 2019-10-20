<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="bean.Boss"%>
<% Boss boss = (Boss)request.getAttribute("boss"); %>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>シヴァ詳細</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/reset.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/boss.css">
</head>

<body>

<header>
<input type="image" src="${pageContext.request.contextPath}/image/siteLogo/POPUTE.png" width="200" height="50">
</header>

<div align="center">
<img src="${pageContext.request.contextPath}/image/boss/Shiva.png" width="400" height="350" alt="シヴァの画像">

<div class="table">
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
<br>
<div class="header">
<h5><font color="#0000CC">Copyright ドコウィズ攻略班 All Rights Reseved.</font></h5>
</div>
</div>

</body>
</html>