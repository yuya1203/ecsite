


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<link rel="stylesheet" href="./css/style.css">

<title>商品追加確認画面</title>
</head>
<body>
	<jsp:include page="adminHeader.jsp"/>
	<div class="contents">
		<h1>商品追加確認画面</h1>
		<s:form action="AddItemCompleteAction">
			<table class="addList-confirm">
				<tr>
					<th>商品ID</th>
					<td><s:property value="%{#session.productId}"/></td>
				</tr>
				<tr>
					<th>商品名</th>
					<td><s:property value="productName"/></td>
				</tr>
				<tr>
					<th>商品名カナ</th>
					<td><s:property value="productNameKana"/></td>
				</tr>
				<tr>
					<th>商品詳細</th>
					<td><s:property value="productDescription"/></td>
				</tr>
				<tr>
					<th>カテゴリID</th>
					<td><s:property value="categoryId"/></td>
				</tr>
				<tr>
					<th>価格</th>
					<td><s:property value="price"/></td>
				</tr>
				<tr>
					<th>発売年月日</th>
					<td><s:property value="releaseDate"/></td>
				</tr>
				<tr>
					<th>発売会社</th>
					<td><s:property value="releaseCompany"/></td>
				</tr>
				<tr>
					<th>画像</th>
					<td><s:property value="userImage"/><img src='<s:property value="%{#session.imageFilePath}"/>/<s:property value="%{#session.imageFileName}"/>'></td>
				</tr>
			</table>

		<s:hidden name="productId" value="%{#session.productId}"/>
		<s:hidden name="productName" value="%{#session.productName}"/>
		<s:hidden name="productNameKana" value="%{#session.productNameKana}"/>
		<s:hidden name="productDescription" value="%{#session.productDescription}"/>
		<s:hidden name="categoryId" value="%{#session.categoryId}"/>
		<s:hidden name="price" value="%{#session.price}"/>
		<s:hidden name="imageFilePath" value="%{#session.imageFilePath}"/>
		<s:hidden name="imageFileName" value="%{#session.imageFileName}"/>
		<s:hidden name="releaseCompany" value="%{#session.releaseCompany}"/>
		<s:hidden name="releaseDate" value="%{#session.releaseDate}"/>

			<s:submit value="追加完了"/>


		</s:form>
	</div>
	<div class="footer">
		<s:include value="footer.jsp"/>
	</div>

</body>
</html>