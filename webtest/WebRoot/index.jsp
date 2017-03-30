<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script src="/scripts/boot.js" type="text/javascript"></script>
	<script type="text/javascript">
	   var sj=[
	{id: "base", text: "Base",
		children: [
			{id: "ajax", text: "Ajax"},
			{id: "json", text: "JSON"},
			{id: "date", text: "Date"},
			{id: "control", text: "Control"},
			{id: "messagebox", text: "MessageBox"},
			{id: "window", text: "Window"}
		]
	},
	{id: "forms", text: "Forms", 
		children: [
			{id: "button", text: "Button"},
			{id: "listbox", text: "ListBox"},
			{id: "checkboxlist", text: "CheckBoxList"},
			{id: "radiolist", text: "RadioList"},
			{id: "calendar", text: "Calendar"},
			{id: "textbox", text: "TextBox"},
			{id: "password", text: "Password"},
			{id: "textarea", text: "TextArea"},
			{id: "combobox", text: "ComboBox"},
			{id: "datepicker", text: "DatePicker"},
			{id: "spinner", text: "Spinner"},
			{id: "treeselect", text: "TreeSelect"},
			{id: "fileupload", text: "FileUpload"}
		]
	},
	{id: "lists", text: "Lists", 
		children: [
			{id: "datagrid", text: "DataGrid"},			
			{id: "tree", text: "Tree"},
			{id: "treegrid", text: "TreeGrid "}
		]
	},
	{id: "layouts", text: "Layouts", 
		children: [
			{id: "panel", text: "Panel"},
			{id: "splitter", text: "Splitter"},
			{id: "layout", text: "Layout "}
		]
	},
	{id: "navigations", text: "Navigations", 
		children: [
			{id: "pager", text: "Pager"},
			{id: "tabs", text: "Tabs"},
			{id: "outlookbar", text: "OutlookBar"},
			{id: "menu", text: "Menu"}
		]
	}
];
	
	
	
	</script>
	

  </head>
  <body>
      <h4>方式一：加载url（JSON）</h4>
    <ul id="tree1" class="mini-tree" data="sj" style="width:200px;padding:5px;" 
        showTreeIcon="true" textField="text" idField="id" parentField="pid" resultAsTree="false"          
        >
    </ul>
  
 
 
 </body>
</html>
