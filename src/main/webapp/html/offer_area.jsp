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
		<title>招聘专区</title>
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
				<h3 class="title_desc">招聘专区</h3>
			</div>
		</div>
		<div class="offer_area">
			<div class="container">
				<div class="row">
					<div class="col-md-4 offer_desc">
						<img src="../img/pos.svg">
						<h1 class="scw-title">
							Deploy and scale your infrastructure in our datacenters
						</h1>
						<h2 class="scw-title-desc">
							Independent Datancenters, Global High-Capacity Network, One Single Interface
						</h2>
					</div>
					<div class="col-md-8">
						<div class="col-md-3 col-md-offset-1 col-sm-6 bundle company_area text-center">
							<div class="bundle-wrapper">
								<div class="top"><img style="width: 40px" src="/assets/images/illustrations/france.svg">
									<h3 style="margin-top: 15px">外企招聘专区</h3>
									<hr style="border-top: 2px solid #ffbd2b; width: 140px">
								</div>
								<div class="specs"><span>Tier-1 bandwidth</span></div>
								<div class="specs"><span>Resilient network</span></div>
								<div class="specs"><span>Over 3Tb/s of network capacity</span></div>
								<div class="specs"><span>Unlimited transfer</span></div>
								<div class="details">
									<a href="https://cloud.scaleway.com/#/zones/par1/servers/new" class="btn btn-lg btn-default">查看详情</a>
								</div>
							</div>
						</div>
						<div class="col-md-3 col-md-offset-5 col-sm-6 bundle school_area text-center">
							<div class="bundle-wrapper">
								<div class="top"><img style="width: 40px" src="/assets/images/illustrations/france.svg">
									<h3 style="margin-top: 15px">校园招聘专区</h3>
									<hr style="border-top: 2px solid #ffbd2b; width: 140px">
								</div>
								<div class="specs"><span>Tier-1 bandwidth</span></div>
								<div class="specs"><span>Resilient network</span></div>
								<div class="specs"><span>Over 3Tb/s of network capacity</span></div>
								<div class="specs"><span>Unlimited transfer</span></div>
								<div class="details">
									<a href="https://cloud.scaleway.com/#/zones/par1/servers/new" class="btn btn-lg btn-default">查看详情</a>
								</div>
							</div>
						</div>
						<div class="col-md-3 col-md-offset-2 col-sm-6 bundle social_area text-center">
							<div class="bundle-wrapper">
								<div class="top"><img style="width: 40px" src="/assets/images/illustrations/france.svg">
									<h3 style="margin-top: 15px">社会人士招聘专区</h3>
									<hr style="border-top: 2px solid #ffbd2b; width: 140px">
								</div>
								<div class="specs"><span>Tier-1 bandwidth</span></div>
								<div class="specs"><span>Resilient network</span></div>
								<div class="specs"><span>Over 3Tb/s of network capacity</span></div>
								<div class="specs"><span>Unlimited transfer</span></div>
								<div class="details">
									<a href="https://cloud.scaleway.com/#/zones/par1/servers/new" class="btn btn-lg btn-default">查看详情</a>
								</div>
							</div>
						</div>												
					</div>
				</div>
			</div>
		</div>
	</body>

</html>