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
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>

	<title>ProfileRegistration画面</title>

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
			<p>ProfileRegistrationConfirm</p>
		</div>
		<div>
			<h3>以下の内容で登録してもよろしいでしょうか</h3>
			<form action='<s:url action="ProfileRegistrationCompleteAction"/>'>
			<table>
				<tr>
					<td> 電  話  番  号 ：</td>
					<td>${phoneNumber}</td>
					<td><input type="hidden" name="phoneNumber" value="${phoneNumber}"/></td>
				</tr>
				<tr>
					<td>メールアドレス：</td>
					<td>${mail}</td>
					<td><input type="hidden" name="mailAddress" value="${mailAddress}"/></td>
					<td><input type="hidden" name="domain" value="${domain}"/></td>
				</tr>
				<tr>
					<td>送 付 先 住 所：</td>
					<td>${address}</td>
					<td><input type="hidden" name="address" value="${address}"/></td>
				</tr>
			</table>
			<input type="button" value="戻る" class="submit" onclick="submitAction('ProfileRegistrationAction')"/>
			<input type="button" value="登録" class="submit" onclick="submitAction('ProfileRegistrationCompleteAction')"/>
			</form>
		</div>
	</div>
	<jsp:include page="footer.jsp"/>

</body>
</html>