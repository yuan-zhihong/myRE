<%@ page language="java" contentType="text/html; charset=gb2312"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

<body>
��ӭ��¼
<script type="text/javascript">

    function validate(){
        if(loginForm.account.value!=""&&loginForm.password.value!=""&&loginForm.account.value==loginForm.password.value){
            alert("��¼�ɹ�");
            loginForm.submit();
            return;
        }else{
            alert("��¼����");
            return;
        }
    }

</script>
<form name="loginForm" action="ans03_1.jsp" >
    �������˺ţ�<input name="account" type="text"><br>
    ���������룺<input name="password" type="password"><br>
    <input type="button" value="��¼" onClick="validate()">
</form>

</body>
</html>
