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
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>注册</title>
		<link rel="stylesheet" href="../../css/bootstrap.3.3.7.min.css" />
		<script type="text/javascript" src="../../js/jquery.2.1.1.min.js"></script>
		<script type="text/javascript" src="../../js/bootstrap.3.3.7.min.js"></script>
		<link rel="stylesheet" href="../../css/reglog/reg_guide.css" />
		<script type="text/javascript" src="../../js/reglog/register_guide.js"></script>
	</head>

	<body>
		<div class="guide-box text-center">
			<h1 class="big-title"><a href="../../index.jsp">offer100</a></h1>
			<h3 class="big-title-desc">更多的机会!</h3>
			<div class="container">
				<div class="row">
					<div class="col-md-6 col-sm-12 col-xs-12 bundle">
						<div class="bundle-wrapper">
							<div class="top">
								<h2>个人注册</h2>
								<hr />
							</div>
							<div class="main">
								<p>将可以投递简历</p>
								<p>查看企业发布的职位</p>
								<p>了解最新市场资讯</p>
							</div>
							<div class="reg">
								<a href="personal_register.jsp" class="btn btn-lg btn-default">注册</a>
							</div>
						</div>
					</div>
					<div class="col-md-6 col-sm-12 col-xs-12 bundle">
						<div class="bundle-wrapper">
							<div class="top">
								<h2>企业注册</h2>
								<hr />
							</div>
							<div class="main">
								<p>将可以投递简历</p>
								<p>查看企业发布的职位</p>
								<p>了解最新市场资讯</p>
							</div>
							<div class="reg">
								<a href="com_register.jsp" class="btn btn-lg btn-default">注册</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<footer class="container text-center">
			<hr />
			更多详情，
			<a class="text" href="../../index.jsp">
				访问offer100.com
			</a>
		</footer>
	</body>

</html>