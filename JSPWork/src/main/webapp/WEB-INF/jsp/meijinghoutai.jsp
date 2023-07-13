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
    <title>美景后台</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/houtai.css">
</head>
<body>
<div class="container">
    <div class="row1">
        <form action="addMeijing" method="post">
            <h2>添加美景</h2>
            <div class="item">美景名称：<input type="text" name="Mname" id="Mname" required></div>
            <div class="item">美景地址：<input type="text" name="Maddress" id="Maddress" required></div>
            <div class="item">美景介绍：<input type="text" name="Mintro" id="Mintro" required></div>
            <div class="item">美景历史：<input type="text" name="Mhistory" id="Mhistory" required></div>
            <div class="item">美景图片：<input type="text" name="Mphoto" id="Mphoto" required></div>
            <div class="button">
                <input type="submit" value="确认" id="submit">
                <input type="reset" value="重置" id="reset">
            </div>
        </form>
    </div>
    <div class="row2">
        <form action="deleteMeijing">
            <h2>删除美景</h2>
            <div class="item">美景名称：<input type="text" name="Mname" id="Mname"></div>
            <div class="button">
                <input type="submit" value="确认" id="submit">
                <input type="reset" value="重置" id="reset">
            </div>
        </form>
    </div>
    <div class="row3">
        <form action="updateMeijing" method="post">
            <h2>修改美景</h2>
            <div class="item">美景名称：<input type="text" name="Mname" id="Mname" required></div>
            <div class="item">美景地址：<input type="text" name="Maddress" id="Maddress" required></div>
            <div class="item">美景介绍：<input type="text" name="Mintro" id="Mintro" required></div>
            <div class="item">美景历史：<input type="text" name="Mhistory" id="Mhistory" required></div>
            <div class="item">美景图片：<input type="text" name="Mphoto" id="Mphoto" required></div>
            <div class="button">
                <input type="submit" value="确认" id="submit">
                <input type="reset" value="重置" id="reset">
            </div>
        </form>
    </div>
</div>
</body>
</html>
