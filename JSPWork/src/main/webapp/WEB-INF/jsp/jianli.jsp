<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2023/5/15
  Time: 16:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style type="text/css">
        * {
            margin: 0;
            padding: 0;
        }

        a {
            text-decoration: none;
        }

        .clearfix:after {
            content: "";
            display: block;
            height: 0;
            visibility: hidden;
            clear: both;
        }

        .clearfix {
            *zoom: 1;
        }

        body {
            background:url(https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.1ppt.com%2Fuploads%2Fallimg%2F2011%2F1_201118081656_5.JPG&refer=http%3A%2F%2Fimg.1ppt.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1670738866&t=f817f07ba57d693b18fa83602a7fb747) no-repeat;
            background-size: cover;

        }

        .content {
            width: 900px;
            height: 500px;
            margin-top:20px;
            margin-left: 19%;
            border-radius: 10px;
            background-color: rgba(255, 255, 255, 0.59);
            transition: all 1.0s;
        }

        .search{
            width:450px;
            height:50px;
            margin-left:37%;
            margin-top:7%;
            display: flex;
        }
        .search input{
            width: 300px;
            padding-left: 0.5vh;
            font-size: 0.5em;
            line-height: 3.8vh;
            margin-left: 5%;
        }

        .content img {
            float: left;
            width: 200px;
            height: 200px;
            margin: 150px 0 0 80px;
            border-radius: 100px;

        }

        .content:hover {
            box-shadow: 0px 0px 20px rgba(0, 0, 0, 0.52);
        }

        .content_r {
            float: right;
            width: 500px;
            margin-top: 80px;
            /*	background-color: pink;*/
        }

        .content_l {
            float: left;
            width: 100%;
            text-align: center;
        }

        .content_l h5 {

            font-size: 17px;
        }

        .cc {
            margin-top: 10px;
            color: #1F2023;
            font-size: 30px;
        }

        .color_1 {
            color: #545cb3;
            font-size: 18px;
        }

        .link a {
            display: block;
            float: left;
            width: 120px;
            height: 45px;
            margin: 5px 5px 0 0;
            /*	padding: 0 15px;*/
            color: #fff;
            line-height: 45px;
            transition: all 0.8s;
            /*	background-color: deeppink;*/

        }

        .link a:hover {
            background-color: rgba(0, 201, 243, 0.35);
        }

    </style>
</head>
<body>
<div class="search">
    <form action="goJianli" method="post" class="login_container">
        <input type="text" id="Jname" name="Jname" placeholder="" autofocus="autofocus" required>
        <input type="submit" class="click_login" value="查询"/>
    </form>
</div>
<div class="content">
    <img src="/images/touxiang.jpg" alt="">
    <div class="content_r clearfix">
        <div class="content_l clearfix">
            <h2><font face="楷体" size="7">我是杨荣杰</font></h2>
            <p class="cc">欢迎来到我的主页</p>
            <p class="cc">这是基于Java的Web开发期末大作业</p>
            <br>
            <p class="color_1"><font face="楷体" size="6">2100303312</font></p>
            <p class="color_1"><font face="楷体" size="6">21计算机3班</font></p>
            <br>
        </div>
    </div>
</div>
</body>
</html>
