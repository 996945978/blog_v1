<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>

<ul class="pagination">
    <li><span class="button "><a href="?page.start=${page.start-page.count}">Prev</a></span></li>
    <c:forEach begin="0" end="${page.totalPage-1}" varStatus="status">
        <li><a href="?page.start=${status.index*page.count}" class="page">${status.count}</a></li>
    </c:forEach>
    <li><a href="?page.start=${page.start+page.count}" class="button">Next</a></li>
</ul>