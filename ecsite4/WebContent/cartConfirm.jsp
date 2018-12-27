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
	<link rel="stylesheet" type="text/css" href="./css/cartConfirm.css">
	<link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css" rel="stylesheet">

	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>


	<title>CartConfirm画面</title>

	<script type="text/javascript">
		function submitAction(url,id){
			var form = '#'+id;
			$(form).attr('action',url);
			$(form).submit();
		}
	</script>
<body>

	<jsp:include page="header.jsp"/>
	<div id="main">
		<div id="top">
			<p>CartConfirm</p>
		</div>
		<div>
			<s:if test="session.cartList.size()!=0">
			<p>カート内商品一覧</p>
			<s:if test="messageList != null">
				<s:iterator value="messageList">
					<p>${message}</p>
				</s:iterator>
			</s:if>
			<table border=1>
				<tr>
					<th>商品名</th>
					<th>金額</th>
					<th>個数</th>
				</tr>
				<s:iterator value="session.cartList">
					<tr>
						<td><s:property value="itemName"/></td>
						<td><s:property value="totalPrice"/><span>円</span></td>
						<td><s:property value="totalCount"/><span>個</span></td>
					</tr>
				</s:iterator>
			</table>
			<h3>カート内合計金額：${cartPrice}円</h3>
			<a class="buy" href="<s:url action='CartBuyAction'/>">カート内の商品を購入する</a>
			</s:if>
			<s:else>
				<p class="none">カート内に商品はありません</p>
			</s:else>
			<a class="buy" href="<s:url action='HomeAction'/>">買い物を続ける</a>
		</div>
	</div>

	<jsp:include page="footer.jsp"/>

</body>
</html>