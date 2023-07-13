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
    <title>人文后台</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/houtai.css">
</head>
<body>
<div class="container">
    <div class="row1">
        <form action="addRenwen" method="post">
            <h2>添加人文</h2>
            <div class="item">人文名称：<input type="text" name="Rname" id="Rname" required></div>
            <div class="item">人文地址：<input type="text" name="Raddress" id="Raddress" required></div>
            <div class="item">人文介绍：<input type="text" name="Rintro" id="Rintro" required></div>
            <div class="item">人文历史：<input type="text" name="Rhistory" id="Rhistory" required></div>
            <div class="item">人文图片：<input type="text" name="Rphoto" id="Rphoto" required></div>
            <div class="button">
                <input type="submit" value="确认" id="submit">
                <input type="reset" value="重置" id="reset">
            </div>
        </form>
    </div>
    <div class="row2">
        <form action="deleteRenwen">
            <h2>删除人文</h2>
            <div class="item">人文名称：<input type="text" name="Rname" id="Rname"></div>
            <div class="button">
                <input type="submit" value="确认" id="submit">
                <input type="reset" value="重置" id="reset">
            </div>
        </form>
    </div>
    <div class="row3">
        <form action="updateRenwen" method="post">
            <h2>修改人文</h2>
            <div class="item">人文名称：<input type="text" name="Rname" id="Rname" required></div>
            <div class="item">人文地址：<input type="text" name="Raddress" id="Raddress" required></div>
            <div class="item">人文介绍：<input type="text" name="Rintro" id="Rintro" required></div>
            <div class="item">人文历史：<input type="text" name="Rhistory" id="Rhistory" required></div>
            <div class="item">人文图片：<input type="text" name="Rphoto" id="Rphoto" required></div>
            <div class="button">
                <input type="submit" value="确认" id="submit">
                <input type="reset" value="重置" id="reset">
            </div>
        </form>
    </div>
</div>
</body>
</html>
