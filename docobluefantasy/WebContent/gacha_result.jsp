<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="bean.Weapon"%>
<%@ page import="java.util.List"%>
<%
	Weapon weapon = (Weapon) session.getAttribute("weapon");
	List<Weapon> listWeapon = (List<Weapon>) request.getAttribute("listWeapon");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ガチャ結果</title>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/js/gacha_result.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/reset.css">
</head>
<body>
<header>
<input type="image" src="${pageContext.request.contextPath}/image/siteLogo/POPUTE.png" width="200" height="50">
</header>
<table align = center border="1" width="500" height="300" id="weaponGacha">
<th>名前</th>
<th>攻撃力</th>
<th>スキル</th>
<% for(Weapon weaponGacha: listWeapon){ %>
<tr class="weapon">
	<td><%= weaponGacha.getName() %></td>
	<td><%= weaponGacha.getAttack() %></td>
	<td><%= weaponGacha.getSkill() %></td>
</tr>
<% } %>
</table>
<center>
<p><a href="/docobluefantasy/gacha.jsp">もう一度引く</a></p><br>
<p><a href="/docobluefantasy/main.jsp">メインページに戻る</a></p>
</center>
</body>
</html>