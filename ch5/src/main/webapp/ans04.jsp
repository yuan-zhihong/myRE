<%@ page language="java" import="java.util.*" contentType="text/html; charset=gb2312"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<script type="text/javascript">
function usu(){
var yf1=document.getElementById("yf").value;
var sf1=document.getElementById("sf").value;
var x=sf1-yf1;
var num100=parseInt(x/100);
x=x%100;
var num50=parseInt(x/50);
x=x%50;
var num20=parseInt(x/20);
x=x%20;
var num10=parseInt(x/10);
x=x%10;
var num5=parseInt(x/5);
x=x%5;
var num1=x;
var str="";
if(num100>0){
str=str+"100Ԫ��"+num100+"��.   ";
}
if(num50>0){
str=str+"50Ԫ��"+num50+"��.   ";
}
if(num20>0){
str=str+"20Ԫ��"+num20+"��.   ";
}
if(num10>0){
str=str+"10Ԫ��"+num10+"��.   ";
}
if(num5>0){
str=str+"5Ԫ��"+num5+"��.   ";
}
if(num1>0){
str=str+"1Ԫ��"+num1+"��.   ";
}
alert(str);
document.getElementById("jg").html=str;
}</script>
</head>
<body>
Ӧ����<input type="text" id="yf"/>
ʵ����<input type="text" id="sf"/>
<input type="button" value="ȷ��" onclick="usu()"/>
���㣺<div id="jg"></div>
</body>
</html>