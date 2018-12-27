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

	<title>ItemCreate画面</title>

</head>
<body>

	<jsp:include page="header.jsp"/>
	<div id ="main">
		<div id ="top">
			<p>商品追加画面</p>
		</div>
		<div id ="select">
			<s:if test="errorMessage != ''">
				<s:property value="errorMessage" escape="false"/>
			</s:if>
			<table>
				<s:form action="ItemCreateConfirmAction">
					<tr>
						<td>商品名：</td>
						<td><input type="text" name="itemName" value="" class="text"/></td>
					<tr>
					<tr><td><br></td></tr>
					<tr>
						<td>販売価格：</td>
						<td><input type="text" name="itemPrice" value="" class="text"/></td>
						<td>円</td>
					</tr>
					<tr><td><br></td></tr>
					<tr>
						<td>販売個数：</td>
						<td><input type="text" name="itemStock" value="" class="text"/></td>
						<td>個</td>
					</tr>

					<s:submit value="確定" class="submit"/>
				</s:form>
			</table>
		</div>
		<div>
			<span>前画面に戻る場合は</span>
			<a href='<s:url action="AdminAction"/>'>こちら</a>
		</div>
	</div>

	<jsp:include page="footer.jsp"/>

</body>
</html>