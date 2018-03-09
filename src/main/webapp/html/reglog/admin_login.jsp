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
		<title>登录</title>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="../../css/bootstrap.3.3.7.min.css">
		<script src="../../js/jquery.2.1.1.min.js"></script>
		<script src="../../js/bootstrap.3.3.7.min.js"></script>
		<link rel="stylesheet" href="../../css/reglog/login.css" />
	</head>

	<body>
		<div class="main-view col-xs-12">
			<div id="login-box" class="row">
				<div class="box col-sm-6 col-sm-offset-3">
					<h1 class="row title">
						offer100
					</h1>
					<h4 class="row title">
						管理员登录
					</h4>
					<form name="form" class="form-horizontal" action="/offer100/admin/login" method="post">
						<div class="form-group">
							<label class="col-sm-3 control-label">邮箱</label>
							<div class="col-sm-6">
								<input type="text" class="form-control" name="aEmail" required="required"/>
							</div>
							<div class="col-sm-3"></div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label">密码</label>
							<div class="col-sm-6">
								<input type="password" class="form-control" lay-verify="password" name="aPassword" required="required"/>
							</div>
							<label class="col-sm-3 forgot">
								<a id="forgetPasswd" class="text" href="#">忘记密码?</a>
							</label>
						</div>
						<div class="form-group">
							<div class="col-sm-6 col-sm-offset-3 message">
								<b class="invisible">longjinglingxihuanheguoxianyishengyishi</b>
							</div>
						</div>
						<div class="form-group buttons" align="center">
							<div class="col-sm-6 col-sm-offset-3">
								<button type="submit" class="btn btn-primary submit">
									登录
								</button>
							</div>
						</div>
					</form>
					<div class="row">
						<div class="col-md-12 center">
							<h4 class="text">了解更多，访问<a href="../../index.jsp">offer100.com</a></h4>
						</div>
					</div>
				</div>
			</div>
		</div>
	</body>

</html>