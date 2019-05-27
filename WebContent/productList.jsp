<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>商品一覧</title>
</head>
<body>
	<jsp:include page="header.jsp" />
	<h1>商品一覧画面</h1>
	<s:if test="productInfoDtoList==null">
	検索結果がありません。
	</s:if>
	<s:else>
		<s:iterator value="#session.productInfoDtoList">
			<ul>
				<li>
					<a href='<s:url action="ProductDetailsAction"><s:param name="productId" value="%{productId}"/></s:url>'>
					<img src='<s:property value="imageFilePath"/>/<s:property value="imageFileName"/>' class="item-image-box-200"/></a><br>
					<s:property value="productName"/><br>
					<s:property value="productNameKana"/><br>
					<s:property value="price"/>円<br>
				</li>
			</ul>
		</s:iterator>
		<s:iterator begin="1" end="#session.totalPageSize" status="pageNo">
			<s:if test="#session.currentPageNo == #pageNo.count">
				<s:property value="%{#pageNo.count}"/>
			</s:if>
			<s:else>
				<a href="<s:url action='SearchItemAction'><s:param name='pageNo' value='%{#pageNo.count}'/><s:param name='categoryId' value='%{categoryId}'/></s:url>"><s:property value="%{#pageNo.count}"/></a>
			</s:else>
		</s:iterator>
	</s:else>
<s:include value="footer.jsp"/>
</body>
</html>