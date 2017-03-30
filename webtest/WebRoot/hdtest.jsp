<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'hdtest.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
   <script type="text/javascript">
   //  回调函数测试
   //  函数作为另一个函数的参数传递给另一个函数
        function hd(v1,v2){
	      alert('jjj');
	      return v1+v2;
        }
        function  fun(v1,v2,callback){
        	  alert(callback(v1,v2));
        }
   
     fun(1,2,hd);
   
   
   </script>
  </head>
  
  <body>
    This is my JSP page. <br>
  </body>
</html>
