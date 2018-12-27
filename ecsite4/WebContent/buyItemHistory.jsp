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

	<title>BuyItemHistory画面</title>

</head>
<body>

	<jsp:include page="header.jsp"/>
	<div id ="main">
		<div id ="top">
			<p>BuyItemHistory</p>
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
		<div>
			<s:if test="myPageList == null">
				<h3>ご購入情報はありません。</h3>
			</s:if>
			<s:elseif test="message == null">
				<h3>ご購入情報は以下になります。</h3>
				<table class="table" border="1" >
					<tr>
						<th>商品名</th>
						<th>値段</th>
						<th>購入個数</th>
						<th>支払い方法</th>
						<th>購入日</th>
					</tr>
					<s:iterator value="myPageList">
						<tr>
							<td><s:property value="itemName"/></td>
							<td><s:property value="totalPrice"/><span>円</span></td>
							<td><s:property value="totalCount"/><span>個</span></td>
							<td><s:property value="payment"/></td>
							<td><s:property value="insert_date"/></td>
						</tr>
					</s:iterator>
				</table>
				<s:form action="BuyItemHistoryAction">
					<input type="hidden" name="deleteFlg" value="1">
					<s:submit value="削除" class="submit" method="delete"/>
				</s:form>
			</s:elseif>
			<s:if test="message != null">
				<h3><s:property value="message"/></h3>
			</s:if>
		</div>
	</div>

	<jsp:include page="footer.jsp"/>

</body>
</html>