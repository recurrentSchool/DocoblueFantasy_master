<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="bean.Weapon"%>
<%@	page import="bean.BattleCharacter"%>
<%@ page import="bean.Boss"%>
<%
	String functionPage = (String) session.getAttribute("functionPage");

	Weapon weapon = (Weapon) request.getAttribute("weapon");
	BattleCharacter character = (BattleCharacter) request.getAttribute("character");
	Boss boss = (Boss) request.getAttribute("boss");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>確認画面</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/reset.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/admin.css">
</head>
<body>

<br>

<header>
	<div align="center">
		<input type="image" src="${pageContext.request.contextPath}/image/siteLogo/POPUTE.png" width="600" height="150">
	</div>
</header>
<hr>
	<div align="center">
		<hr>

		<p>この内容で間違いありませんか？</p>

		<!-- entry武器情報 -->
		<%
			if (weapon != null) {
		%>
		<form action="/docobluefantasy/AdminFunctionServlet" method="post">
			<input type="hidden" name="pageMove" value="executeFunction">
			<input type="hidden" name="functionPage" value="entry">
			<table border="1">
				<tr>
					<th>武器名</th>
					<td><%=weapon.getName()%><input type="hidden"
						name="weaponName" value=<%=weapon.getName()%>></td>
				</tr>
				<tr>
					<th>攻撃力</th>
					<td><%=weapon.getAttack()%><input type="hidden"
						name="weaponAttack" value=<%=weapon.getAttack()%>></td>
				</tr>
				<tr>
					<th>スキル名</th>
					<td><%=weapon.getSkill()%><input type="hidden"
						name="weaponSkill" value=<%=weapon.getSkill()%>></td>
				</tr>
			</table>
			<input type="submit" value="実行">
		</form>
		<%
			}
		%>

		<!-- entryキャラクター情報 -->
		<%
			if (character != null) {
		%>
		<form action="/docobluefantasy/AdminFunctionServlet" method="post">
			<input type="hidden" name="pageMove" value="executeFunction">
			<input type="hidden" name="functionPage" value="entry">
			<table border="1">
				<tr>
					<th>キャラクター名</th>
					<td><%=character.getName()%><input type="hidden"
						name="characterName" value=<%=character.getName()%>></td>
				</tr>
				<tr>
					<th>レアリティ</th>
					<td><%=character.getRarity()%><input type="hidden"
						name="characterRarity" value=<%=character.getRarity()%>></td>
				</tr>
				<tr>
					<th>攻撃力</th>
					<td><%=character.getAttack()%><input type="hidden"
						name="characterAttack" value=<%=character.getAttack()%>></td>
				</tr>
				<tr>
					<th>HP</th>
					<td><%=character.getHp()%><input type="hidden"
						name="characterHp" value=<%=character.getHp()%>></td>
				</tr>
				<tr>
					<th>スキル</th>
					<td><%=character.getSkill()%><input type="hidden"
						name="characterSkill" value=<%=character.getSkill()%>></td>
				</tr>
				<tr>
					<th>評価</th>
					<td><%=character.getEvaluation()%><input type="hidden"
						name="characterEvaluation" value=<%=character.getEvaluation()%>></td>
				</tr>
			</table>
			<input type="submit" value="実行">
		</form>
		<%
			}
		%>

		<!-- entryボス情報 -->
		<%
			if (boss != null) {
		%>
		<form action="/docobluefantasy/AdminFunctionServlet" method="post">
			<input type="hidden" name="pageMove" value="executeFunction">
			<input type="hidden" name="functionPage" value="entry">
			<table border="1">
				<tr>
					<th>ボス名</th>
					<td><%=boss.getName()%><input type="hidden" name="bossName"
						value=<%=boss.getName()%>></td>
				</tr>
				<tr>
					<th>攻撃力</th>
					<td><%=boss.getAttack()%><input type="hidden"
						name="bossAttack" value=<%=boss.getAttack()%>></td>
				</tr>
				<tr>
					<th>HP</th>
					<td><%=boss.getHp()%><input type="hidden" name="bossHp"
						value=<%=boss.getHp()%>></td>
				</tr>
				<tr>
					<th>必殺技</th>
					<td><%=boss.getSpecialAttack()%><input type="hidden"
						name="bossSpecialAttack" value=<%=boss.getSpecialAttack()%>></td>
				</tr>
			</table>
			<input type="submit" value="実行">
		</form>
		<%
			}
		%>

		<input type="button"
			onclick="location.href='/docobluefantasy/AdminFunctionServlet'"
			value="キャンセル">

		<hr>
		<p>Copyright ドコウィズ攻略班 All Rights Reseved.</p>
	</div>


</body>
</html>