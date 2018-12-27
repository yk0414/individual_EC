<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>

</head>
<body>
	<div id="header">
		<div id="header1">
			<div id="logo">
				<a href="<s:url action='GoHomeAction'/>">
					<i class="fab fa-amazon fa-3x"></i>
				</a>
			</div>
			<s:if test="#session.id != null">
				<p class="greeting">ようこそ、<s:property value="session.userName"/>さん</p>
			</s:if>
			<div id="login">
				<s:if test="#session.id != null">
					<a href='<s:url action="LogoutAction"/>'>
						ログアウト<br>
						<i class="fas fa-sign-out-alt fa-2x"></i>
					</a>
					<a href='<s:url action="GoCartAction"/>'>
						カート<br>
						<i class="fas fa-shopping-cart fa-2x" id="cart"></i>
					</a>
				</s:if>
				<s:else>
					<a href="<s:url action='LoginAction'/>">
						ログイン<br>
						<i class="fas fa-sign-in-alt fa-2x"></i>
					</a>
				</s:else>
			</div>
		</div>
		<div id="header2">
			<ul>
				<li><a href="<s:url action='HomeAction'/>">ショッピング</a></li>
				<li><a href="<s:url action='GoItemSellAction'/>">商品を販売する</a></li>
				<s:if test="#session.id != null">
				<li><a href="<s:url action='MyPageAction'/>">マイページ</a></li>
				<li><a href="<s:url action='BuyItemHistoryAction'/>">購入履歴</a></li>
				<li><a href="<s:url action='AdminAction'/>">管理者画面</a>
				</s:if>
			</ul>

		</div>

	</div>

</body>
</html>