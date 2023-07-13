<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2023/5/17
  Time: 17:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>美食后台</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/houtai.css">
</head>
<body>
<div class="container">
    <div class="row1">
        <form action="addFood" method="post">
            <h2>添加美食</h2>
            <div class="item">美食名称：<input type="text" name="Fname" id="Fname" required></div>
            <div class="item">美食类别：<input type="text" name="Fcategory" id="Fcategory" required></div>
            <div class="item">美食介绍：<input type="text" name="Fintro" id="Fintro" required></div>
            <div class="item">美食历史：<input type="text" name="Fhistory" id="Fhistory" required></div>
            <div class="item">美食图片：<input type="text" name="Fphoto" id="Fphoto" required></div>
            <div class="button">
                <input type="submit" value="确认" id="submit">
                <input type="reset" value="重置" id="reset">
            </div>
        </form>
    </div>
    <div class="row2">
        <form action="deleteFood">
            <h2>删除美食</h2>
            <div class="item">美食名称：<input type="text" name="Fname" id="Fname"></div>
            <div class="button">
                <input type="submit" value="确认" id="submit">
                <input type="reset" value="重置" id="reset">
            </div>
        </form>
    </div>
    <div class="row3">
        <form action="updateFood" method="post">
            <h2>修改美食</h2>
            <div class="item">美食名称：<input type="text" name="Fname" id="Fname" required></div>
            <div class="item">美食类别：<input type="text" name="Fcategory" id="Fcategory" required></div>
            <div class="item">美食介绍：<input type="text" name="Fintro" id="Fintro" required></div>
            <div class="item">美食历史：<input type="text" name="Fhistory" id="Fhistory" required></div>
            <div class="item">美食图片：<input type="text" name="Fphoto" id="Fphoto" required></div>
            <div class="button">
                <input type="submit" value="确认" id="submit">
                <input type="reset" value="重置" id="reset">
            </div>
        </form>
    </div>
</div>
</body>
</html>
