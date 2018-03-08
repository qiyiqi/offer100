<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<META http-equiv="Content-Type"     content="text/html; charset=utf-8">
<!DOCTYPE html>
<html lang="en">
<head>
	<% String path = request.getRequestURI();
		String basePath = request.getScheme() + "://"+ request.getServerName() + ":" + request.getServerPort()+ path;
	%>
	<base 
	href="<%=basePath%>">
  <meta charset="UTF-8">
  <title>Summernote</title>
  <link href="../../css/bootstrap.3.3.7.min.css" rel="stylesheet">
  <script src="../../js/jquery.2.1.1.min.js"></script> 
  <script src="../../js/bootstrap.3.3.7.min.js"></script> 
  <link href="../../css/system/management.css" rel="stylesheet">
  <script src="../../js/system/management.js"></script>
</head>
<body>
  <div id="summernote"></div>
  <script>
    $(document).ready(function() {
        $('#summernote').summernote();
    });
  </script>
</body>
</html>