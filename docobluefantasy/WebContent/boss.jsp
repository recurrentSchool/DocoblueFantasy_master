<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>DOCOBLE FANTASY(仮)ボスページ</title>
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

<div align="center">
	<h2>ボス一覧</h2>
</div>
<br>
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

<hr>
<div align="center">
	<h5><font color="#0000CC">Copyright ドコウィズ攻略班 All Rights Reseved.</font></h5>
</div>

</body>
</html>