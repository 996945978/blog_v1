<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>
<%@include file="../include/fore/foreHeader.jsp"%>

<div id="main">
    <div class="inner">

        <!-- Header -->
        <header id="header">
            <a href="index.html" class="logo"><strong>How2up</strong></a>
            <ul class="icons">

                <li><a href="#" class="icon fa-snapchat-ghost"><span class="label">Snapchat</span></a></li>

            </ul>
        </header>


        <!-- Section -->
        <section>

            <div class="posts">

            <c:forEach items="${theas}" var="c">
                <article>

                    <h3><a href="fore_home_generic?aid=${c.id}">${c.title}</a></h3>
                    <span><p>${c.createDate}</p></span>
                    <p>${c.sub}</p>
                    <ul class="actions">
                        <li><a href="#" class="button">More</a></li>
                    </ul>
                </article>
            </c:forEach>


            </div>
            <%@include file="../include/util/page_t.jsp"%>
        </section>

    </div>
</div>


<%@include file="../include/fore/siderBar.jsp"%>
<%@include file="../include/fore/foreFooter.jsp"%>