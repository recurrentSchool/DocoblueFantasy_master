<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="bean.BattleCharacter"%>
<% BattleCharacter chara = (BattleCharacter)request.getAttribute("battlechatacter"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ロゼッタ（リミテッド）詳細</title>
<link rel="stylesheet" href="character.css">
</head>
<body>
<center>
<img src="${pageContext.request.contextPath}/image/character/limitedrosetta.png" width="400" height="350" alt="「リミテッド」ロゼッタの画像">
</center>
	<table border="1" align="center" bgcolor="#FFFFFF">
			<tr>
				<th>名前</th>
				<td><%= chara.getName()%></td>
			</tr>
			<tr>
				<th>レアリティ</th>
				<td><%= chara.getRarity()%></td>
			</tr>
			<tr>
				<th>攻撃力</th>
				<td><%= chara.getAttack()%></td>
			</tr>
			<tr>
				<th>HP</th>
				<td><%= chara.getHp()%></td>
			</tr>
			<tr>
				<th>スキル</th>
				<td><%= chara.getSkill()%></td>
			</tr>
			<tr>
				<th>評価</th>
				<td><%= chara.getEvaluation()%></td>
			</tr>
		</table>
</body>
</html>