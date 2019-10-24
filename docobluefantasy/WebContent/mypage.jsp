<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="bean.User"%>
<% User user = (User)session.getAttribute("user"); %>

<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>マイページ</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/reset.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/mypage.css">
</head>


<body>
<script type="text/javascript">


   var imglist = new Array(
     "/docobluefantasy/image/Item/mypageItem(1).jpg",
     "/docobluefantasy/image/Item/mypageItem(2).jpg",
     "/docobluefantasy/image/Item/mypageItem(3).jpg",
     "/docobluefantasy/image/Item/mypageItem(4).jpg",
     "/docobluefantasy/image/Item/mypageItem(5).jpg",
     "/docobluefantasy/image/Item/mypageItem(6).jpg",
     "/docobluefantasy/image/Item/mypageItem(7).jpg",
     "/docobluefantasy/image/Item/mypageItem(8).jpg",
     "/docobluefantasy/image/Item/mypageItem(9).jpg",
     "/docobluefantasy/image/Item/mypageItem(10).jpg",
     "/docobluefantasy/image/Item/mypageItem(11).jpg",
     "/docobluefantasy/image/Item/mypageItem(12).jpg",
     "/docobluefantasy/image/Item/mypageItem(13).jpg",
     "/docobluefantasy/image/Item/mypageItem(14).jpg",
     "/docobluefantasy/image/Item/mypageItem(15).jpg",
     "/docobluefantasy/image/Item/mypageItem(16).jpg",
     "/docobluefantasy/image/Item/mypageItem(17).jpg",
     "/docobluefantasy/image/Item/mypageItem(18).jpg");

   var selectnum = Math.floor(Math.random() * imglist.length);
   var output = "<img src=" + imglist[selectnum] + " width='400'/>";
</script>
<header>
<div align="left">
<a href="/docobluefantasy/main.jsp"><input type="image" src="${pageContext.request.contextPath}/image/siteLogo/POPUTE.png" width="200" height="50"></a>
<a href="/docobluefantasy/weapon.jsp"><input type="image" src="${pageContext.request.contextPath}/image/icon/weaponicon.png" width="200" height="50"></a>
<a href="/docobluefantasy/character.jsp"><input type="image" src="${pageContext.request.contextPath}/image/icon/charactericon.png" width="200" height="50"></a>
<a href="/docobluefantasy/boss.jsp"><input type="image" src="${pageContext.request.contextPath}/image/icon/bossicon.png" width="100" height="50"></a>
<a href="/docobluefantasy/gacha.jsp"><input type="image" src="${pageContext.request.contextPath}/image/icon/gachaicon.png" width="150" height="50"></a>
</div>
</header>

<br>

<div align="center">


<script>
document.write(output);
</script>

</div>

<br>
	<table>
			<tr>
				<th>ユーザー名</th>
				<td align="center"><%= user.getName()%></td>
			</tr>
			<tr>
				<th>総課金額</th>
				<td align="center"><%= user.getBilling()%>円</td>
			</tr>
		</table>
		<br>
		<div align="center">
			<a href="/docobluefantasy/main.jsp"><input id="image" type="image" src="${pageContext.request.contextPath}/image/icon/return.png" ></a>
			<form action="/docobluefantasy/ContentsServlet" method="post">
			<a><input id="image" type="image" src="${pageContext.request.contextPath}/image/icon/back.png"></a>
			</form>
		</div>
<div align="center">
<footer>
<h5><font color="#0000CC">Copyright ドコウィズ攻略班 All Rights Reseved.</font></h5>
</footer>
</div>
</body>


</html>