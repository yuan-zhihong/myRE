<%@ page contentType="text/html; charset=gb2312"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
	<body>
		<table align="center" style="border: 1px solid black;">
			<caption>ѧ���б�</caption>
			<thead>
				<tr>
					<td>ѧ������</td>
					<td>ѧ���Ա�</td>
					<td>����</td>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${stuList }" var="student" >
					<tr>
						<td>${student.stuname }</td>
						<td>${student.stusex }</td>
						<td><a href="delete.action?stuno=${student.stuno }">ɾ��</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</body>
</html>