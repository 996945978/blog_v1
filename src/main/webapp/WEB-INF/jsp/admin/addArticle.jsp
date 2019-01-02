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
  function add(){
   var name = document.getElementById("title");
   if(name.value.length==0){
     alert("标题不能为空");
     return false;
   }

   var password = document.getElementById("sum");
   if(password.value.length==0){
     alert("梗概不能为空");
     return false;
   }
   if (!ue.hasContents()){
        alert(
   "文章内容不能为空"
   );
        
   return false
   ;
      }
   return true;

  }
  
//绑定beforeunload事件
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
				<form class="form-horizontal" action="admin_article_add" method="post" onsubmit="return add()">
			
					<fieldset>
						<legend>编辑文章</legend>
						<div class="form-group">
							<label class="col-lg-2 control-label" >标题</label>
							<div class="col-lg-10">
								<textarea id = "title"type="text" name="title" class="form-control col-md-6"></textarea>

							</div>
							
						</div>
						<div class="form-group">
							<label class="col-lg-2 control-label" >输入概括</label>
							<div class="col-lg-10">
								<textarea type="text" id="sum" name="sub" class="form-control col-md-6"></textarea>

							</div>
							
						</div>


						<div class="form-group">
							<label class="col-lg-2 control-label" for="select01">选择文章分类</label>
							<div class="col-lg-10">
								<select name="cid" class="chzn-select" style="width: 150px">
								<c:forEach items="${thecs}" var="c">
									<option value="${c.id}">${c.name}</option>
									
								</c:forEach>	
									
								</select>

							</div>
						</div>
						<br>


						<script id="editor" type="text/plain"
							style="width: 100%; height: 500px;"></script>

						<br>

						<button id="submit" type="submit" class="btn btn-lg btn-block btn-info">上传</button>
					</fieldset>
				</form>
			</div>
		</div>
	</div>
</div>
<%@include file="../include/admin/adminFooter.jsp"%>

