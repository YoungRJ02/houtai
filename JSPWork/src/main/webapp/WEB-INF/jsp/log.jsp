<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>用户登录</title>
    <style type="text/css">
        body{
            background: url(/images/background.jpg) no-repeat bottom center;
        }
        /* 顶部导航栏 */
        .container {
            width: 100%;
            height: 100%;
        }

        .header {
            width: 100%;
            height: 7vh;
        }

        .header .brand {
            float: left;
            font-size: 3.8vh;
            letter-spacing: 0.5vw;
            line-height: 8vh;
            margin-left: 20vw;
            color: bisque;
        }
        .header .logo {
            float: left;
            width: 20vw;
            height: 8vh;
            padding-top: 0.9vh;
        }

        /* 主体内容的样式*/
        main {
            height: 670px;
            width: 100%;
            display: flex;
        }

        /* 左侧轮播图样式 */
        main .left {
            height: 85%;
            width: 50vw;
            padding: 15px;
            margin-left: 50px;
            background: rgba(105, 105, 105, 0.4);
        }

        .left .left_container {
            display: flex;
            width: 100%;
            height: 100%;
        }

        .left .focus {
            position: relative;
            width: 36vw;
            height: 48vh;
            margin-top: 80px;
            margin-left: 110px;
            overflow: hidden;
            background-color: aliceblue;
        }

        .focus img{
            width: 100%;
            height: 100%;
        }
        .left .focus .lleft{

            width: 23px;
            height: 40px;
            /* 设置子元素绝对位置 */
            position: absolute;
            left: 0px;
            top: 48%;
        }
        .left .focus .rright{
            width: 28px;
            height: 42px;
            position: absolute;
            right: 0px;
            top: 48%;
        }

        /* 右侧登录样式 */
        main .right {
            height: 500px;
            flex: 1;
            margin: 30px;
            background: rgba(105, 105, 105, 0.4);
        }

        .right .login_container {
            margin-top: 100px;
            margin-left: 70px;
            margin-right: 70px;
            background: white;
        }
        .login_container .login_method {
            width: 20vw;
            margin: 2vh auto 1vh;
        }

        .login_method span {
            margin-left: 25%;
            display: inline-block;
            font-size: 1.5em;
        }

        .login_method .account_a{
            font-family: 华文行楷;
            color: blue;
            font-size: 40px;
        }

        .login_container .hline {
            width: 100%;
            height: 0.1vh;
            background-color: #dfdfdf;
            margin-bottom: 4vh;
        }

        .login_container .account_input .item{
            position: relative;
            width: 320px;
            height: 4.5vh;
            margin-top: 4vh;
            margin-left: 40px;
            border-radius: 0.4em;
        }

        .account_input .user-icon {
            background: url(/images/user.jpg) no-repeat;
        }

        .account_input .pwd-icon {
            background: url(/images/lock.jpg) no-repeat;
        }

        .account_input .item i {
            position: absolute;
            left: 0;
            height: 7vh;
            width: 7vh;
            border-top-left-radius: 0.4em;
            border-bottom-left-radius: 0.4em;
            background-size: 4.5vh 4.5vh;
            background-position: center;
        }

        .account_input .item input {
            width: 100%;
            padding-left: 9vh;
            font-size: 1.2em;
            line-height: 6.8vh;
            margin-left: 5%;
        }
        /* 登录 */
        .login_container .click_login {
            margin-left: 20%;
            margin-top: 60px;
            width: 60%;
            height: 5vh;
            background: #03a9f4;
            color: white;
            border-radius: 0.4em;
            font-size: 1.4em;
            cursor: pointer;
        }
        .login_container .to_register {
            width: 8.5vw;
            display: block;
            margin-left: 47%;
            font-size: 1.1em;
        }

    </style>
</head>
<body>
<div class="container">
    <!-- 顶部导航栏 -->
    <header class="header">
        <div class="logo">
        </div>
        <h2 class="brand">欢迎来到杨荣杰的个人网站</h2>
    </header>

    <!-- 主体内容 -->
    <main>
        <!-- 左侧轮播图 -->
        <div class="left">
            <div class="left_container">
                <div class="focus">
                    <a>
                        <img id="imgs" src="/images/p2.jpg" alt="">
                    </a>
                    <div class="lleft">
                        <img src="/images/left.jpg" alt="">
                    </div>
                    <div class="rright">
                        <img src="/images/right.jpg" alt="">
                    </div>
                </div>
            </div>
        </div>

        <!-- 右侧登陆界面 -->
        <div class="right">
            <form action="golog" method="post" class="login_container">
                <div class="login_method">
                    <span><a class="account_a">账号登录</a></span>
                </div>

                <!-- 分割线 -->
                <div class="hline"></div>

                <div class="account_input">
                    <div class="item">
                        <i class="user-icon"></i>
                        <input type="text" id="username" name="username" placeholder="请输入账号" autofocus="autofocus" required>
                    </div>
                    <div class="item">
                        <i class="pwd-icon"></i>
                        <input type="password" id="password" name="password" placeholder="请输入密码" required>
                    </div>
                </div>
                <!-- 登录按钮 -->
                <input type="submit" class="click_login" value="登录"/>

                <!-- 未注册 -->
                <a href="http://localhost:8080/JSPWork/reg" class="to_register">注册</a>
            </form>

        </div>
    </main>
</div>
<script>
    var index=0;
    var img_data=['/images/p1.jpg','/images/p2.jpg','images/p3.jpg', 'images/p4.jpg', 'images/p5.jpg']
    // 获得相应元素对象
    var rright=document.getElementsByClassName("rright")[0];
    var llef=document.getElementsByClassName("lleft")[0];
    var img=document.getElementById("imgs");
    // 通过对象的单击事件触动函数调用函数实现图片切换
    rright.onclick=function(){
        index++;
        if(index==img_data.length) index=0;
        img.setAttribute('src',img_data[index]);
    }
    llef.onclick=function(){
        if(index==0) index=img_data.length;
        index--;
        img.setAttribute('src',img_data[index]);
    }
</script>
</body>
</html>


