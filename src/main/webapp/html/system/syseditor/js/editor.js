$(document).ready(function() {	
	total = document.documentElement.clientHeight;	
	$('#summernote').summernote({
		height: total*0.6, // set editor height
		minHeight: null, // set minimum height of editor
		maxHeight: null, // set maximum height of editor
		focus: true, // set focus to editable area after initializing summernote
		lang: "zh-CN",
		toolbar: [
			['style', ['style']], //引用
			['style', ['bold', 'italic', 'underline', 'strikethrough', 'clear']], //文字基本样式
			['fontname', ['fontname']], //字体
			['fontsize', ['fontsize']], //字体大小			
			['color', ['color']], //字体颜色
			['para', ['ul', 'ol', 'paragraph']], //列表
			['height', ['height']], //行高			
			['picture', ['picture', 'link', 'table']], //插入图片 链接
			['hr', ['hr']], //插入水平线
			['fullscreen', ['undo', 'redo', 'fullscreen']], //撤销 恢复 全屏
		],		
		fontSizes: ['12', '14', '16', '18', '20', '24', '36', '40'],
		fontNames: ['宋体', '黑体', '微软雅黑', '新宋体', '仿宋', '楷体', '标楷体', '细明体', 'Helvetica', 'Arial', 'Arial Black', 'Comic Sans MS', 'Courier New'],
		placeholder: "请输入文章内容..."
	});	
});



