<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DOCOBLE FANTASY(仮) | メインページ</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/reset.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
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

<div align="center">
<table border="1"  width="280" height="100" bordercolor="#000000">
<tr><td ><a href="/docobluefantasy/weapon.jsp"><input type="image" src="${pageContext.request.contextPath}/image/icon/omegasword.png"></a></td>
<td><a href="/docobluefantasy/character.jsp"><input type="image" src="${pageContext.request.contextPath}/image/icon/mizugizoi.png"></a></td>
<td><a href="/docobluefantasy/boss.jsp"><input type="image" src="${pageContext.request.contextPath}/image/icon/shiva.png"></a></td>
<td><a href="/docobluefantasy/gacha.jsp"><script>document.write(output);</script></a></td></tr>
<tr ><th bgcolor="#FFFFFF"><font face="arial black">武器</font></th>
<th bgcolor="#FFFFFF"><font face="arial black">キャラクター</font></th>
<th bgcolor="#FFFFFF"><font face="arial black">ボス</font></th>
<th bgcolor="#FFFFFF"><font face="arial black">ガチャシュミレーター</font></th>
</tr>
</table>
<a class="twitter-timeline" data-width="400" data-height="500" data-theme="white" href="https://twitter.com/granbluefantasy?ref_src=twsrc%5Etfw">Tweets by granbluefantasy</a> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>
<footer>
<form action="/docobluefantasy/ContentsServlet" method="post">
<input class="submit_button" type="submit" value="ログアウト">
</form>
<br>
<table>
<tr>
<th><a href="/docobluefantasy/weapon.jsp">武器一覧　</a></th>
<th>  </th>
<th><a href="/docobluefantasy/character.jsp">キャラ一覧　</a></th>
<th>  </th>
<th><a href="/docobluefantasy/boss.jsp">ボス一覧　</a></th>
<th>  </th>
<th><a href="/docobluefantasy/gacha.jsp">ガチャシュミレーター</a></th>
</tr>
</table>
<br>
<h5><font color="#0000CC">Copyright ドコウィズ攻略班 All Rights Reseved.</font></h5>
</footer>
</div>
</body>
</html>