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
    <form id="test" action="/offer100/admin/publishUser" method="post">
    <fieldset>
        <legend>创建新用户</legend>
        <div class="form-row">
            <div class="field-label"><label for="field1">用户名称</label>:</div>
            <div class="field-widget"><input name="uName" id="field1" class="required" title="请输入用户名称" /></div>
        </div>
        
         <div class="form-row">
            <div class="field-label"><label for="field2">用户密码</label>:</div>
            <div class="field-widget"><input name="uPassword" id="field2" class="required" title="请输入用户名称" /></div>
        </div>
        
        <div class="form-row">
            <div class="field-label"><label for="field3">用户邮箱</label>:</div>
            <div class="field-widget"><input name="uEmail" id="field3" class="required" title="请输入用户邮箱"  /></div>
        </div>
        
        <div class="form-row">
            <div class="field-label"><label for="field4">用户电话</label>:</div>
            <div class="field-widget"><input name="uPhone" id="field4"  title="请输入用户电话" /></div>
        </div>
        
        <div class="form-row">
            <div class="field-label"><label for="field5">选择用户头像</label>:</div>
            <div class="field-widget">            	
            	<input type="file" id="file" accept="image/*" name="nPic"/>
    			<input type="button" id="btn1" value="点击上传" onclick="uploadFile();" />    			
    		</div>
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
    <script type="text/javascript">
    	    function uploadFile(){  
        var fileObj = document.getElementById("file").files[0]; // 获取文件对象  
        var FileController = "/KstBackstage/news/saveImg.in"; // 接收上传文件的后台地址  
                  
        if(fileObj){  
            alert(fileObj);  
             // FormData 对象  
                 var form = new FormData();   
                 form.append("file", fileObj);// 文件对象     
          
                 // XMLHttpRequest 对象  
                 var xhr = new XMLHttpRequest();      
                 xhr.open("post", FileController, true);      
                 xhr.onload = function () {   
                     alert(xhr.responseText);     
                 };   
                 xhr.send(form);  
                      
        }else{  
            alert("未选择文件");  
        }  
    }  
	</script>

</body>
</html>