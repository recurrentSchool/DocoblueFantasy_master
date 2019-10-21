<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="bean.Boss"%>
<%@ page import="bean.BattleCharacter"%>
<%@ page import="bean.Weapon"%>
<%@ page import="java.util.List"%>
<%
	String message = (String) request.getAttribute("message");
	List<Boss> bossList = (List<Boss>) request.getAttribute("bossList");
	List<BattleCharacter> battleCharacterList = (List<BattleCharacter>) request.getAttribute("battleCharacterList");
	List<Weapon> weaponList = (List<Weapon>) request.getAttribute("weaponList");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>情報削除画面</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/reset.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/admin.css">
</head>
<body>

<br>

<header>
	<div align="center">
		<input type="image" src="${pageContext.request.contextPath}/image/siteLogo/POPUTE.png" width="600" height="150">
	</div>
	<hr>
</header>

<div align="center">


<%
	if (message != null) {
%>
	<p> <%= message %> </p>
<%
	}
%>

<form action="/docobluefantasy/AdminFunctionServlet" method="post">
	<input type="hidden" name="functionPage" value="delete">
	<input type="hidden" name="pageMove" value="confirmation">

	<p>削除する種類と項目名を入力してください<br></p>
	<p>(必ず種類と項目を一致させてください)<br></p>
	<br>
	<select name="contentsSelect">
		<option value="weapon">武器</option>
		<option value="character">キャラクター</option>
		<option value="boss">ボス</option>
	</select>

	<select name="deleteName">
		<% for(Weapon weapon : weaponList){ %>
			<option value="<%= weapon.getName() %>">武器:<%= weapon.getName() %></option>
		<% } %>
		<% for(BattleCharacter battleCharacter : battleCharacterList){ %>
			<option value="<%= battleCharacter.getName() %>">キャラクター:<%= battleCharacter.getName() %></option>
		<% } %>
		<% for(Boss boss : bossList){ %>
			<option value="<%= boss.getName() %>">ボス:<%= boss.getName() %></option>
		<% } %>
	</select>
	<br>
	<input type="submit"  name="delete" value="確定">
	<br>
	<br>
	<br>
	<input type="button" onclick="location.href='/docobluefantasy/AdminFunctionServlet'"value="戻る">

</form>
<hr>
<p>Copyright ドコウィズ攻略班 All Rights Reseved.</p>
</div>
</body>
</html>