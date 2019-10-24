<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>DOCOBLE FANTASY(仮) | メインページ</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/error.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/message.css">
</head>
<body>

<header>
<div align="left">
<a href="/docobluefantasy/main.jsp"><input type="image" src="${pageContext.request.contextPath}/image/siteLogo/POPUTE.png" width="200" height="50"></a>
<a href="/docobluefantasy/weapon.jsp"><input type="image" src="${pageContext.request.contextPath}/image/icon/weaponicon.png" width="200" height="50"></a>
<a href="/docobluefantasy/character.jsp"><input type="image" src="${pageContext.request.contextPath}/image/icon/charactericon.png" width="200" height="50"></a>
<a href="/docobluefantasy/boss.jsp"><input type="image" src="${pageContext.request.contextPath}/image/icon/bossicon.png" width="100" height="50"></a>
<a href="/docobluefantasy/gacha.jsp"><input type="image" src="${pageContext.request.contextPath}/image/icon/gachaicon.png" width="200" height="50"></a>
</div>
</header>
<div align="right">
<a href="/docobluefantasy/mypage.jsp"><input type="image" src="${pageContext.request.contextPath}/image/icon/myPage.png" width="50" height="25"></a>
</div>
<script type="text/javascript">


   var imglist = new Array(
     "/docobluefantasy/image/icon/banner_rd28bxed_1.png",
     "/docobluefantasy/image/icon/banner_rd28bxed_2.png",
     "/docobluefantasy/image/icon/banner_85dfghj1_1.png",
     "/docobluefantasy/image/icon/banner_85dfghj1_2.png");

   var selectnum = Math.floor(Math.random() * imglist.length);
   var output = "<img src=" + imglist[selectnum] + " width='200'/>";
</script>

	<div align="center" class="messagePage">

	<p><font size="7">500 Server Error</font></p>
	<br>
	<img src="${pageContext.request.contextPath}/image/character/error_bi.jpg" width="200" height="175" alt="error画像">
	<br>
	<br>
	<p><font size="5">サーバーで問題が発生しているためページを表示できません</font></p>
	<br>
	<p><font size="5">しばらく時間を置いてからやり直してください</font></p>
	<br>

	</div>

<div align="center">
<footer>
<h5><font color="#0000CC">Copyright ドコウィズ攻略班 All Rights Reseved.</font></h5>
</footer>
</div>
</body>
</html>