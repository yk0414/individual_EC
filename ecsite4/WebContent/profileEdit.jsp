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
	<link rel="stylesheet" type="text/css" href="./css/profileEdit.css">
	<link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css" rel="stylesheet">

	<title>ProfileEdit画面</title>

</head>
<body>

	<jsp:include page="header.jsp"/>
	<div id="main">
		<div id="top">
			<p>ProfileEdit</p>
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
		<div id="edit">
			<p>変更したい内容を書き換えてください</p>
			<form action="<s:url action='ProfileEditConfirmAction'/>">
			<table border="1">
				<tr>
					<th>ログインID</th>
					<td><input type="text" name="loginId" class="text" value="${loginId}"/></td>
				</tr>
				<tr>
					<th>ログインPASS</th>
					<td><input type="text" name="loginPass" class="text" value="${loginPass}"/></td>
				</tr>
				<tr>
					<th>ユーザー名</th>
					<td><input type="text" name="userName" class="text" value="${userName}"/></td>
				</tr>
				<tr>
					<th>電話番号</th>
					<td><input type="text" name="phoneNumber" class="text" value="${phoneNumber}"/></td>
				</tr>
				<tr>
					<th>メールアドレス</th>
					<td><input type="text" name="mailAddress" class="text1" value="${mailAddress}"/>
						<select name="domain">
							<option value="gmail.com">@gmail.com</option>
							<option value="docomo.ne.jp">@docomo.ne.jp</option>
							<option value="yahoo.co.jp">@yahoo.co.jp</option>
						</select>
					</td>
				</tr>
				<tr>
					<th>お届け先住所</th>
					<td><input type="text" name="address" class="text" value="${address}"/></td>
				</tr>
			</table>
			<input type="submit" value="完了" class="submit"/>
			</form>
		</div>
	</div>
	<jsp:include page="footer.jsp"/>

</body>
</html>