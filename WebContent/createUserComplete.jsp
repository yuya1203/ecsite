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
<meta http-equiv="refresh" content="3;URL='HomeAction'"/>
<title>AddItemComplete画面</title>

<style type="text/css">
/* ========TAG LAYOUT======== */

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
text=align: center;
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
height: 500px;
text-align: center;
}

#footer {
width: 100%;
height: 80px;
background-color: black;
clear: both;
}

</style>
</head>
<body>
<!-- <div id="header">
		<div id="pr">
		</div>
	</div> -->
	<div id="main">
		<div id="top">
<div id="contents">
<h1>登録完了画面</h1>
<div class="success">
ユーザー登録が完了しました。
</div>
	</div>

 <s:submit value="ログアウト" class="submit_btn" onclick="goLogoutAction();"/>

			<div>
				<p><a href='<s:url action="GoHomeAction"/>'>ホームへ</a></p>

			</div>
			</div>
			</div>
<!-- <div id="footer">

</div>
	Copyright 2018 TabiCale all rights reserved.
</div> -->
</body>
</html>