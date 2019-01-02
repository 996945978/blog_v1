<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
	
<%@include file="../include/admin/adminHeader.jsp"%>
<%@include file="../include/admin/adminNavigator.jsp"%>
<div class="col-md-10">

	<!-- 搜索栏 -->
	<%@include file="../include/admin/adminSearch.jsp" %>
	<!-- 搜索栏结束 -->
	<div class="row">
		<div class="panel panel-default">
			<div class="panel-heading">
				<div class="text-muted bootstrap-admin-box-title">
					文章管理</div>
			</div>
			<div class="bootstrap-admin-panel-content">
				<table class="table table-striped">
					<thead>
						<tr>
							<th>id</th>
							<th>标题</th>
							<th>类别</th>
							<th>修改</th>
							<th>删除</th>
						</tr>
					</thead>
					<tbody>
						
						
						<c:forEach items="${theas}" var="c">
						<tr>
							<td>${c.id }</td>
							<td>${c.title }</td>
							<%--<td><a href="admin_article_listByCategory?cid=${c.category.id}">${c.category.name}</a></td>--%>
							<td><a href="admin_article_edit?pid=${c.id}"><i class="glyphicon glyphicon-th-list"></i></a></td>
							
							<td><a deleteLink="true" href="admin_article_delete?id=${c.id}"><i class="glyphicon glyphicon-remove"></i></a></td>
						</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<%@include file="../include/util/page.jsp" %>
</div>

<%@include file="../include/admin/adminFooter.jsp" %>