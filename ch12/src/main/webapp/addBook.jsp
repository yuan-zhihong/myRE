<%@ page contentType="text/html; charset=gb2312"%>
<html>
	<body>
		 <script type="text/javascript">
		 	function addBook(){
				var id = document.addForm.id.value;
	  			var bookname = document.addForm.bookname.value;
	  			var bookprice = document.addForm.bookprice.value;  	
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
		  		var url = "servlet/AddBookServlet?id="+id+"&bookname="+bookname+"&bookprice="+bookprice;
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
		 
		<!-- ���ͼ�� -->
		<div>��ӭ����ͼ�����ϵͳ. <hr></div>
		<form name="addForm">
			<table>
				<tr>
					<td>�鱾��:</td>
					<td><input type="text" name="id"></td>
				</tr>
				<tr>
					<td>ͼ������:</td>
					<td><input type="text" name="bookname"></td>
				</tr>
				<tr>
					<td>ͼ��۸�:</td>
					<td><input type="text" name="bookprice"></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><input type="button" onclick="addBook()" value="�ύ"></td>
				</tr>
			</table>
		</form>
		<div id="resultDiv">
		</div>
	</body>
</html>
