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

<br>

<div align="center">
<h1>DOCOBLUEFANTASY攻略</h1>
<hr>
</div>

<header>
<div align="center">
<input type="image" src="${pageContext.request.contextPath}/image/siteLogo/POPUTE.png" width="600" height="150">
</div>
</header>

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
		<a href="/docobluefantasy/main.jsp"><b><font size="3" color="#0000CC">戻る</font></b></a>
		</div>
		<br>
<div align="center">
			<form action="/docobluefantasy/ContentsServlet" method="post">
			<input class="submit_button" type="submit" name="submit" value="ログアウト">
			</form>
		</div>
<hr>
<div align="center">
<h5><font color="#0000CC">Copyright ドコウィズ攻略班 All Rights Reseved.</font></h5>
</div>

</body>


</html>