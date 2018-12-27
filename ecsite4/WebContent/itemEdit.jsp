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

	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>

	<title>ItemEdit画面</title>

	<script type="text/javascript">
		function submitAction(url){
			$('form').attr('action',url);
			$('form').submit();
		}
	</script>

</head>
<body>

	<jsp:include page="header.jsp"/>

	<div id="main">
		<div id="top">
			<p>ItemEdit</p>
		</div>
		<div>
			<p>変更する項目に入力してください</p>
			<s:form cssStyle="display:inline-block;">
				<tr>
					<td>商品名</td>
					<td><input type="text" name="name" value="${itemName}" class="text"/></td>
				</tr>
				<tr>
					<td>販売価格</td>
					<td><input type="text" name="price" value="${itemPrice}" class="text"/></td>
					<td>円</td>
				</tr>
				<tr>
					<td>在庫数</td>
					<td><input type="text" name="stock" value="${itemStock}" class="text"/></td>
					<td>個</td>
				</tr>
				<input type="hidden" name="id" value="${itemId}"/>
				<table style="width:100%;">
				<tr>
					<td><input type="button" value="戻る" class="submit" onclick="submitAction('ItemListAction')"/></td>
					<td><input type="button" value="完了" class="submit" onclick="submitAction('ItemEditConfirmAction')"/></td>
				</tr>
				</table>

			</s:form>
		</div>
	</div>

	<jsp:include page="footer.jsp"/>

</body>
</html>