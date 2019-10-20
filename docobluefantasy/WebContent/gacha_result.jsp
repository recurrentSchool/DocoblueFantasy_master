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
<<<<<<< HEAD

<br>

<div align="center">
<table border="1" width="500" height="300"  align = center>
=======
<table align = center border="1" width="500" height="300" id="weaponGacha">
>>>>>>> refs/remotes/origin/master
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
</div>>

<div align="center">
<p><a href="/docobluefantasy/gacha.jsp">もう一度引く</a></p><br>
<p><a href="/docobluefantasy/main.jsp">メインページに戻る</a></p>


<br>
		<div align="center">


		</div>


<hr>
	<h5><font color="#0000CC">Copyright ドコウィズ攻略班 All Rights Reseved.</font></h5>
</div>

</body>
</html>