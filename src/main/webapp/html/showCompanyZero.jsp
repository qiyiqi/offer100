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
		<title>查看企业详细信息</title>
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
					<form name="form" action="/offer100/admin/review" class="form-horizontal" method="post">
					    
					    <div class="form-group">
							<label class="col-sm-3 control-label">企业名称:</label>
							<div class="col-sm-6">
								<input name="cId"  class="required" readonly="readonly" value="${company.cId }"  />
							</div>
							<div class="col-sm-3"></div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label">企业名称:</label>
							<div class="col-sm-6">
								${ company.cName }
							</div>
							<div class="col-sm-3"></div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label">企业邮箱:</label>
							<div class="col-sm-6">
								${ company.cEmail }
							</div>
							<div class="col-sm-3"></div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label">企业电话:</label>
							<div class="col-sm-6">
								${ company.cPhone}
							</div>
							<div class="col-sm-3"></div>
						</div>
	
						<div class="form-group">
							<label class="col-sm-3 control-label">企业位置</label>
							<div class="col-sm-6">
								${ company.cLocation}
							</div>
							<div class="col-sm-3"></div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label">企业申请时间</label>
							<div class="col-sm-6">
								${ company.cTime}
							</div>
							<div class="col-sm-3"></div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label">企业描述</label>
							<div class="col-sm-6">
								${ company.cDescription}
							</div>
							<div class="col-sm-3"></div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label">企业类型</label>
							<div class="col-sm-6">
								${ company.cType}
							</div>
							<div class="col-sm-3"></div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label">审核状态</label>
							<div class="col-sm-6">
								${ company.cFlag}
							</div>
							<div class="col-sm-3"></div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label">审核状态</label>
							<div class="col-sm-6">
								<select  name="cFlag" class="form-control validate-selection" value="${company.cFlag } title="审核">
                					<option>选择一个审核结果（1代表通过，2代表不通过）</option>
                    				<option>1</option>
                    				<option>2</option>
                				</select>
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