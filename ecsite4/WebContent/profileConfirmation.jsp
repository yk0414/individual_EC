<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>

	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<meta http-equiv="Content-Style-Type" content="text/css"/>
	<meta http-equiv="Content-Script-Type" content="text/javascript"/>
	<meta http-equiv="imagetoolbar" content="no"/>
	<meta name="description" content=""/>
	<meta name="keywords" content=""/>
	<link rel="stylesheet" type="text/css" href="./css/header.css">
	<link rel="stylesheet" type="text/css" href="./css/footer.css">
	<link rel="stylesheet" type="text/css" href="./css/ecsite4.css">
	<link rel="stylesheet" type="text/css" href="./css/profileConfirmation.css">
	<link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css" rel="stylesheet">

	<title>ProfileConfirmation画面</title>

</head>
<body>

	<jsp:include page="header.jsp"/>
	<div id="main">
		<div id="top">
			<p>ProfileConfirmation</p>
		</div>
		<div>
			<div id="content">
				<ul>
					<li><a href="<s:url action='ProfileConfirmationAction'/>">アカウント情報確認</a></li>
					<s:if test="mailAddress == null">
						<li><a href="<s:url action='ProfileRegistrationAction'/>">アカウント情報登録</a></li>
					</s:if>
					<li><a href="<s:url action='ProfileEditAction'/>">アカウント情報変更</a></li>
					<li><a href="<s:url action='BuyItemHistoryAction'/>">購入履歴</a></li>
				</ul>
			</div>
			<p>本人情報は以下の内容で登録されています</p>
			<table border="1">
				<tr>
					<th>ログインID</th>
					<td>${loginId}</td>
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
				<tr>
					<th>登録日時</th>
					<td>${insertDate}</td>
				</tr>
			</table>
			<form action="ProfileEditAction">
				<input type="submit" value="変更" class="submit"/>
			</form>
		</div>
	</div>
	<jsp:include page="footer.jsp"/>

</body>
</html>