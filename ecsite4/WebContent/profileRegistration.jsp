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

	<title>ProfileRegistration画面</title>

</head>
<body>

	<jsp:include page="header.jsp"/>
	<div id="main">
		<div id="top">
			<p>ProfileRegistration</p>
		</div>
		<div>
			<h3>以下の項目を記入してください</h3>
			<s:form action="ProfileRegistrationConfirmAction">
				<table>
					<tr><td><br></td></tr>
					<tr>
						<td>電 話 番 号：</td>
						<td><input type="text" value="" name="phoneNumber" class="text"/></td>
					</tr>
					<tr><td><br></td></tr>
					<tr>
						<td>メールアドレス：</td>
						<td>
							<input type="text" value="" name="mailAddress" class="text1"/>
							<select name="domain">
								<option value="@gmail.com">@gmail.com</option>
								<option value="@docomo.ne.jp">@docomo.ne.jp</option>
								<option value="@yahoo.ne.jp">@yahoo.co.jp</option>
							</select>
						</td>
					</tr>
					<tr><td><br></td></tr>
					<tr>
						<td>送付先住所：</td>
						<td><input type="text" value="" name="address" class="text"/></td>
					</tr>
					<tr><td><br></td></tr>
					<s:submit value="登録" class="submit"/>
				</table>
			</s:form>
			<br>
			<br><a href="<s:url action='MyPageAction'/>">前画面に戻る場合はこちら</a>
		</div>
	</div>
	<jsp:include page="footer.jsp"/>

</body>
</html>