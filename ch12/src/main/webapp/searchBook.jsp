<%@ page contentType="text/html; charset=gb2312"%>
<html>
	<body>
		<script type="text/javascript">
			function showBook(){
	  			var bookname = document.inputForm.bookname.value;
		  		var xmlHttp=null;
		  		if(window. XMLHttpRequest){ //Mozilla�������
	   			xmlHttp=new XMLHttpRequest();
				}
				else if(window.ActiveXObject){ //IE�����
	    			try{
						xmlHttp=new ActiveXObject("Msxml2.XMLHTTP");
					}catch(e){
	        			try{
	        				xmlHttp=new ActiveXObject("Microsoft.XMLHTTP");
	        			}catch(e){
	        				window.alert("���������֧��AJAX");
	                    }
					}
				}
		  		var url = "servlet/ShowBookServlet?bookname="+bookname;
				xmlHttp.open("POST", url, true);				
				xmlHttp.onreadystatechange=function() {
					if (xmlHttp.readyState==4) {
						resultDiv.innerHTML = xmlHttp.responseText;
					}
					else{
						resultDiv.innerHTML += "������ӣ����Ժ�......";
					}				
				};
				xmlHttp.send();	
			}
		</script>
		
			<form name="inputForm">
				������ͼ����Ϣ��ģ��ͼ�����ƣ�
				<input type="text" name="bookname">
				<input type="button" onclick="showBook()" value="��ѯ">			
			</form>
		<div id="resultDiv">
		</div>
	</body>
</html>
