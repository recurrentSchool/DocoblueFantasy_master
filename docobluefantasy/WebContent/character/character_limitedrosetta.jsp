<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="bean.BattleCharacter"%>
<% BattleCharacter chara = (BattleCharacter)request.getAttribute("battlechatacter"); %>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>ロゼッタ（リミテッド）詳細</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/reset.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/character.css">
</head>

<body>

<header>
<input type="image" src="${pageContext.request.contextPath}/image/siteLogo/POPUTE.png" width="200" height="50">
</header>
<div class="main_content">
<div class="image">
<div align="center">
<img src="${pageContext.request.contextPath}/image/character/limitedrosetta.png" width="560" height="490" alt="「リミテッド」ロゼッタの画像">
</div>
</div>
</div>
<div class="main_visual">
<div class="character">
	<table>
			<tr>
				<th>名前：</th>
				<td align="center"><%= chara.getName()%></td>
			</tr>
			<tr>
				<th>レアリティ：</th>
				<td align="center"><%= chara.getRarity()%></td>
			</tr>
			<tr>
				<th>攻撃力：</th>
				<td align="center"><%= chara.getAttack()%></td>
			</tr>
			<tr>
				<th>HP：</th>
				<td align="center"><%= chara.getHp()%></td>
			</tr>
			<tr>
				<th>スキル：</th>
				<td align="center"><%= chara.getSkill()%></td>
			</tr>
			<tr>
				<th>評価：</th>
				<td align="center"><%= chara.getEvaluation()%></td>
			</tr>
		</table>
</div>
</div>
<div class="footer">
<h5><font color="#0000CC">Copyright ドコウィズ攻略班 All Rights Reseved.</font></h5>
</div>
</body>
</html>