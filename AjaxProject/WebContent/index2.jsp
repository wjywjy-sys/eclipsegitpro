<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript" src="js/jquery-1.8.3.js"></script>
<script>
	function register(){
		var $mobile = $("#mobile").val();
		/*
		$.post(
				"MobileServlet",
				"mobile="+$mobile,
			function (result){
					if(result == "true"){
						alert("已存在！注册失败！");
					}else{
						alert("注册成功！");
					}
			},
			"text"
			);
		*/
		$("#tip").load(
				"MobileServlet",
				"mobile="+$mobile
		);
		
	}
	function  testJson()
	{
		$.getJSON(
				"JsonServlet",
				{"name":"zs",  "age":24},
			function (result){ 
					// result：  {"stu1":stu1, "stu2":stu2,"stu3":stu3 }
					//js需要通过eval()函数  将返回值 转为一个js能够识别的json对象
				var json = 	eval(result) ;
				$.each( json, function(i,element){
					alert( this.name +"---"+ this.age );
				} );
					
					
			}
		);
		
	}
</script>
<title>Insert title here</title>
</head>
<body>
	手机：<input id="mobile"><br/>
	<input type="button" value="注册"  onclick="register()">
	<span id="tip"></span>
	<input type="button" value="测试json" onclick="testJson()" />
</body>
</html>