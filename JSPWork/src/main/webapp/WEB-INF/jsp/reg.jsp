<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>用户注册</title>
  <style type="text/css">
    body {
      display: flex;
      width: 100%;
      height: 100%;
      min-height: 95vh;
      min-width: 95vh;
      background: url(/images/background.jpg) no-repeat bottom center;
    }

    .container {
      width: 25vw;
      height: 72vh;
      margin: auto;
      padding: 5vh 3vw;
      background-color: #001921b2;
      color: white;
      border-radius: 0.4em;
    }

    h2 {
      font-size: 1.6em;
      text-align: center;
      margin-bottom: 3vh;
    }

    .item {
      margin: 3.5vh 0;
      font-size: 1.2em;
    }

    .item input {
      width: 13vw;
      height: 3.7vh;
    }
    .button {
      display: flex;
      justify-content: space-around;
      margin-top: 5vh;
    }

    .button input {
      display: block;
      width: 7vw;
      height: 4vh;
      background: #03a9f4;
      border-radius: 0.3em;
      cursor: pointer;
    }

    #reset {
      background: #485275;
      color: whitesmoke;
    }
  </style>
</head>
<body>
<div class="container">
  <form action="goreg" method="post">
    <h2>新用户注册</h2>
    <div class="item">用户名称：<input type="text" name="Username" id="Username" required></div>
    <div class="item">设置密码：<input type="password" name="Password" id="Password" required></div>
    <div class="item">确认密码：<input type="password" name="again_password" id="again_password" onblur="checkRePassword()" onkeyup="checkRePassword()" required><span id="span_repassword"></span></div>
    <div class="item">电话号码：<input type="text" name="Uphone" id="Uphone" required></div>
    <div class="item">电子邮箱：<input type="text" name="Umail" id="Umail" required></div>
    <div class="item">家庭住址：<input type="text" name="Uaddress" id="Uaddress" required></div>
    <div class="button">
      <input type="submit" value="确认" id="submit">
      <input type="reset" value="重置" id="reset">
    </div>
  </form>
</div>
<script type="text/javascript">
  function checkRePassword(){
    var uPass = document.getElementById("Password").value;
    var uRePass = document.getElementById("again_password").value;
    var span = document.getElementById("span_repassword");
    if(uPass != uRePass){
      span.innerHTML = "<font color='red' size='2'>两次密码不一致</font>"
      return false;
    }
    else {
      span.innerHTML = "";
      return true;
    }
  }
</script>
</body>
</html>
