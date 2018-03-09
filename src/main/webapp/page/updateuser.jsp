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
		<title>注册</title>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="../css/bootstrap.3.3.7.min.css">
		<script src="../js/jquery.2.1.1.min.js"></script>
		<script src="../js/bootstrap.3.3.7.min.js"></script>
		<link rel="stylesheet" href="../css/reglog/register.css" />
	</head>
	<body>
		<div class="main-view col-xs-12">
			<div id="login-box" class="row">
				<div class="box col-sm-6 col-sm-offset-3">
					<h1 class="row title">
						用户资料
					</h1>
					<form name="form" action="/offer100/user/update" class="form-horizontal" method="post">
						<div class="form-group">
							<label class="col-sm-3 control-label">用户名</label>
							<div class="col-sm-6">
								<input type="text" class="form-control required" name="uName" required="required" value="${user.uName }"/>
							</div>
							<div class="col-sm-3"></div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label">密码</label>
							<div class="col-sm-6">
								<input type="password" class="form-control required" name="uPassword" required="required" value="${user.uPassword }"/>
							</div>
							<div class="col-sm-3"></div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label">电话</label>
							<div class="col-sm-6">
								<input type="text" class="form-control required" name="uPhone" value="${user.uPhone }"/>
							</div>
							<div class="col-sm-3"></div>
						</div>
						
						<div class="form-group buttons">
							<div class="col-sm-6 col-sm-offset-3">
								<button type="submit" class="btn btn-primary submit" value="Submit">
									提交
								</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</body>
</html>
