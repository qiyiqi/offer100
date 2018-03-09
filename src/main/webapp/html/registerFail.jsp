<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<META http-equiv="Content-Type"     content="text/html; charset=utf-8">
<!DOCTYPE html>
<html>
  <head>
  <% String path = request.getRequestURI();
		String basePath = request.getScheme() + "://"+ request.getServerName() + ":" + request.getServerPort()+ path;
	%>
	<base 
	href="<%=basePath%>">
	<meta charset="UTF-8">
		<title>注册提示</title>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="../../css/bootstrap.3.3.7.min.css">
		<script src="../../js/jquery.2.1.1.min.js"></script>
		<script src="../../js/bootstrap.3.3.7.min.js"></script>
		<link rel="stylesheet" href="../../css/reglog/login.css" />
  </head>
  <body>
    	注册失败
  </body>
</html>