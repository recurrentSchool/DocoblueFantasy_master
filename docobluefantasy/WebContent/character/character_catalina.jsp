<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="bean.BattleCharacter"%>
<% BattleCharacter chara = (BattleCharacter)request.getAttribute("battlechatacter"); %>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>カタリナ詳細</title>
<link rel="stylesheet" href="character.css">
</head>

<body>

<div align="center">
<h1>DOCOBLUEFANTASY攻略</h1>
<hr>

<div align="center">
<img src="${pageContext.request.contextPath}/image/character/catalina.png" width="400" height="350" alt="カタリナの画像">
</div>
	<table border="1" >
			<tr>
				<th>名前</th>
				<td align="center"><%= chara.getName()%></td>
			</tr>
			<tr>
				<th>レアリティ</th>
				<td align="center"><%= chara.getRarity()%></td>
			</tr>
			<tr>
				<th>攻撃力</th>
				<td align="center"><%= chara.getAttack()%></td>
			</tr>
			<tr>
				<th>HP</th>
				<td align="center"><%= chara.getHp()%></td>
			</tr>
			<tr>
				<th>スキル</th>
				<td align="center"><%= chara.getSkill()%></td>
			</tr>
			<tr>
				<th>評価</th>
				<td align="center"><%= chara.getEvaluation()%></td>
			</tr>
		</table>

<hr>
<p>Copyright ドコウィズ攻略班 All Rights Reseved.</p>
</div>

</body>
</html>