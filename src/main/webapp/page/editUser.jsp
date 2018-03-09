<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<script src="<%=request.getContextPath()%>/scriptaculous/lib/prototype.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/scriptaculous/src/effects.js" type="text/javascript"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/validation.js"></script>
<script type="text/javascript">
//<![CDATA[
<!--
// Alternative Style: Working With Alternate Style Sheets
// http://www.alistapart.com/articles/alternate/
function setActiveStyleSheet(title) {
var i, a, main;
for(i=0; (a = document.getElementsByTagName("link")[i]); i++) {
if(a.getAttribute("rel").indexOf("style") != -1 && a.getAttribute("title")) {
a.disabled = true;
if(a.getAttribute("title") == title) a.disabled = false;
}
}
}
//-->
//]]>
</script>
<link title="style1" rel="stylesheet" href="<%=request.getContextPath()%>/style.css" type="text/css" />
<link title="style2" rel="alternate stylesheet" href="<%=request.getContextPath()%>/style2.css" type="text/css" />
<link title="style3" rel="alternate stylesheet" href="<%=request.getContextPath()%>/style3.css" type="text/css" />
</head>
<body>
    <div class="style_changer">
    	<div class="style_changer_text">Themes:</div>
        <input type="submit" value="1" onclick="setActiveStyleSheet('style1');" />
        <input type="submit" value="2" onclick="setActiveStyleSheet('style2');" />
        <input type="submit" value="3" onclick="setActiveStyleSheet('style3');" />
    </div>

	<div class="form_content">
    <form id="test" action="/KstBackstage/user/changeUserInfo" method="post">
    <fieldset>
        <legend>编辑个人信息</legend>
        <div class="form-row">
            <div class="field-label"><label for="field1">ID</label>:</div>
            <div class="field-widget"><input name="uId" id="field1" class="required" readonly="readonly" value="${user.uId }"  /></div>
        </div>
        <div class="form-row">
            <div class="field-label"><label for="field2">用户名</label>:</div>
            <div class="field-widget"><input name="uName" id="field2" class="required" value="${user.uName }"  /></div>
        </div>
        
        <div class="form-row">
            <div class="field-label"><label for="field3">密码</label>:</div>
            <div class="field-widget"><input name="uPassword" id="field3" class="required" value="${user.uPassword }" /></div>
        </div>
             
        <div class="form-row">
            <div class="field-label"><label for="field4">性别</label>:</div>
            <div class="field-widget">
            	<input type="radio" name="uGender" value="1" checked />男
            	<input type="radio" name="uGender" value="0" />女
            </div>
        </div>
        <div class="form-row">
            <div class="field-label"><label for="field3">电话</label>:</div>
            <div class="field-widget"><input name="uPhone" id="field3"  value="${user.uPhone }" /></div>
        </div>
        
        <div class="form-row">
            <div class="field-label"><label for="field3">邮箱</label>:</div>
            <div class="field-widget"><input name="uEmail" id="field3"  value="${user.uEmail }" /></div>
        </div>
        
        <div class="form-row">
            <div class="field-label"><label for="field5">个人描述</label>:</div>
            <div class="field-widget"><textarea class="required" name="uDescribe">${user.uDescribe }</textarea></div>
        </div>
        <div class="form-row">
            <div class="field-label"><label for="field6">注册时间</label>:</div>
            <div class="field-widget"><input name="uDate" id="field6" class="required" readonly="readonly" value="${user.uDate }"  /></div>
        </div>
    </fieldset>  
    <input type="submit" class="submit" value="Submit" /> <input class="reset" type="button" value="Reset" onclick="valid.reset(); return false" />
    </form>
    </div>
    <script type="text/javascript">
        function formCallback(result, form) {
            window.status = "valiation callback for form '" + form.id + "': result = " + result;
        }
        
        var valid = new Validation('test', {immediate : true, onFormValidate : formCallback});
        
    </script>

</body>
</html>