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

	<title>UserList画面</title>

</head>
<body>

	<jsp:include page="header.jsp"/>
	<div id="main">
		<div id="top">
			<p>ユーザー一覧</p>
		</div>
		<div>
			<s:if test="userList == null">
				<h3>ユーザー一覧はありません。</h3>
			</s:if>
			<s:elseif test="message == null">
				<h3>ユーザー一覧は以下になります。</h3>
				<table class="table" border="1">
					<tr>
						<th>ログインID</th>
						<th>ログインパスワード</th>
						<th>ユーザー名</th>
						<th>ユーザー作成日</th>
					</tr>
					<s:iterator value="userList">
						<tr>
							<td><s:property value="loginId"/></td>
							<td><s:property value="loginPass"/></td>
							<td><s:property value="userName"/></td>
							<td><s:property value="insert_date"/></td>
						</tr>
					</s:iterator>
				</table>
				<s:form action="UserListAction">
					<input type="hidden" name="deleteFlg" value="1">
					<s:submit value="削除" class="submit" method="delete"/>
				</s:form>

			</s:elseif>
			<s:if test="message != null">
				<h3><s:property value="message"/></h3>
			</s:if>
			<div id="text-right">
				<p>管理者画面へ戻る場合は<a href='<s:url action="AdminAction"/>'>こちら</a></p>
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp"/>

</body>
</html>