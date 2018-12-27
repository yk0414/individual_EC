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
	<link rel="stylesheet" type="text/css" href="./css/itemSell.css">
	<link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css" rel="stylesheet">

	<title>ItemSell画面</title>

</head>
<body>

	<jsp:include page="header.jsp"/>

	<div id ="main">
		<div id ="top">
			<p>ItemSell</p>
		</div>
		<div id ="item">
			<h3>商品</h3>
			<div id ="text-center">
			<s:form action="ItemCreateAction">
				<s:submit value="新規登録" class="button"/>
			</s:form>
			<br>
			<s:form action="ItemListAction">
				<s:submit value="一覧" class="button"/>
			</s:form>
			</div>
		</div>
	</div>

	<jsp:include page="footer.jsp"/>

</body>
</html>