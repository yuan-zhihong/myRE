<%@page import="beans.Book"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.BookDao"%>
<%@ page contentType="text/html; charset=gb2312"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
	<body>
		<div>${msg }<br></div>
		<table style="border: 1px solid black;">
			<caption>ͼ���б�</caption>
			<thead>
				<tr>
					<td>ͼ������</td>
					<td>ͼ��۸�</td>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${bookList }" var="book" >
					<tr>
						<td>${book.bookname }</td>
						<td>${book.bookprice }</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</body>
</html>
