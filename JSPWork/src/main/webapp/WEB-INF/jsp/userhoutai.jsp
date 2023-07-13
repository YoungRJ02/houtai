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
  <title>用户后台</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/houtai.css">
</head>
<body>
<div class="container">
  <div class="row1">
    <form action="addUser" method="post">
      <h2>添加用户</h2>
      <div class="item">用户名：<input type="text" name="Username" id="Username" required></div>
      <div class="item">密码 ：<input type="text" name="Password" id="Password" required></div>
      <div class="item">电话 ：<input type="text" name="Uphone" id="Uphone" required></div>
      <div class="item">邮箱 ：<input type="text" name="Umail" id="Umail" required></div>
      <div class="item">住址 ：<input type="text" name="Uaddress" id="Uaddress" required></div>
      <div class="button">
        <input type="submit" value="确认" id="submit">
        <input type="reset" value="重置" id="reset">
      </div>
    </form>
  </div>
  <div class="row2">
    <form action="deleteUser">
      <h2>删除用户</h2>
      <div class="item">用户名：<input type="text" name="Username" id="Username"></div>
      <div class="button">
        <input type="submit" value="确认" id="submit">
        <input type="reset" value="重置" id="reset">
      </div>
    </form>
  </div>
  <div class="row3">
    <form action="updateUser" method="post">
      <h2>修改用户</h2>
      <div class="item">用户名：<input type="text" name="Username" id="Username" required></div>
      <div class="item">密码 ：<input type="text" name="Password" id="Password" required></div>
      <div class="item">电话 ：<input type="text" name="Uphone" id="Uphone" required></div>
      <div class="item">邮箱 ：<input type="text" name="Umail" id="Umail" required></div>
      <div class="item">住址 ：<input type="text" name="Uaddress" id="Uaddress" required></div>
      <div class="button">
        <input type="submit" value="确认" id="submit">
        <input type="reset" value="重置" id="reset">
      </div>
    </form>
  </div>
</div>
</body>
</html>
