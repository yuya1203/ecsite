<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./css/style.css">
<title>管理者画面</title>
<script>
function alertFunction(){

	alert("本当に削除しますか？");
}


</script>


</head>
<body>
<jsp:include page="adminHeader.jsp"/>

<div id="contents">
<h1>管理者画面</h1>

<s:if test="#session.productInfoDtoList.size()>0">

<table class="horizontal-list-table">
<thead>
<tr>
<th><s:label value="削除"/></th>
<th><s:label value="商品名"/></th>
<th><s:label value="ふりがな"/></th>
<th><s:label value="商品画像"/></th>
<th><s:label value="値段"/></th>
<th><s:label value="発売会社名"/></th>
<th><s:label value="発売年月日"/></th>
</tr>
</thead>
<tbody>
<s:iterator value="#session.productInfoDtoList">
<tr>
<td><s:form action="DeleteProductAction">
<s:hidden name="productId" value="%{productId}"/>
<input type ="submit" class="submit_btn" value="削除" onclick="alertFunction()"  />
</s:form></td>
<td><s:property value="productName"/></td>
<td><s:property value="productNameKana"/></td>
<td><img src='<s:property value="imageFilePath"/>/<s:property value="imageFileName"/>'width="50px" height="50px"/></td>
<td><s:property value="price"/>円</td>
<td><s:property value="releaseCompany"/></td>
<td><s:property value="releaseDate"/></td>
</tr>

</s:iterator>
</tbody>

</table>

</s:if>

<div class="submit_btn_box">
<s:form action="AddItemAction">
<input type="submit" class="submit_btn" value="商品追加"/>
</s:form>
</div>
</div>

<s:else>
<div class="info">
商品情報はありません。
</div>
</s:else>

<div id="footer">
<s:include value="footer.jsp"/>
</div>
</body>
</html>