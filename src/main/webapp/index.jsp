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
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="css/bootstrap.3.3.7.min.css">
		<script src="js/jquery.2.1.1.min.js"></script>
		<script src="js/bootstrap.3.3.7.min.js"></script>
		<link rel="stylesheet" href="css/index.css" />
		<title>offer100</title>
	</head>
	<body>
		<nav class="navbar" role="navigation">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-scaleway-collapse">						
						<span class="icon-bar"></span> 
						<span class="icon-bar"></span> 
						<span class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="#">Offer100</a>
				</div>
				<div class="collapse navbar-collapse" id="navbar-scaleway-collapse">
					<ul class="nav navbar-nav">
						<li class="active">
							<a href="#">用户管理</a>
						</li>
						<li>
							<a href="#">企业管理</a>
						</li>
						<li>
							<a href="html/search.jsp">职位搜索</a>
						</li>
						<li>
							<a href="#">简历管理</a>
						</li>
						<li>
							<a href="html/offer_area.jsp">招聘专区</a>
						</li>
						<li>
							<a href="#">职场资讯</a>
						</li>
						<li>
							<a href="page/admMain.jsp">系统管理</a>
						</li>
					</ul>
					<ul class="nav navbar-nav navbar-right">
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">
								登录
								<span class="caret"></span>
							</a>
							<div class="dropdown-menu">
								<div class="row dropdown-items">																											
										<p class="login-title">
											<a href="html/reglog/personal_login.jsp">个人登录</a>
										</p>
										<p class="login-title">
											<a href="html/reglog/com_login.jsp">企业登录</a>
										</p>		
										<p class="login-title">
											<a href="html/reglog/admin_login.jsp">管理员登录</a>
										</p>				
								</div>
							</div>
						</li>
						<li>
							<a href="html/reglog/register_guide.jsp" class="btn btn-default btn-signup" target="_blank">
								注册
							</a>
						</li>
					</ul>
				</div>
			</div>
		</nav>
		
	</body>

</html>