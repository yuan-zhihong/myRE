<%@ page language="java" import="java.util.*" contentType="text/html; charset=gb2312"%>
<html>
	<body>
       
         ��ӭ��¼
  <script type="text/javascript">
   
      function validate(){
           if(loginForm.account.value!=""&&loginForm.password.value!=""&&loginForm.account.value==loginForm.password.value){
               loginForm.submit();
               return;
           }else{
              alert("��¼ʧ��");
              return;
           }
          }
          
  </script>  
  <form name="loginForm" action="ans03_1.jsp" method="post">
    �������˺ţ�<input name="account" type="text"><br>
    ���������룺<input name="password" type="password"><br> 
 <input type="button" value="��¼" onClick="validate()">
  </form>
</body>
</html>
