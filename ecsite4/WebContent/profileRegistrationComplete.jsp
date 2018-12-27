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

	<title>ProfileRegistrationComplete画面</title>

</head>
<body>

	<jsp:include page="header.jsp"/>
	<div id="main">
		<div id="top">
			<p>ProfileRegistrationComplete</p>
		</div>
		<div>
			<h3>プロフィールを更新致しました。</h3>
			<a href="<s:url action='MyPageAction'/>">MyPageに戻る</a>
		</div>
	</div>

	<jsp:include page="footer.jsp"/>

</body>
</html>