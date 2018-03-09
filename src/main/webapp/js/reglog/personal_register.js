$(document).ready(function() {
	$("#username").blur(function() {
		if($(this).val() == "") {
			$("#uname_prompt").text("请输入用户名");
			$("input#username").parent().addClass("has-error");
		}
	});

	$("button.submit").click(function() {
		$.ajax({
			type: "POST",
			url: "http://localhost:8080/register",
			contentType: "application/json; charset=utf-8",
			data: JSON.stringify({
				"name": "ljl",
				"password": "hgx"
			}),
			dataType: "json",
			success: function(message) {
				alert(message["name"]);
			},
			error: function(message) {
				alert("提交失败");
			}
		});
	});
});