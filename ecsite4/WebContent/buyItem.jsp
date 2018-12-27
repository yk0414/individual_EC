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
	<link rel="stylesheet" type="text/css" href="./css/buyItem.css">
	<link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css" rel="stylesheet">

	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>

	<title>BuyItem画面</title>

	<script type="text/javascript">
		function submitAction(url,id){
			var form = '#'+id;
			$(form).attr('action',url);
			$(form).submit();
		}
	</script>

</head>
<body>

	<jsp:include page="header.jsp"/>

	<div id ="main">
		<div id ="top">
			<p>BuyItem</p>
		</div>
		<div>
			<s:iterator value="session.itemList">

				<form id=<s:property value='id'/>>
					<img src="./image/13460.jpg" class="image"/>
					<table>
						<tr>
							<td>
								<span>商品名:</span>
							</td>
							<td>
								<s:property value="itemName"/><br>
								<input type="hidden" name="selectItemName" value='<s:property value="itemName"/>'>

							</td>
						</tr>
						<tr>
							<td>
								<span>値段:</span>
							</td>
							<td>
								<s:property value="itemPrice"/><span>円</span>
								<input type="hidden" name="selectItemPrice" value='<s:property value="itemPrice"/>'>
							</td>
						</tr>
						<tr>
							<s:if test="itemStock>0">
 								<s:select id="count" name="count" label="個数" list="itemStockList"/>
 							</s:if>
						</tr>
						<tr>
							<td>
								<span>在庫数:</span>
							</td>
							<td>
								<s:if test="itemStock>0">
								<span>残り</span><s:property value="itemStock"/><span>個</span>
								</s:if>
								<s:else>
								<span style="color:red; font-weight:700;">在庫がありません（入荷待ち）</span>
								</s:else>
							</td>
						<tr>
							<s:if test="itemStock>0">
							<td>
								<span>支払い方法:</span>
							</td>
							<td>
								<input type="radio" name="pay" value="現金" checked="checked">現金払い
								<input type="radio" name="pay" value="クレジット">クレジットカード
							</td>
							</s:if>
						</tr>
					</table>
					<input type="hidden" name="selectId" value="<s:property value='id'/>">
					<div id="submit">
						<s:if test="itemStock>0">
							<input type="button" value="カートに&#13;&#10;入れる" class="submit cartsubmit" onclick="submitAction('CartAction',<s:property value='id'/>)"/>
							<input type="button" value="購入" class="submit" onclick="submitAction('BuyItemAction',<s:property value='id'/>)"/>
						</s:if>
					</div>
				</form>
			</s:iterator>
		</div>
	</div>

	<jsp:include page="footer.jsp"/>

</body>
</html>