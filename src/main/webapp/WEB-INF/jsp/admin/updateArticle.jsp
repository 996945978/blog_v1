<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="../include/admin/adminHeader.jsp"%>
<%@include file="../include/admin/adminNavigator.jsp"%>
<script type="text/javascript" charset="utf-8"
	src="utf8-jsp/ueditor.config.js"></script>
<script type="text/javascript" charset="utf-8"
	src="utf8-jsp/ueditor.all.min.js"> </script>
<script type="text/javascript" charset="utf-8"
	src="utf8-jsp/lang/zh-cn/zh-cn.js"></script>
<script type="text/javascript">
    var ue = UE.getEditor('editor');
	</script>
<script>
function update(){
	   var name = document.getElementById("title");
	   if(name.value.length==0){
	     alert("文章标题不能为空");
	     return false;
	   }

	   var password = document.getElementById("sum");
	   if(password.value.length==0){
	     alert("梗概不能为空");
	     return false;
	   }
	   if
	   (!ue.hasContents()){
	        alert(
	   "文章内容不能为空"
	   );
	        
	   return false
	   ;
	      }

	   return true;

	  }
$(window).bind('beforeunload', function() {
	return confirm("您输入的内容尚未保存，确定离开此页面吗？");
});

$(function(){
    $("#submit").click(function(){
  
        $(window).unbind('beforeunload');
    });
    
});
</script>
<div class="col-md-10">
	<div class="row">
		<div class="panel panel-default bootstrap-admin-no-table-panel">

			<div
				class="bootstrap-admin-no-table-panel-content bootstrap-admin-panel-content collapse in">
				<form class="form-horizontal" action="admin_article_update" method="post" onsubmit="return update()">
			
					<fieldset>
						<legend>编辑文章</legend>
						<div class="form-group">
							<label class="col-lg-2 control-label" >标题</label>
							<div class="col-lg-10">
								<input id="title" type="text" name="title" class="form-control col-md-6" value="${article.title}">
								<input type="hidden" name="id" value="${article.id}">
							</div>
						</div>
						<div class="form-group">
							<label class="col-lg-2 control-label" >输入概括</label>
							<div class="col-lg-10">
								<textarea id="sum" type="text" name="sub" class="form-control col-md-6">${article.sub }</textarea>

							</div>
							
						</div>


						
						<br>


						<script id="editor" type="text/plain"
							style="width: 100%; height: 500px;"></script>

						<br>

						<button id="submit" type="submit" class="btn btn-lg btn-block btn-info">更新</button>
					</fieldset>
				</form>
			</div>
		</div>
	</div>
</div>
<textarea id="val_content" style="display:none;" >${article.content}</textarea>
<%@include file="../include/admin/adminFooter.jsp"%>
<script>
UE.getEditor('editor').addListener("ready", function () {
		var content =$('#val_content').val();
		UE.getEditor('editor').setContent(content);
	
	
	});
</script>

