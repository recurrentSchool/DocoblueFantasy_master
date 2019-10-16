<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="bean.Weapon"%>
<% Weapon weapon = (Weapon)request.getAttribute("weapon"); %>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>ブルースフィア詳細</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/reset.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
</head>

<body>
<div align="center">
<input type="image" src="${pageContext.request.contextPath}/image/siteLogo/POPUTE.png" width="600" height="150" >
</div>
<hr>
<div align="center">
<img src="${pageContext.request.contextPath}/image/weapon/BlueSphere.png" width="400" height="350" alt="ブルースフィアの画像">

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
	<table border="1" bgcolor="#FFFFFF">
		<tr>
		<th><a href="/docobluefantasy/weapon.jsp"><font color="#0000CC">戻る</font></a></th>
		</tr>
		</table>
	<hr>
<h5><font color="#0000CC">Copyright ドコウィズ攻略班 All Rights Reseved.</font></h5>
</div>
<hr>
</body>
</html>