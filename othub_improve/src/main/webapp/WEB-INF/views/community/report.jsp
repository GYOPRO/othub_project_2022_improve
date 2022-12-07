<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title></title>

</head>
<body>
신고하기
<br>
작성자 : <%=request.getAttribute("writer") %><br>
내  용 : <%=request.getAttribute("title") %>
<br>
<table>
<th class="actice" style="text-align:left">사유선택</th>
<form method="get" action="reportss">
<tr><td><label><input type="radio" name="report" value="type1"> 스팸홍보/도배글입니다.</label></td></tr>
<tr><td><label><input type="radio" name="report" value="type2"> 음란물입니다.</label></td></tr>
<tr><td><label><input type="radio" name="report" value="type3"> 불법정보를 포함하고 있습니다.</label></td></tr>
<tr><td><label><input type="radio" name="report" value="type4"> 청소년에게 유해한 내용입니다.</label></td></tr>
<tr><td><label><input type="radio" name="report" value="type5"> 개인정보 노출 게시물입니다.</label></td></tr>
<tr><td><label><input type="radio" name="report" value="type6"> 불쾌한 표현이있습니다.</label></td></tr>
<tr><td><input id="reportbtn" type="submit" value="신고하기" onclick="window.close()"></td></tr>
<tr><td><input id="closebtn" type="button" value="창닫기" onclick="window.close()"></td></tr>

</form>
</table>
</body>
<script type="text/javascript">

$("#reportbtn").on("click",function(e){
	confirm("삭제하시겠습니까?");

})
</script>
</html>
