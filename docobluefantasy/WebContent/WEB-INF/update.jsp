<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String message = (String) request.getAttribute("message");
%>
<!DOCTYPE html>
<html>


<head>
<meta charset="UTF-8">
<title>情報更新画面</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/reset.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/admin.css">
</head>
<body>
<div align="center">
<input type="image" src="${pageContext.request.contextPath}/image/siteLogo/POPUTE.png" width="600" height="150" >
</div>

<br>

<header>
<div align="center">
<h1>DOCOBLUEFANTASY攻略</h1>
<hr>
</div>

<div align="center">
<input type="image" src="${pageContext.request.contextPath}/image/siteLogo/POPUTE.png" width="600" height="150">
</div>
</header>

<div align="center">

<%
	if (message != null) {
%>
	<p> <%= message %> </p>
<%
	}
%>

<h1>上書きするコンテンツを、[武器]、[キャラクター]、[ボス]から1つ選んでください。</h1>

<form action="/docobluefantasy/AdminFunctionServlet" method="post">
<input type="hidden" name="functionPage" value="update">
<input type="hidden" name="pageMove" value="confirmation">
<details>
<summary>武器</summary>
<h3>上書き対象の武器名</h3>
<input type="text" name="weaponOriginalName">
<br>
<h3>上書きする内容</h3>
　　名前　：<input type="text" name="weaponName">
<br>
　攻撃力　：<input type="text" name="weaponAttack">
<br>
　スキル　：<input type="text" name="weaponSkill">
<br>
<input type="submit" name="update" value="確定">
<br>
</details>

<details>
<summary>キャラクター</summary>

<h3>上書き対象のキャラクター名</h3>
<input type="text" name="characterOriginalName">
<br>
<h3>上書きする内容</h3>
<br>
　　名前　：<input type="text" name="characterName">
<br>
レアリティ：<select name="characterRarity">
    <option value="N">N</option>
    <option value="R">R</option>
    <option value="SR">SR</option>
    <option value="SSR">SSR</option>
	</select>
<br>
　攻撃力　：<input type="text" name="characterAttack">
<br>
　　HP　：<input type="text" name="characterHp">
<br>
　スキル　：<input type="text" name="characterSkill">
<br>
　　評価　：<select name="characterEvaluation">
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
<input type="submit" name="update" value="確定">
<br>
</details>

<details>
<summary>ボス</summary>
<h3>上書き対象のボス名</h3>
<input type="text" name="bossOriginalName">
<br>
<h3>上書きする内容</h3>
<br>
　　名前　：<input type="text" name="bossName">
<br>
　攻撃力　：<input type="text" name="bossAttack">
<br>
　　HP　：<input type="text" name="bossHp">
<br>
　必殺技　：<input type="text" name="bossSpecialAttack">
<br>
<input type="submit" name="update" value="確定">
<br>
</details>
<br>
<input type="button" onclick="location.href='/docobluefantasy/AdminFunctionServlet'"value="戻る">
</form>
<hr>
<p>Copyright ドコウィズ攻略班 All Rights Reseved.</p>
</div>
</body>
</html>