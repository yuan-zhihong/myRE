<%@ page language="java" import="java.util.*" contentType="text/html; charset=gb2312"%>
<html>
	<body>
   ���ﳵ�����ǣ�<hr>
     <%
        ArrayList books=(ArrayList)session.getAttribute("books");
       for(int i=0;i<books.size();i++){
         String book =(String)books.get(i);
         out.print(book);
     %>
       <a href="ans01_4.jsp?tt=<%=book %>">ɾ��</a><br>
    <%
     }
     %><hr>
     <form action="ans01_5.jsp">
       <input type="submit" value="��չ��ﳵ">
     </form>
    <form action="ans01.jsp">
    <input type="submit"  value="�����ͼ����">
    </form>
   <form action="ans01_1.jsp">
    <input type="submit"  value="��ʷͼ����">
    </form>
</body>
</html>
