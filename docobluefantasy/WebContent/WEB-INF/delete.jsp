<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String message = (String) request.getAttribute("message");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>情報削除画面</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/reset.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/admin.css">
</head>
<body>
<div align="center">
<input type="image" src="${pageContext.request.contextPath}/image/siteLogo/POPUTE.png" width="600" height="150" >
</div>
<div align="center">
<hr>

<%
	if (message != null) {
%>
	<p> <%= message %> </p>
<%
	}
%>

<form action="/docobluefantasy/AdminFunctionServlet" method="post">
<input type="hidden" name="functionPage" value="delete">
<input type="hidden" name="pageMove" value="confirmation">

削除する種類と項目名を入力してください<br>
<select name="contentsSelect">
	<option value="weapon">武器</option>
	<option value="character">キャラクター</option>
	<option value="boss">ボス</option>
</select>
<br>
名前:<input type="text" name="deleteName">
<br>
<input type="submit"  name="delete" value="確定">
<br>
<br>
<br>
<input type="button" onclick="location.href='/docobluefantasy/AdminFunctionServlet'"value="戻る">

</form>
<hr>
<p>Copyright ドコウィズ攻略班 All Rights Reseved.</p>
</div>
</body>
</html>