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
		<title>企业管理</title>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="../css/bootstrap.3.3.7.min.css">
		<script src="../js/jquery.2.1.1.min.js"></script>
		<script src="../js/bootstrap.3.3.7.min.js"></script>
		<link rel="stylesheet" href="../css/offer_area.css" />
	</head>

	<body>
		<div class="container">
			<div class="row offer_title text-center">
				<h1><a href="../index.jsp" class="title">offer100</a></h1>
				<h3 class="title_desc">企业管理</h3>
			</div>
		</div>
		<div class="offer_area">
			<div class="container">
				<div class="row">
					<div class="col-md-4 offer_desc">
						<img src="../img/pos.svg">
						<h1 class="scw-title">
							offer企业管理
						</h1>
						<h2 class="scw-title-desc">
							修改企业资料, 发布招聘岗位, 查看已接受简历
						</h2>
					</div>
				</div>
			</div>
		</div>
	</body>

</html>