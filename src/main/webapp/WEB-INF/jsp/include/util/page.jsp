<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>

<script>
    $(function(){
        $("ul.pagination li.disabled a").click(function(){
            return false;
        });
    });
</script>
<nav>
    <ul class="pagination">
        <li>
            <a  href="?current=1" aria-label="Previous" >
                <span aria-hidden="true">«</span>
            </a>
        </li>
        <li >
            <a  href="?current=${page.current-1}" aria-label="Previous" >
                <span aria-hidden="true">‹</span>
            </a>
        </li>
        <c:forEach begin="0" end="${page.pages-1}" varStatus="status">
            <li>
                <a href="?current=${status.count}" class="current">${status.count}</a>
            </li>

        </c:forEach>
        <li >
            <a href="?current=${page.current+1}" aria-label="Next">
                <span aria-hidden="true">›</span>
            </a>
        </li>
        <li >
            <a href="?current=${page.pages}" aria-label="Next">
                <span aria-hidden="true">»</span>
            </a>
        </li>
    </ul>
</nav>