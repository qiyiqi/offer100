<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <!--
        ===
        This comment should NOT be removed.

        Charisma v2.0.0

        Copyright 2012-2014 Muhammad Usman
        Licensed under the Apache License v2.0
        http://www.apache.org/licenses/LICENSE-2.0

        http://usman.it
        http://twitter.com/halalit_usman
        ===
    -->
    <meta charset="utf-8">
    <title>Free HTML5 Bootstrap Admin Template</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Charisma, a fully featured, responsive, HTML5, Bootstrap admin template.">
    <meta name="author" content="Muhammad Usman">

    <!-- The styles -->
    <link href='<%=request.getContextPath()%>/css/bootstrap-cerulean.min.css' rel='stylesheet'>

    <link href="<%=request.getContextPath()%>/css/charisma-app.css" rel="stylesheet">
    <link href='<%=request.getContextPath()%>/bower_components/fullcalendar/dist/fullcalendar.css' rel='stylesheet'>
    <link href='<%=request.getContextPath()%>/bower_components/fullcalendar/dist/fullcalendar.print.css' rel='stylesheet' media='print'>
    <link href='<%=request.getContextPath()%>/bower_components/chosen/chosen.min.css' rel='stylesheet'>
    <link href='<%=request.getContextPath()%>/bower_components/colorbox/example3/colorbox.css' rel='stylesheet'>
    <link href='<%=request.getContextPath()%>/bower_components/responsive-tables/responsive-tables.css' rel='stylesheet'>
    <link href='<%=request.getContextPath()%>/bower_components/bootstrap-tour/build/css/bootstrap-tour.min.css' rel='stylesheet'>
    <link href='<%=request.getContextPath()%>/css/jquery.noty.css' rel='stylesheet'>
    <link href='<%=request.getContextPath()%>/css/noty_theme_default.css' rel='stylesheet'>
    <link href='<%=request.getContextPath()%>/css/elfinder.min.css' rel='stylesheet'>
    <link href='<%=request.getContextPath()%>/css/elfinder.theme.css' rel='stylesheet'>
    <link href='<%=request.getContextPath()%>/css/jquery.iphone.toggle.css' rel='stylesheet'>
    <link href='<%=request.getContextPath()%>/css/uploadify.css' rel='stylesheet'>
    <link href='<%=request.getContextPath()%>/css/animate.min.css' rel='stylesheet'>

    <!-- jQuery -->
    <script src="<%=request.getContextPath()%>/bower_components/jquery/jquery.min.js"></script>

    <!-- The HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    <!-- The fav icon -->
    <link rel="shortcut icon" href="<%=request.getContextPath()%>/img/favicon.ico">

</head>

<body>   
    <div class="row">
    <div class="box col-md-12">
    <div class="box-inner">
    <div class="box-header well" data-original-title="">
        <h2><i class="glyphicon glyphicon-user"></i> 用户列表</h2>

        <div class="box-icon">
            <a href="#" class="btn btn-setting btn-round btn-default"><i class="glyphicon glyphicon-cog"></i></a>
            <a href="#" class="btn btn-minimize btn-round btn-default"><i
                    class="glyphicon glyphicon-chevron-up"></i></a>
            <a href="#" class="btn btn-close btn-round btn-default"><i class="glyphicon glyphicon-remove"></i></a>
        </div>
    </div>
    <div class="box-content">
    <table class="table table-striped table-bordered bootstrap-datatable datatable responsive">
    <thead>
    <tr>
        <th>ID</th>
        <th>用户名</th>
        <th>密码</th>
        <th>权限级别</th>
        <th>操作</th>
    </tr>
    </thead>
    
    <tbody>
    ${list }
    </tbody>
    </table>
    </div>
    </div>
    </div>
    <!--/span-->

    </div><!--/row-->


<!-- external javascript -->

<script src="<%=request.getContextPath()%>/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

<!-- library for cookie management -->
<script src="<%=request.getContextPath()%>/js/jquery.cookie.js"></script>
<!-- calender plugin -->
<script src='<%=request.getContextPath()%>/bower_components/moment/min/moment.min.js'></script>
<script src='<%=request.getContextPath()%>/bower_components/fullcalendar/dist/fullcalendar.min.js'></script>
<!-- data table plugin -->
<script src='<%=request.getContextPath()%>/js/jquery.dataTables.min.js'></script>

<!-- select or dropdown enhancer -->
<script src="<%=request.getContextPath()%>/bower_components/chosen/chosen.jquery.min.js"></script>
<!-- plugin for gallery image view -->
<script src="<%=request.getContextPath()%>/bower_components/colorbox/jquery.colorbox-min.js"></script>
<!-- notification plugin -->
<script src="<%=request.getContextPath()%>/js/jquery.noty.js"></script>
<!-- library for making tables responsive -->
<script src="<%=request.getContextPath()%>/bower_components/responsive-tables/responsive-tables.js"></script>
<!-- tour plugin -->
<script src="<%=request.getContextPath()%>/bower_components/bootstrap-tour/build/js/bootstrap-tour.min.js"></script>
<!-- star rating plugin -->
<script src="<%=request.getContextPath()%>/js/jquery.raty.min.js"></script>
<!-- for iOS style toggle switch -->
<script src="<%=request.getContextPath()%>/js/jquery.iphone.toggle.js"></script>
<!-- autogrowing textarea plugin -->
<script src="<%=request.getContextPath()%>/js/jquery.autogrow-textarea.js"></script>
<!-- multiple file upload plugin -->
<script src="<%=request.getContextPath()%>/js/jquery.uploadify-3.1.min.js"></script>
<!-- history.js for cross-browser state change on ajax -->
<script src="<%=request.getContextPath()%>/js/jquery.history.js"></script>
<!-- application script for Charisma demo -->
<script src="<%=request.getContextPath()%>/js/charisma.js"></script>


</body>
</html>
