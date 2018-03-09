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
		<title>修改职位信息</title>
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
						职位信息
					</h1>
					<form name="form" action="/offer100/company/updatejob" class="form-horizontal" method="post">
						<div class="form-group">
							<label class="col-sm-3 control-label">职位名称</label>
							<div class="col-sm-6">
								<input type="text" class="form-control required" name="jName" required="required" value="${job.jName }"/>
							</div>
							<div class="col-sm-3"></div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label">工作所在地</label>
							<div class="col-sm-6">
								<input type="text" class="form-control required" name="jLocation" required="required" value="${job.jLocation }"/>
							</div>
							<div class="col-sm-3"></div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label">工资</label>
							<div class="col-sm-6">
								<input type="text" class="form-control required" name="jSalary" required="required" value="${job.jSalary }"/>
							</div>
							<div class="col-sm-3"></div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label">工作类型</label>
							<div class="col-sm-6">
								<select  name="jType" class="form-control validate-selection"  title="选择工作类型" >
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
							<label class="col-sm-3 control-label">职位描述</label>
							<div class="col-sm-6">
								<textarea class="form-control" name="jDescribe" required="required" >${job.jDescribe }</textarea>
							</div>
							<div class="col-sm-3"></div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label">任职要求</label>
							<div class="col-sm-6">
								<textarea class="form-control" name="jRequire" required="required" >${job.jRequire }</textarea>
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
