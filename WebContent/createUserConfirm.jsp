<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<meta http-equiv="imagetoolbar" content="no" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<title>UserCreateConfirm画面</title>

<style type="text/css">
/* ========TAGLAYOUT======== */
body {
margin: 0;
padding: 0;
line-height: 1.6;
letter-spacing: 1px;
font-family: Verdana,Helvetica,sans-serif;
font-size: 12px;
color: #333;
background: #fff;
}

table {
text-align: center;
margin: 0 auto;
}

/* ========IDLAYOUT======== */
#top {
width: 780px;
margin: 30px auto;
border: 1px solid #333;
}

#header {
width: 100%;
height: 80px;
background-color: black;
}

#main {
width: 100%;
height: 80px;
text-align: center;
clear: both;
}

</style>
</head>
<body>
<body>
	<!-- <div id="header">
		<div id="pr">
		</div>
	</div> -->
	<div id="main">
		<div id="top">
			<p>ユーザー登録画面</p>
		</div>
		<div>
			<h3>登録する内容は以下でよろしいですか。</h3>

				<s:form action="CreateUserCompleteAction">
			<table class="vertical-list-table">
<tr>
	<th scope="row"><s:label value="姓:"/></th>
	<td><s:property value="familyName"/></td>
</tr>
<tr>
	<th scope="row"><s:label value="名:"/></th>
	<td><s:property value="firstName"/></td>
</tr>
<tr>
	<th scope="row"><s:label value="姓ふりがな:"/></th>
	<td><s:property value="familyNameKana"/></td>
</tr>
<tr>
<th scope="row"><s:label value="名ふりがな:"/></th>
<td><s:property value="firstNameKana"/></td>
</tr>
<tr>
	<th scope="row"><s:label value="性別:"/></th>
	<td>
	<s:if test="#session.sex==0">
	男性<s:hidden name="sex" value="%{sex}"/>
	</s:if>
	<s:else>
		女性<s:hidden name="sex" value="%{sex}"/>
	</s:else>
	</td>
</tr>
<tr>
	<th scope="row"><s:label value="メールアドレス:"/></th>
	<td><s:property value="email"/></td>
</tr>
<tr>
	<th scope="row"><s:label value="ログインID:"/>
	<td><s:property value="loginId"/>
</tr>
<tr>
	<th scope="row"><s:label value="パスワード:"/>
	<td><s:property value="password"/>
</tr>
</table>
<div class="submit_btn_box">
<div id=".contents-btn-set">
<s:submit value="登録" class="submit_btn" />
</div>
</div>
<s:hidden name="loginId" value="%{loginId}"/>
<s:hidden name="password" value="%{password}"/>
<s:hidden name="familyName" value="%{familyName}"/>
<s:hidden name="firstName" value="%{firstName}"/>
<s:hidden name="familyNameKana" value="%{familyNameKana}"/>
<s:hidden name="firstNameKana" value="%{firstNameKana}"/>
<s:if test='sex.equals("男性")'>;
<s:hidden name="sex" value="0"/>
</s:if>
<s:if test='sex.equals("女性")'>;
<s:hidden name="sex" value="1"/>
</s:if>

<s:hidden name="email" value="%{email}"/>
</s:form>
</div>
</div>
	<!-- <div id="footer">
		Copyright 2018 TabiCale all rights reserved.
		</div> -->
</body>
</html>