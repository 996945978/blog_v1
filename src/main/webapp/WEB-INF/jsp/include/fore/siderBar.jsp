<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>


<!-- Sidebar -->
<div id="sidebar">
    <div class="inner">

        <!-- Search -->
        <section id="search" class="alt">
            <form method="post" action="#">
                <input type="text" name="query" id="query" placeholder="Search" />
            </form>
        </section>

        <!-- Menu -->

        <nav id="menu">
            <header class="major">
                <h2>分类</h2>
            </header>
            <ul>
                <c:forEach items="${thecs}" var = "c">
                    <li><a href="fore_home_listByCategory?cid=${c.id}">${c.name}(${c.number})</a></li>
                </c:forEach>
            </ul>
        </nav>

        <nav id="menu">
            <header class="major">
                <h2>归档</h2>
            </header>
            <ul>
                <c:forEach items="${theds}" var="c">
                    <li><a href="fore_home_listByDate?createDate=${c.date}">${c.date}(${c.number})</a></li>
                </c:forEach>
            </ul>
        </nav>

        <nav id="menu">
            <header class="major">
                <h2>标签</h2>
            </header>
            <p>
                <c:forEach items="${thets}" var="c">
                    <a href="fore_home_listByTab?tid=${c.id}">${c.name}</a>|
                </c:forEach>
            </p>
        </nav>

        <section>
            <header class="major">
                <h2>Get in touch</h2>
            </header>
            <p>Sed varius enim lorem ullamcorper dolore aliquam aenean ornare velit lacus, ac varius enim lorem ullamcorper dolore. Proin sed aliquam facilisis ante interdum. Sed nulla amet lorem feugiat tempus aliquam.</p>
            <ul class="contact">
                <li class="fa-envelope-o"><a href="#">information@untitled.tld</a></li>
                <li class="fa-phone">(000) 000-0000</li>
                <li class="fa-home">1234 Somewhere Road #8254<br />
                    Nashville, TN 00000-0000</li>
            </ul>
        </section>

        <!-- Footer -->
        <footer id="footer">
            <p class="copyright">&copy; Untitled. All rights reserved. Demo Images: <a href="https://unsplash.com">Unsplash</a>. Design: <a href="https://html5up.net">HTML5 UP</a>.</p>
        </footer>

    </div>
</div>