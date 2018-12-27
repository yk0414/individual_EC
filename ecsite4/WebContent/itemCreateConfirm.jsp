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

	<title>ItemCreateConfirm画面</title>

</head>
<body>

	<jsp:include page="header.jsp"/>
	<div id ="main">
		<div id ="top">
			<p>ItemCreateConfirm</p>
		</div>
		<div id ="confirm">
			<p>追加する商品は以下の内容でよろしいでしょうか。</p>

			<s:form action="ItemCreateCompleteAction">
				<table>
					<tr id="box">
						<td><p>商品名：</p>
						<td><s:property value="itemName" escape="false"/></td>
					</tr>
					<tr id="box">
						<td><p>販売価格：</p>
						<td><s:property value="itemPrice" escape="false"/></td>
						<td>円</td>
					</tr>
					<tr id="box">
						<td><p>販売個数：</p>
						<td><s:property value="itemStock" escape="false"/></td>
						<td>個</td>
					</tr>
				</table>
				<input type="submit" value="完了" class="submit"/>
			</s:form>

			<a href="<s:url action='ItemCreateAction'/>">前画面に戻る場合はこちら</a>
		</div>
	</div>
	<jsp:include page="footer.jsp"/>

</body>
</html>