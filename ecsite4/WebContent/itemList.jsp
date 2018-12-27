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
	<link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css" rel="stylesheet">

	<title>ItemList画面</title>

</head>
<body>

	<jsp:include page="header.jsp"/>
	<div id="main">
		<div id="top">
			<p>商品一覧</p>
		</div>
		<s:if test="itemList == null">
			<h3>商品一覧はありません。</h3>
		</s:if>
		<s:elseif test="message == null">
			<h3>商品一覧は以下になります。</h3>
			<table class="table" border="1">
				<tr>
					<th>商品名</th>
					<th>販売価格</th>
					<th>在庫数</th>
					<th>商品追加日</th>
					<th style="width:50px;">編集</th>
				</tr>
				<s:iterator value="itemList">
					<tr>
						<td><s:property value="itemName"/></td>
						<td><s:property value="itemPrice"/><span>円</span></td>
						<td>
							<s:if test="itemStock<=0">
								<span style="color:red; font-weight:700;">在庫切れ</span>
							</s:if>
							<s:else>
								<s:property value="itemStock"/><span>個</span>
							</s:else>
						</td>
						<td><s:property value="insert_date"/></td>
						<td>
							<s:form action="ItemEditAction">
								<s:submit value="編集" class="submit1"/>
								<input type="hidden" name="itemName" value="<s:property value='itemName'/>">
								<input type="hidden" name="itemPrice" value="<s:property value='itemPrice'/>">
								<input type="hidden" name="itemStock" value="<s:property value='itemStock'/>">
								<input type="hidden" name="itemId" value="<s:property value='id'/>">
							</s:form>
						</td>
					</tr>
				</s:iterator>
			</table>
			<br>
			<s:form action="ItemListDeleteConfirmAction">
				<input type="hidden" name="deleteFlg" value="1">
				<s:submit value="商品全削除" class="submit" method="delete"/>
			</s:form>

		</s:elseif>
		<s:if test="message != null">
			<h3><s:property value="message"/></h3>
		</s:if>
		<div id="text-right">
			<p>管理者画面へ戻る場合は<a href='<s:url action="AdminAction"/>'>こちら</a></p>
		</div>
	</div>
	<jsp:include page="footer.jsp"/>

</body>
</html>