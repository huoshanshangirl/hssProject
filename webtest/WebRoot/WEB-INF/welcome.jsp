<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'welcome.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
   ggggggg
  </body>
  <script>
  var xm=xm;
  aaa(xm);
  function  aaa(argname){
	  var url =location.href;
	  alert(url);
	  var arrStr = url.substring(url.indexOf("?")+1).split("&");
	     alert(arrStr);
    for(var i =0;i<arrStr.length;i++)
    {
        var loc    = arrStr[i].indexOf(argname+"=");
        if(loc!=-1)
        {
            return arrStr[i].replace(argname+"=","").replace("?","");
            break;
        }
        
    }
    return "";
	  
	  
  }
  
  
  
  
  </script>
</html>
