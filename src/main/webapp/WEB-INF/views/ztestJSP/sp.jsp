<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>San Pham List</h1>
    <table border="1">
        <tr>
            <th>ID</th>
            <th>TenSP</th>
            <th>Gia</th>
            <th>Mota</th>
            <!-- Add more table headers as needed -->
        </tr>
        <c:forEach items="${spHome}" var="sanPham">
            <tr>
                <td>${sanPham.idSP}</td>
                <td>${sanPham.tenSP}</td>
                <td>${sanPham.gia}</td>
                <td>${sanPham.moTa}</td>
                <!-- Add more table data columns as needed -->
            </tr>
        </c:forEach>
    </table>

</body>
</html>

