<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="bean.BattleCharacter"%>
<% BattleCharacter chara = (BattleCharacter)request.getAttribute("battlechatacter"); %>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>ランスロット詳細</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/reset.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/character.css">
</head>

<body>

<header>
<div align="left">
<a href="/docobluefantasy/main.jsp"><input type="image" src="${pageContext.request.contextPath}/image/siteLogo/POPUTE.png" width="200" height="50"></a>
<a href="/docobluefantasy/weapon.jsp"><input type="image" src="${pageContext.request.contextPath}/image/icon/weaponicon.png" width="200" height="50"></a>
<a href="/docobluefantasy/character.jsp"><input type="image" src="${pageContext.request.contextPath}/image/icon/charactericon.png" width="200" height="50"></a>
<a href="/docobluefantasy/boss.jsp"><input type="image" src="${pageContext.request.contextPath}/image/icon/bossicon.png" width="100" height="50"></a>
<a href="/docobluefantasy/gacha.jsp"><input type="image" src="${pageContext.request.contextPath}/image/icon/gachaicon.png" width="150" height="50"></a>
</div>
</header>
<div class="main_content">
<div class="image">
<div align="center">
<img src="${pageContext.request.contextPath}/image/character/lancelot.png" width="560" height="490" alt="ランスロットの画像">
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
<br>
		<div align="center">
		<table border="1" bgcolor="#FFFFFF">
		<tr>
		<th><a href="/docobluefantasy/character.jsp"><font color="#0000CC">戻る</font></a></th>
		</tr>
		</table>
		</div>
<br>
<div class="footer">
<h5><font color="#0000CC">Copyright ドコウィズ攻略班 All Rights Reseved.</font></h5>
</div>
</body>
</html>