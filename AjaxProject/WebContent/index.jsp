<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript">
	function  register(){
		var mobile = document.getElementById("mobile").value;
		//通过ajax异步方式 请求服务端
		xmlHttpRequest = new XMLHttpRequest();
		
		//设置xmlHttpRequest对象的回调函数
		xmlHttpRequest.onreadystatechange = callBack  ;
		
		xmlHttpRequest.open("post","MobileServlet",true);
		//设置post方式的 头信息
		xmlHttpRequest.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
		xmlHttpRequest.send("mobile="+mobile);//k=v    
	}
	function callBack(){
		
		if(xmlHttpRequest.readyState ==4 && xmlHttpRequest.status   ==200){
			
		var data = xmlHttpRequest.responseText ;//服务端返回值为string格式
		alert(data.length +"==="+data)
		if(data == "true"){
			alert("请号码已存在,请更换！");
		}else{
			alert("注册成功！");
		}
		}
	}
	
</script>
<title>Insert title here</title>
</head>
<body>
	手机：<input id="mobile"><br/>
	<input type="button" value="注册" onclick="register()">
	
</body>
</html>