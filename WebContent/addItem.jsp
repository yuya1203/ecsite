<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<link rel="stylesheet" href="./css/style.css">
<title>商品追加</title>

<script>
showImage(false);

$("#loadFile").onchange = function(evt){
	showImage(false);
	var files = evt.target.files;
	if(files.length == 0)
		return;
	var file = file[0];
	if(!file.type.match(/image/)){
		alert('画像ファイルを選んでください');
		return;
	}
	var reader = new FileReader();
	reader.onload = function(evt){
		$("#thumb").src = reader.result;
		showImage(true);
	}
	reader.readAsDateURL(file);
}

function showImage(b){
	var val = b ? "block" : "none" ;
	$("#up_btn").style.display = val;
	$("#thumb").style.display = val;
}
function $(id){
	return document.querySelector(id);
}

</script>
</head>
<body>
	<jsp:include page="adminHeader.jsp"/>

	<div class="admin-main">
		<div class="top">
			<h1>商品追加画面</h1>
		</div>
		<div class="contents">

		<s:if test="!session.productIdErrorMessageList.isEmpty()">
			<div class="error">
			<div class="error-message">
				<s:iterator value="#session.productIdErrorMessageList"><s:property /><br></s:iterator>
			</div>
			</div>
		</s:if>
		<s:if test="!session.productNameErrorMessageList.isEmpty()">
			<div class="error">
			<div class="error-message">
				<s:iterator value="#session.productNameErrorMessageList"><s:property /><br></s:iterator>
			</div>
			</div>
		</s:if>
		<s:if test="!session.productNameKanaErrorMessageList.isEmpty()">
			<div class="error">
			<div class="error-message">
				<s:iterator value="#session.productNameKanaErrorMessageList"><s:property /><br></s:iterator>
			</div>
			</div>
		</s:if>
		<s:if test="!session.productDescriptionErrorMessageList.isEmpty()">
			<div class="error">
			<div class="error-message">
				<s:iterator value="#session.productDescriptionErrorMessageList"><s:property /><br></s:iterator>
			</div>
			</div>
		</s:if>
		<s:if test="!session.categoryIdErrorMessageList.isEmpty()">
			<div class="error">
			<div class="error-message">
				<s:iterator value="#session.categoryIdErrorMessageList"><s:property /><br></s:iterator>
			</div>
			</div>
		</s:if>
		<s:if test="!session.priceErrorMessageList.isEmpty()">
			<div class="error">
			<div class="error-message">
				<s:iterator value="#session.priceErrorMessageList"><s:property /><br></s:iterator>
			</div>
			</div>
		</s:if>
		<s:if test="!session.releaseDateErrorMessageList.isEmpty()">
			<div class="error">
			<div class="error-message">
				<s:iterator value="#session.releaseDateErrorMessageList"><s:property /><br></s:iterator>
			</div>
			</div>
		</s:if>
		<s:if test="!session.releaseCompanyErrorMessageList.isEmpty()">
			<div class="error">
			<div class="error-message">
				<s:iterator value="#session.releaseCompanyErrorMessageList"><s:property /><br></s:iterator>
			</div>
			</div>
		</s:if>
		<s:if test="!session.imageFilePathErrorMessageList.isEmpty()">
			<div class="error">
			<div class="error-message">
				<s:iterator value="#session.imageFilePathErrorMessageList"><s:property /><br></s:iterator>
			</div>
			</div>
		</s:if>
		<s:if test="!session.identicalErrorMessageList.isEmpty()">
			<div class="error">
			<div class="error-message">
				<s:iterator value="#session.identicalErrorMessageList"><s:property /><br></s:iterator>
			</div>
			</div>
		</s:if>

			<s:form method="post" action="AddItemConfirmAction" enctype="multipart/form-data">
				<table class="addList">
					<tr>
						<th>商品名</th>
						<td><s:textfield name="productName" value="%{#session.productName}"/></td>
					</tr>
					<tr>
						<th>商品名カナ</th>
						<td><s:textfield name="productNameKana" value="%{#session.productNameKana}"/></td>
					</tr>
					<tr>
						<th>商品詳細</th>
						<td><s:textfield name="productDescription" value="%{#session.productDescription}"/></td>
					</tr>
					<tr>
						<th>カテゴリID</th>
						<td><s:select name="categoryId" list="#session.mCategoryDtoList" listValue="categoryName"
						listKey="categoryId" class="cs-div" id="categoryId"/></td>
					</tr>
					<tr>
						<th>価格</th>
						<td><s:textfield name="price" value='%{#session.price}'/></td>
					</tr>
					<tr>
						<th>発売年月日</th>
						<td><s:date id="dateId" name="releaseDate"  format="yyyy/MM/dd" nice="true"/></td>
					</tr>
					<tr>
						<th>発売会社</th>
						<td><s:textfield name="releaseCompany" value="%{#session.releaseCompany}"/></td>
					</tr>
					<tr>
						<th>商品画像</th>
						<td class="image"><s:file name="userImage" accept='image/jpg, image/jpeg' /></td>
					</tr>
				</table>
					<s:submit value="商品追加"/>
			</s:form>
		</div>
	</div>
	<div class="footer">
		<s:include value="footer.jsp"/>
	</div>

</body>
</html>