<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>

	<meta http-equiv="Content-Type" content="text/html; charset=utf8"/>
	<meta http-equiv="Content-Style-Type" content="text/css"/>
	<meta http-equiv="content-Script-Type" content="text/javascript"/>
	<meta http-equiv="imagetoolbar" content="no"/>
	<meta name="description" content=""/>
	<meta name="keywords" content=""/>
	<link rel="stylesheet" type="text/css" href="./css/header.css">
	<link rel="stylesheet" type="text/css" href="./css/footer.css">
	<link rel="stylesheet" type="text/css" href="./css/ecsite4.css">
	<link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css" rel="stylesheet">

	<title>UserCreateConfirm画面</title>

</head>
<body>

	<jsp:include page="header.jsp"/>
	<div id ="main">
		<div id ="top">
			<p>UserCreateConfirm</p>
		</div>
		<div>
			<h3>登録する内容は以下でよろしいですか。</h3>
			<s:form action="UserCreateCompleteAction">
				<table>
					<tr id ="box">
						<td>
							<label>ログインID:</label>
						</td>
						<td>
							<s:property value="loginUserId" escape="false"/>
						</td>
					</tr>
					<tr id ="box">
						<td>
							<label>ログインPASS：</label>
						</td>
						<td>
							<s:property value="loginPassword" escape="false"/>
						</td>
					</tr>
					<tr id ="box">
						<td>
							<label>ユーザー名：</label>
						</td>
						<td>
							<s:property value ="userName" escape="false"/>
						</td>
					</tr>
					<s:submit value="完了" class="submit"/>
				</table>

			</s:form>

		</div>
	</div>
	<jsp:include page="footer.jsp"/>

</body>
</html>