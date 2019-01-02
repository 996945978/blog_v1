
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<div class="row">
	
			<form class="navbar-form navbar-right" role="search"
				action="admin_article_search">
				<div class="form-group">
					<input name="keyWord" type="text" class="form-control"
						placeholder="请输入文章关键字">
				</div>
				<button type="submit" class="btn btn-default">搜索</button>
			</form>
			<form class="navbar-form navbar-left" action="admin_category_add"
				method="post">
				<div class="form-group">
					<input name="cname" type="text" class="form-control"
						placeholder="新增类别">
				</div>
				<button type="submit" class="btn btn-default">增加</button>
			</form>
		</div>
	
<!-- 搜索栏结束 -->


