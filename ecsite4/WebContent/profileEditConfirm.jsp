<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>

	<meta http-equiv="Content-Type" content="text/html; charset-utf-8"/>
	<meta http-equiv="Content-Style-Type" content="text/css"/>
	<meta http-equiv="Content-Script-Type" content="text/javascript" />
	<meta http-equiv="imagetoolbar" content="no"/>
	<meta name="description" content=""/>
	<meta name="keywords" content=""/>
	<link rel="stylesheet" type="text/css" href="./css/header.css">
	<link rel="stylesheet" type="text/css" href="./css/footer.css">
	<link rel="stylesheet" type="text/css" href="./css/ecsite4.css">
	<link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css" rel="stylesheet">

	<title>ProfileEditConfirm画面</title>

</head>
<body>

	<jsp:include page="header.jsp"/>
	<div id="main">
		<div id="top">
			<p>ProfileEditConfirm</p>
		</div>
		<div>
			<p>以下の内容で変更致しました</p>
			<table border="1">
				<tr>
					<th>ログインID</th>
					<td>${loginId}</td>
				</tr>
				<tr>
					<th>ログインPASS</th>
					<td>${loginPass}</td>
				</tr>
				<tr>
					<th>ユーザー名</th>
					<td>${userName}</td>
				</tr>
				<tr>
					<th>電話番号</th>
					<td>${phoneNumber}</td>
				</tr>
				<tr>
					<th>メールアドレス</th>
					<td>${mail}</td>
				</tr>
				<tr>
					<th>お届け先住所</th>
					<td>${address}</td>
				</tr>
			</table>
		</div>
	</div>
	<jsp:include page="footer.jsp"/>

</body>
</html>