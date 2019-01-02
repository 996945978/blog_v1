<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="../include/admin/adminHeader.jsp"%>
<%@include file="../include/admin/adminNavigator.jsp"%>

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

						<%--
						<div class="form-group">
							<label class="col-lg-2 control-label" >选择文章分类</label>
							<div class="col-lg-10">
								<select name="cid" class="chzn-select" style="width: 150px">
								<c:forEach items="${thecs}" var="c">
									<option value="${c.id}">${c.name}</option>
									
								</c:forEach>	
									
								</select>

							</div>
						</div>
						<br>
						--%>


						<!--  这里是编辑器  -->

						<div class="editormd" id="test-editormd">
							<textarea class="editormd-markdown-textarea" name="test-editormd-markdown-doc"></textarea>
							<!-- 第二个隐藏文本域，用来构造生成的HTML代码，方便表单POST提交，这里的name可以任意取，后台接受时以这个name键为准 -->
							<textarea class="editormd-html-textarea" name="text"></textarea>
						</div>

							<br>

						<button id="submit" type="submit" class="btn btn-lg btn-block btn-info">上传</button>
					</fieldset>
				</form>
			</div>
		</div>
	</div>
</div>
<%@include file="../include/admin/adminFooter.jsp"%>


<script type="text/javascript">
    $(function() {
        editormd("test-editormd", {
            width   : "90%",
            height  : 640,
            syncScrolling : "single",
            //你的lib目录的路径，我这边用JSP做测试的
            path    : "md/lib/",
            //这个配置在simple.html中并没有，但是为了能够提交表单，使用这个配置可以让构造出来的HTML代码直接在第二个隐藏的textarea域中，方便post提交表单。
            saveHTMLToTextarea : true,
            imageUpload : true,
            imageFormats : ["jpg", "jpeg", "gif", "png", "bmp", "webp"],
            imageUploadURL : "imageUpload",
            previewTheme : "dark"
        });
    });
</script>

