<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2023/5/10
  Time: 19:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>杭州人文</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/module.css">
    <script src="${pageContext.request.contextPath}/js/module.js"></script>
</head>
<body>
<h1 align="center"><font face = "华文行楷" size ="10" color = "blue">杭州人文</font></h1>
<div class="container">
    <div class="search">
        <form action="go" method="post" class="login_container">
            <input type="text" id="Rname" name="Rname" placeholder="可查询运河博物馆，浙江省博物馆，方言，宗教，艺术" autofocus="autofocus" required>
            <input type="submit" class="click_login" value="查询"/>
        </form>
    </div>
    <div class="row">
        <div class="imgBox">
            <img class="img-slide img1" src="https://img2.baidu.com/it/u=313568401,2982896321&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=500"  alt="1">
            <img class="img-slide img2" src="https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg2.oldkids.cn%2Fupload%2F2021%2F04%2F19%2Fblog_260841798_20210419125319525.jpg&refer=http%3A%2F%2Fimg2.oldkids.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1670746109&t=2b32302bf3e8e727c235512dbb7913d5" alt="2">
            <img class="img-slide img3" src="https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fup.iosdesk.com%2F22%2F1f%2F0b%2Fba%2F0a1c2d3d90f20f2adecdfe8da9e546fc.jpg&refer=http%3A%2F%2Fup.iosdesk.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1670746136&t=a83a612d15552572988b6f6f36cf5390"alt="3">
            <img class="img-slide img4" src="https://img1.baidu.com/it/u=2105942050,2710534463&fm=253&fmt=auto&app=138&f=JPEG?w=803&h=500"alt="4">
            <img class="img-slide img4" src="https://gimg2.baidu.com/image_search/src=http%3A%2F%2F5b0988e595225.cdn.sohucs.com%2Fimages%2F20191001%2Fc91c28b6bef24961a75a5236e3ee6b5b.jpeg&refer=http%3A%2F%2F5b0988e595225.cdn.sohucs.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1670746477&t=7503da02a0a00fb461a934f7f33f4cf2"alt="5">
        </div>
    </div>
    <div class="row2">
        <p style="text-indent:3em;"><font face = "楷体" size ="4" color = "black">杭州地处中国华东地区、钱塘江下游、东南沿海、浙江北部、京杭大运河南端，地理坐标介于北
            纬29°11′—30°34′，东经118°20′—120°37′之间，是环杭州湾大湾区核心城市、G60科创走廊中心城市。杭州人文古迹众多，西湖及其周边有大量的自然及人文景观遗迹，具代表性的有
            西湖文化、良渚文化、丝绸文化、茶文化。杭州是首批国家历史文化名城，以“东南名郡”著称于世。跨湖桥遗址的发掘显示8000多年前，就有人类在此繁衍生息。距今5000多年前的良渚
            文化被称为“中华文明的曙光”。杭州自秦朝设县治以来，已有2200多年历史，曾是吴越国和南宋的都城。</font></p>
    </div>
</div>
</body>
</html>
