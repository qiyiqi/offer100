<!DOCTYPE html>
<html lang="en">

	<head>
	<% String path = request.getRequestURI();
		String basePath = request.getScheme() + "://"+ request.getServerName() + ":" + request.getServerPort()+ path;
	%>
	<base 
	href="<%=basePath%>">
		<meta charset="UTF-8">
		<title>编辑器</title>
		<link rel="stylesheet" href="css/bootstrap.3.3.7.min.css" />
		<script type="text/javascript" src="js/jquery.2.1.1.min.js"></script>
		<script type="text/javascript" src="js/bootstrap.3.3.7.min.js"></script>
		<link rel="stylesheet" href="summernote.css" />
		<script src="summernote.js"></script>
		<script src="lang/summernote-zh-CN.js"></script>
		<script src="js/editor.js"></script>
		<link rel="stylesheet" href="css/editor.css" />
	</head>

	<body>
		<div class="container">
			<div class="row">
				<div class="col-md-12 text-center">
					<h1><a href="#" class="title">offer100</a></h1>
					<h3 class="title_desc">职场最新资讯编辑发布器</h3>
				</div>
			</div>
			<div class="row title_editor">
				<div class="col-md-12">
					<div class="title_input">										
						<input placeholder="请输入标题" type="text" class="form-control" />
					</div>
				</div>
			</div>
			<div class="row content_editor">
				<div class="col-md-12">
					<div id="summernote"></div>
				</div>
			</div>
			<div class="row text-right">
				<div class="col-md-12">
					<button class="btn btn-primary btn-post">发布</button>
				</div>				
			</div>
		</div>
	</body>

</html>