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
		<title>搜索</title>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="../css/bootstrap.3.3.7.min.css">
		<script src="../js/jquery.2.1.1.min.js"></script>
		<script src="../js/bootstrap.3.3.7.min.js"></script>
		<link rel="stylesheet" href="../css/search.css" />
	</head>

	<body>
		<div class="search-view">
			<div class="container">
				<div class="row">
					<h1 class="search-text title"><a href="../index.jsp">offer100</a></h1>
				</div>
				<div class="row">
					<div class="col-sm-12 search-form">
						<form class="form-inline">
							<div class="form-group col-sm-3">
								<input class="form-control" placeholder="公司(可选)">
							</div>
							<div class="form-group col-sm-3">
								<input class="form-control" placeholder="地区(可选)">
							</div>
							<div class="form-group col-sm-3">
								<input class="form-control" placeholder="职位关键字(可选)">
							</div>
							<div class="form-group col-sm-3">
								<button class="btn btn-primary" type="submit" id="submit" name="submit">
								搜索
							</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</body>

</html>