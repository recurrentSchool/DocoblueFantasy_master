<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="bean.User"%>
<% User user = (User)session.getAttribute("user"); %>

<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>マイページ</title>
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

	<table border="1" >

			<tr>
				<th>ユーザー名</th>
				<td align="center"><%= user.getName()%></td>
			</tr>
			<tr>
				<th>総課金額</th>
				<td align="center"><%= user.getBilling()%></td>
			</tr>


		</table>



		<br>
		<div align="center">
		<table border="1" bgcolor="#FFFFFF">
		<tr>
		<th><a href="/docobluefantasy/main.jsp"><font color="#0000CC">戻る</font></a></th>
		</tr>
		</table>
		</div>
</div>
<hr>
<div align="center">
<h5><font color="#0000CC">Copyright ドコウィズ攻略班 All Rights Reseved.</font></h5>
</div>

</body>


</html>