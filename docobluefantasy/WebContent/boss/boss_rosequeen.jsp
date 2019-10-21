<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="bean.Boss"%>
<% Boss boss = (Boss)request.getAttribute("boss"); %>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>ローズクイーン詳細</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/reset.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/boss.css">
</head>

<body>

<header>
<input type="image" src="${pageContext.request.contextPath}/image/siteLogo/POPUTE.png" width="200" height="50">
</header>
<div class="main_content">
<div class="image">
<div align="center">
<img src="${pageContext.request.contextPath}/image/boss/RoseQueen.png" width="480" height="420" alt="ローズクイーンの画像">
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
<div class="footer">
<h5><font color="#0000CC">Copyright ドコウィズ攻略班 All Rights Reseved.</font></h5>
</div>
</body>
</html>