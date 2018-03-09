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
						企业资料
					</h1>
					<form name="form" action="/offer100/company/update" class="form-horizontal" method="post">
						<div class="form-group">
							<label class="col-sm-3 control-label">企业名称</label>
							<div class="col-sm-6">
								<input type="text" class="form-control required" name="cName" required="required" value="${company.cName }"/>
							</div>
							<div class="col-sm-3"></div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label">密码</label>
							<div class="col-sm-6">
								<input type="text" class="form-control required" name="cPassword" required="required" value="${company.cPassword }"/>
							</div>
							<div class="col-sm-3"></div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label">电话</label>
							<div class="col-sm-6">
								<input type="text" class="form-control required" name="cPhone" value="${company.cPhone }"/>
							</div>
							<div class="col-sm-3"></div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label">企业所在地</label>
							<div class="col-sm-6">
								<input type="text" class="form-control" name="cLocation" value="${company.cLocation }"/>
							</div>
							<div class="col-sm-3"></div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label">企业描述</label>
							<div class="col-sm-6">
								<input type="text" class="form-control" name="cDescription" value="${company.cDescription }"/>
							</div>
							<div class="col-sm-3"></div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label">企业类型</label>
							<div class="col-sm-6">
								<select  name="cType" class="form-control validate-selection" value="${company.cType } title="选择企业类型">
                					<option>选择一个企业类别</option>
                    				<option>制造</option>
                    				<option>建筑</option>
                    				<option>金融</option>
                    				<option>房地产</option>
                    				<option>IT</option>
                    				<option>教育</option>
                    				<option>娱乐</option>
                    				<option>餐饮</option>
                				</select>
							</div>
							<div class="col-sm-3"></div>
						</div>
						<div class="form-group">
							<div class="col-sm-6 col-sm-offset-3 message">
								<b class="invisible">密码长度至少10位， 最大15位</b>
							</div>
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
