<%@ page language="java" contentType="text/html; charset=gb2312"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  
  <body>
       ��ӭ��¼
  <script type="text/javascript">
      function validate(){
           if(loginForm.account.value==loginForm.password.value&&document.getElementById("register").checked){
               alert("��¼�ɹ�!��ӭ��ע���Ϊ��Ա");
               return;
           }else if(loginForm.account.value==loginForm.password.value){
              alert("��¼�ɹ�");
              return;
           }else{
              alert("��¼ʧ��");
              return;
           }
           loginForm.submit();
      }
  </script>

  <form name="loginForm">
    �������˺ţ�<input name="account" type="text"><br>
    ���������룺<input name="password" type="password"><br>
  <input id="register" type="checkbox">�Ƿ�ע��Ϊ��Ա<br>
  <input type="button" value="��¼" onClick="validate()">
  </form>
  </body>
</html>