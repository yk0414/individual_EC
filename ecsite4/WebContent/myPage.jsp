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
	<link rel="stylesheet" type="text/css" href="./css/myPage.css">
	<link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css" rel="stylesheet">

	<title>MyPage画面</title>

<body>

	<jsp:include page="header.jsp"/>
	<div id="main">
		<div id="top">
			<p>MyPage</p>
		</div>
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
	</div>
	<jsp:include page="footer.jsp"/>

</body>
</html>