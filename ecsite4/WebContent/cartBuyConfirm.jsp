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

	<title>CartBuyConfirm画面</title>

</head>
<body>

	<jsp:include page="header.jsp"/>
	<div id="main">
		<div id="top">
			<p>CartBuyConfirm</p>
		</div>
		<div>

			<s:form action="CartBuyConfirmAction">
				<p>支払い方法を選択してください</p>
				<table border="1">
					<tr>
						<td>
							<span>支払い方法</span>
						</td>
						<td>
							<input type="radio" name="pay" value="現金" checked="checked">現金払い
							<input type="radio" name="pay" value="クレジット">クレジットカード
						</td>
					</tr>
				</table>
				<p>送付先は以下の住所となっております</p>
				<p>${address}</p>
				<a href="<s:url action='ProfileEditAction'/>">お届け先住所変更</a>
				<input type="submit" class="submit" value="購入"/>
			</s:form>
		</div>
	</div>

	<jsp:include page="footer.jsp"/>

</body>
</html>