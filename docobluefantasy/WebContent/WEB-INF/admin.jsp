<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String message = (String) request.getAttribute("message");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DOCOBLE FANTASY(仮)管理者ページ</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/reset.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/admin.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/admin_index.css">
</head>
<body>
<br>

<header>
<div align="center">
<input type="image" src="${pageContext.request.contextPath}/image/siteLogo/POPUTE.png" width="600" height="150" >
</div>
<hr>
</header>

	<div align="center">


<form action="/docobluefantasy/AdminFunctionServlet" method="post">
	<input type="submit" name="adminPage" value="情報登録" class="entry_submit">
	<div class="text style entry">情報登録</div>
	<input type="submit" name="adminPage" value="情報削除" class="delete_submit">
	<div class="text style delete">情報削除</div>
	<input type="submit" name="adminPage" value="情報更新" class="update_submit">
	<div class="text style update">情報更新</div>
</form>
	<%
		if (message != null) {
	%>
		<p id="successMsg"> <%= message %> </p>
	<%
		}
	%>
<br>
<table>
<tr>
<th width="50"><a href="/docobluefantasy/AdminFunctionServlet?status=logout"><input type="image" src="${pageContext.request.contextPath}/image/icon/logout.png"></a></th>
</tr>
</table>
<hr>
	<h5><font color="#000000">Copyright ドコウィズ攻略班 All Rights Reseved.</font></h5>
</div>
</body>
</html>