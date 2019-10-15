<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DOCOBLE FANTASY(仮)メインページ</title>
<link rel="stylesheet" href="/docobluefantasy/css/reset.css">
<link rel="stylesheet" href="/docobluefantasy/css/style.css">
</head>
<body>

<header>
<div align="center">
<input type="image" src="${pageContext.request.contextPath}/image/siteLogo/POPUTE.png" width="600" height="150">
</div>
</header>
<hr>
<script type="text/javascript">


   var imglist = new Array(
     "/docobluefantasy/image/icon/banner_rd28bxed_1.png",
     "/docobluefantasy/image/icon/banner_rd28bxed_2.png");

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
<hr>
<div align="right">
<form action="/docobluefantasy/ContentsServlet" method="post">
<input class="submit_button" type="submit" value="ログアウト">
</form>
</div>
<h5><font color="#0000CC">Copyright ドコウィズ攻略班 All Rights Reseved.</font></h5>
</div>
<hr>
</body>
</html>