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
<title>BuyItem画面</title>

<style type="text/css">
/* ========TAG LAYOUT======== */
body {
	margin: 0;
	padding: 0;
	line-height: 1.6;
	letter-spacing: 1px;
	font-family: Verdana, Helvetica, sans-serif;
	font-size: 12px;
	color: #333;
	background: #fff;
}

table {
	text-align: center;
	margin: 0 auto;
}

/* ========ID LAYOUT======== */
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
<%-- <jsp:include page="header.jsp" /> --%>
<div id="contents">
<h1>商品一覧画面</h1>
<s:if test="productInfoDtoList==null">
<div class="info">
検索結果がありません。
</div>
</s:if>
<s:else>
<div id="product-list">
<s:iterator value="#session.productInfoDtoList">
<div class="product-list-box">
<ul>
	<li>
	<a href='<s:url action="ProductDetailsAction">
	<s:param name="productId" value="%{productId}"/>
	</s:url>'><img src='<s:property value="imageFilePath"/>/<s:property value="imageFileName"/>' class="item-image-box-200"/></a><br>
	<s:property value="productName"/><br>
	<s:property value="productNameKana"/><br>
	<s:property value="price"/>円<br>
  </li>
</ul>
</div>
</s:iterator>
</div>
<div class="pager">
<s:iterator begin="1" end="#session.totalPageSize" status="pageNo">
	<s:if test="#session.currentPageNo == #pageNo.count">
		<s:property value="%{#pageNo.count}"/>
	</s:if>
	<s:else>
		<a href="<s:url action='SearchItemAction'><s:param name='pageNo' value='%{#pageNo.count}'/><s:param name='categoryId' value='%{categoryId}'/></s:url> ">	<s:property value="%{#pageNo.count}"/></a>
	</s:else>
</s:iterator>
</div>
</s:else>
</div>
<%-- <s:include value="footer.jsp"/> --%>
</body>
</html>