<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>
<%@include file="../include/fore/foreHeader.jsp"%>
<div id="main">
    <div class="inner">

        <!-- Header -->
        <header id="header">
            <a href="fore_home_home" class="logo"><strong>How2up</strong></a>
            <ul class="icons">

                <li><a href="#" class="icon fa-snapchat-ghost"><span class="label">Snapchat</span></a></li>
            </ul>
        </header>
        <!-- Content -->
        <section>
            <header class="main">
                <h1>${article.title}</h1>
                <div>
                <span class="pull-left"><p>创作时间：${article.createDate}||最后一次修改时间：${article.updateDate}</p></span>
                <span  class="pull-right"><p>阅读量：${article.view}||点赞量：${article.agree}</p></span>
                </div>
            </header>
            <p>${article.content}</p>
            <div>
                <a href="#" class="icon fa-heart" style="font-size: 60px;left:50%"><span class="label">Snapchat</span></a>
        </div>
        </section>
    </div>
</div>
<%@include file="../include/fore/siderBar.jsp"%>
<%@include file="../include/fore/foreFooter.jsp"%>