<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String message =(String)request.getAttribute("message");
%>
<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">
<title>情報登録画面</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/reset.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/admin.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/message.css">
</head>

<body>
<br>

<header>
	<div align="center">
		<input type="image" src="${pageContext.request.contextPath}/image/siteLogo/POPUTE.png" width="600" height="150" >
	</div>
	<hr>
</header>
<%
	if (message != null) {
%>
	<div align="center" class="messagePage">
	<p><%= message %></p>
	</div>
<%
	}
%>
<div align="center">
	<div id="boxDiv">
		<h1>追加できる要素は、[武器]、[キャラクター]、[ボス]から1つのみです。</h1>

		<form action="/docobluefantasy/AdminFunctionServlet" method="post">
			<input type="hidden" name="functionPage" value="entry">
			<input type="hidden" name="pageMove" value="confirmation">
			<details id="weapon">
				<summary>武器</summary>
				<br>
				名　前：<input type="text" maxlength="20" name="weaponName">
				<br>
				攻撃力：<input type="text" maxlength="10" pattern="[1-9]|[1-9][0-9]{1,8}|1000000000" name="weaponAttack">
				<br>
				スキル：<input type="text" maxlength="20" name="weaponSkill">
				<br>
				<input type="submit" name="entry" value="確定">
			</details>

			<details id="character">
				<summary>キャラクター</summary>
				<br>
				　名　前　：<input type="text" maxlength="20" name="characterName">
				<br>
				レアリティ：<select name="characterRarity">
				    <option value="N">N</option>
				    <option value="R">R</option>
				    <option value="SR">SR</option>
				    <option value="SSR">SSR</option>
					</select>
				<br>
				　攻撃力　：<input type="text" maxlength="10" pattern="[1-9]|[1-9][0-9]{1,8}|1000000000" name="characterAttack">
				<br>
				　　HP　　：<input type="text" maxlength="10" pattern="[1-9]|[1-9][0-9]{1,8}|1000000000" name="characterHp">
				<br>
				　スキル　：<input type="text" maxlength="20" name="characterSkill">
				<br>
				　評　価　：<select name="characterEvaluation">
				    <option value="0">0</option>
				    <option value="10">10</option>
				    <option value="20">20</option>
				    <option value="30">30</option>
				    <option value="40">40</option>
				    <option value="50">50</option>
				    <option value="60">60</option>
				    <option value="70">70</option>
				    <option value="80">80</option>
				    <option value="90">90</option>
				    <option value="100">100</option>
				    </select>
				<br>
				<input type="submit" name="entry" value="確定">
			</details>

			<details id="boss">
				<summary>ボス</summary>
				<br>
				　名前：<input type="text" maxlength="20" name="bossName">
				<br>
				攻撃力：<input type="text" maxlength="10" pattern="[1-9]|[1-9][0-9]{1,8}|1000000000" name="bossAttack">
				<br>
				　HP　：<input type="text" maxlength="10" pattern="[1-9]|[1-9][0-9]{1,8}|1000000000" name="bossHp">
				<br>
				必殺技：<input type="text" maxlength="20" name="bossSpecialAttack">
				<br>
				<input type="submit" name="entry" value="確定">
			</details>
			<br>
			<br>
		</form>

		<input type="button" onclick="location.href='/docobluefantasy/AdminFunctionServlet'"value="戻る">
	</div>
	<hr>
	<h5><font color="#000000">Copyright ドコウィズ攻略班 All Rights Reseved.</font></h5>
</div>
</body>
</html>