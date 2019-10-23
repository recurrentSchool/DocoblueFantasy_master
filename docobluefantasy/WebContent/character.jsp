<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DOCOBLE FANTASY(仮)キャラクターページ</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/reset.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/button.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/characterList.css">
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
<div align="center"><h2>キャラクター一覧</h2></div>
		<div align="center">
		<table border="1">
				<tr>
					<td width="230" height="230"><div align="center"><p>カタリナ</p> <hr><a href="/docobluefantasy/ContentsServlet?characterName=catalina"><input type="image" src="${pageContext.request.contextPath}/image/character/catalina.png" width="180" height="150"></a></div></td>
					<td width="230" height="230"><div align="center"><p>オイゲン</p> <hr><a href="/docobluefantasy/ContentsServlet?characterName=eugen"><input type="image" src="${pageContext.request.contextPath}/image/character/eugen.png" width="180" height="150"></a></div></td>
					<td width="230" height="230"><div align="center"><p>イオ</p> <hr><a href="/docobluefantasy/ContentsServlet?characterName=io"><input type="image" src="${pageContext.request.contextPath}/image/character/io&rosetta.png" width="180" height="150"></a></div></td>
</tr>
<tr>
					<td width="230" height="230"><div align="center"><p>ラカム</p> <hr><a href="/docobluefantasy/ContentsServlet?characterName=lakham"><input type="image" src="${pageContext.request.contextPath}/image/character/lakham.png" width="180" height="150"></a></div></td>
					<td width="230" height="230"><div align="center"><p>パーシヴァル</p> <hr><a href="/docobluefantasy/ContentsServlet?characterName=percival"><input type="image" src="${pageContext.request.contextPath}/image/character/percival.png" width="180" height="150"></a></div></td>
					<td width="230" height="230"><div align="center"><p>ナルメア</p> <hr><a href="/docobluefantasy/ContentsServlet?characterName=narumea"><input type="image" src="${pageContext.request.contextPath}/image/character/narumea.png" width="180" height="150"></a></div></td>
</tr>
<tr>
					<td width="230" height="230"><div align="center"><p>ロゼッタ(リミテッド)</p> <hr><a href="/docobluefantasy/ContentsServlet?characterName=limitedRosetta"><input type="image" src="${pageContext.request.contextPath}/image/character/limitedrosetta.png" width="180" height="150"></a></div></td>
					<td width="230" height="230"><div align="center"><p>イオ(リミテッド)</p> <hr><a href="/docobluefantasy/ContentsServlet?characterName=limitedIo"><input type="image" src="${pageContext.request.contextPath}/image/character/limitedio.png" width="180" height="150"></a></div></td>
					<td width="230" height="230"><div align="center"><p>ランスロット</p> <hr><a href="/docobluefantasy/ContentsServlet?characterName=lancelot"><input type="image" src="${pageContext.request.contextPath}/image/character/lancelot.png" width="180" height="150"></a></div></td>
</tr>
		</table>
		</div>
	<br>
		<div align="center">
<a href="/docobluefantasy/main.jsp"><input id="image" type="image" src="${pageContext.request.contextPath}/image/icon/return.png" ></a>
		</div>
<div align="center">
<footer>
<br>
<form action="/docobluefantasy/ContentsServlet" method="post">
<a><input id="image" type="image" src="${pageContext.request.contextPath}/image/icon/back.png"></a>
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