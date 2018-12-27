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
	<link rel="stylesheet" type="text/css" href="./css/userCreate.css">
	<link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css" rel="stylesheet">

	<title>UserCreate画面</title>

</head>
<body>

	<jsp:include page="header.jsp"/>
	<div id ="main">
		<div id ="top">
			<p>UserCreate</p>
		</div>
		<div>
			<s:if test="errorMassage != ''">
				<s:property value="errorMassage" escape="false"/>
			</s:if>
			<h3>各情報を入力してください。</h3><br>
			<table>
				<s:form action="UserCreateConfirmAction">
					<tr>
						<td>
							<label>ログインID：</label>
						</td>
						<td>
							<input type="text" name="loginUserId" class="text" value=""/>
						</td>
					</tr>
					<tr><td><br></td></tr>
					<tr>
						<td>
							<label>ログインPASS:</label>
						</td>
						<td>
							<input type="text" name="loginPassword" class="text" value=""/>
						</td>
					</tr>
					<tr><td><br></td></tr>
					<tr>
						<td>
							<label>ユーザー名：</label>
						</td>
						<td>
							<input type="text" name="userName" class="text" value=""/>
						</td>
					</tr>
					<tr><td><br></td></tr>
					<s:submit value="登録" class="submit"/>
					<tr><td><br></td></tr>
				</s:form>
			</table>
			<div>
				<span>前画面に戻る場合は</span>
				<a href='<s:url action="HomeAction"/>'>こちら</a>
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp"/>

</body>
</html>