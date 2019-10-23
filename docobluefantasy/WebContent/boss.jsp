<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DOCOBLE FANTASY(仮) | ボスページ</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/reset.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bossList.css">
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
<div align="center"><br><h2><font color="#FFFFFF">ボス一覧</font></h2><br></div>
		<div align="center">
		<table border="1">
				<tr>
					<td width="230" height="230"><div align="center"><p>ジ・オーダー・グランデ</p> <hr><a href="/docobluefantasy/ContentsServlet?bossName=grandOrder"><input type="image" src="${pageContext.request.contextPath}/image/boss/GrandOrder.png" width="180" height="150"></a></div></td>
					<td width="230" height="230"><div align="center"><p>グラニ</p> <hr><a href="/docobluefantasy/ContentsServlet?bossName=gurani"><input type="image" src="${pageContext.request.contextPath}/image/boss/Gurani.png" width="180" height="150"></a></div></td>
					<td width="230" height="230"><div align="center"><p>メドゥーサ</p> <hr><a href="/docobluefantasy/ContentsServlet?bossName=medusa"><input type="image" src="${pageContext.request.contextPath}/image/boss/Medusa.png" width="180" height="150"></a></div></td>
</tr>
<tr>
					<td width="230" height="230"><div align="center"><p>バイヴカハ</p> <hr><a href="/docobluefantasy/ContentsServlet?bossName=Morrigna"><input type="image" src="${pageContext.request.contextPath}/image/boss/Morrigna.png" width="180" height="150"></a></div></td>
					<td width="230" height="230"><div align="center"><p>ローズクイーン</p> <hr><a href="/docobluefantasy/ContentsServlet?bossName=roseQueen"><input type="image" src="${pageContext.request.contextPath}/image/boss/RoseQueen.png" width="180" height="150"></a></div></td>
					<td width="230" height="230"><div align="center"><p>シヴァ</p> <hr><a href="/docobluefantasy/ContentsServlet?bossName=shiva"><input type="image" src="${pageContext.request.contextPath}/image/boss/Shiva.png" width="180" height="150"></a></div></td>
</tr>
<tr>
					<td width="230" height="230"><div align="center"><p>ティアマトマグナ</p> <hr><a href="/docobluefantasy/ContentsServlet?bossName=tiamatOmega"><input type="image" src="${pageContext.request.contextPath}/image/boss/TiamatOmega.png" width="180" height="150"></a></div></td>
					<td width="230" height="230"><div align="center"><p>アルティメットバハムート</p> <hr><a href="/docobluefantasy/ContentsServlet?bossName=ultimateBahamut"><input type="image" src="${pageContext.request.contextPath}/image/boss/UltimateBahamut.png" width="180" height="150"></a></div></td>
</tr>
		</table>
		</div>


		<br>
		<div align="center">
		<table border="1" bgcolor="#FFFFFF">
		<tr>
		<th><a href="/docobluefantasy/main.jsp"><font color="#0000CC">戻る</font></a></th>
		</tr>
		</table>
		</div>
		<br>
<div align="center">
<footer>
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