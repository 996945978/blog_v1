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
					类别管理</div>
			</div>
			<div class="bootstrap-admin-panel-content">
				<table class="table table-striped">
					<thead>
						<tr>
							<th>id</th>
							<th>名称</th>
							<th>文章</th>
							<th>删除</th>
						</tr>
					</thead>
					<tbody>
						
						
						<c:forEach items="${thecs}" var="c">
						<tr>
							<td>${c.id }</td>
							<td>${c.name }</td>
							<td><a href="admin_article_listByCategory?cid=${c.id }"><i class="glyphicon glyphicon-th-list"></i></a></td>
							
							<td><a deleteLink="true" href="admin_category_delete?id=${c.id}"><i class="glyphicon glyphicon-remove"></i></a></td>
						</tr>
						</c:forEach>

					</tbody>
				</table>
			</div>
		</div>
	</div>

	<div class="row">
  <%@include file="../include/util/page.jsp" %>


</div>


<%@include file="../include/admin/adminFooter.jsp" %>
