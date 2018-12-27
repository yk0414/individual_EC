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

	<title>ItemEditComplete画面</title>

</head>
<body>

	<jsp:include page="header.jsp"/>
	<div id="main">
		<div id="top">
			<p>ItemEditComplete</p>
		</div>
		<div>
			<p>以下の内容に商品情報を変更致しました。</p>
			<table style="display:inline-block">
				<tr>
					<td>商品名　：</td>
					<td><s:property value="session.editName"/></td>
				</tr>
				<tr>
					<td>販売価格：</td>
					<td><s:property value="session.editPrice"/></td>
					<td>円</td>
				</tr>
				<tr>
					<td>在庫数　：</td>
					<td><s:property value="session.editStock"/></td>
					<td>個</td>
				</tr>
			</table>
			<p><a href="<s:url action='AdminAction'/>">管理者画面に戻る</a></p>
			<p><a href="<s:url action='GoHomeAction'/>">ホームに戻る</a><p>

		</div>
	</div>
	<jsp:include page="footer.jsp"/>

</body>
</html>