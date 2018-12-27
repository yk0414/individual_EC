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

	<title>BuyItemComplete画面</title>

</head>
<body>

	<jsp:include page="header.jsp"/>
	<div id ="main">
		<div id ="top">
			<p>BuyItemComplete
		</div>
		<div>
			<p>購入手続きが完了いたしました。</p>
			<div>
				<a href='<s:url action="MyPageAction"/>'>
				マイページ</a><span>からの購入履歴の確認が可能です。</span>
				<p id="p">Homeへ戻る場合は<a href='<s:url action="GoHomeAction"/>'>こちら</a></p>
				<p>ショッピングを続ける方は<a href='<s:url action="HomeAction"/>'>こちら</a>
			</div>
		</div>
	</div>

	<jsp:include page="footer.jsp"/>

</body>
</html>