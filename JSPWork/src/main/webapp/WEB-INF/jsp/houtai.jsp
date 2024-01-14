<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2023/5/17
  Time: 16:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>后台</title>
    <style type=text/css>
        *{
            margin: 0;
            padding: 0;
        }
        html,body{
            height: 100%;
        }
        .container{
            width: 100%;
            height: 100%;
            display: flex;
        }
        .right{
            height: 100%;
            width: 500px;
            margin-left: 12px;
            flex: 1;
            background-size: cover;
            display: flex;
        }
        .wrap{
            height: 100%;
            width: 260px;
            background-color: #aaacae;
            text-align: center;
            color: #fff;
        }
        .header{
            height: 60px;
            background-color: #44495a;
            font-size: 20px;
            line-height: 60px;
        }
        .nav{
            width: 250px;
            margin: 10px 5px;
        }
        .nav-list h2{
            position:relative;
            padding: 15px 0;
            background-color: #3889d4;
            font-size: 15px;
        }
        .nav-list a{
            text-decoration:none;
            font-size: 15px;
        }
        .nav-list h2:hover{
            background-color: RoyalBlue;
            color: #cdcdcd;
        }
        .nav-list i{
            position:absolute;
            right: 10px;
            top: 16px;
            border: 8px solid transparent;
            border-left-color: #fff;
            transform-origin: 1px 7px;
            transition: .8s;
        }
        .nav-list li{
            margin-top: 5px;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="wrap">
        <div class="header">后台管理</div>
        <div class="nav">
            <ul>
                <li class="nav-list">
                    <h2>
                        <a href="http://localhost:8080/JSPWork/foodhoutai" target="TT">杭州美食</a>
                        <i></i>
                    </h2>
                </li>
                <li class="nav-list">
                    <h2><a href="http://localhost:8080/JSPWork/meijinghoutai" target="TT">杭州美景</a>
                        <i></i>
                    </h2>
                </li>
                <li class="nav-list">
                    <h2><a href="http://localhost:8080/JSPWork/renwenhoutai" target="TT">杭州人文</a>
                        <i></i>
                    </h2>
                </li>
                <li class="nav-list">
                    <h2><a href="http://localhost:8080/JSPWork/userhoutai" target="TT">用户信息</a>
                        <i></i>
                    </h2>
                </li>
                <li class="nav-list">
                    <h2><a href="http://localhost:8080/JSPWork/showdeletefood" target="TT">已删食物</a>
                        <i></i>
                    </h2>
                </li>
                <li class="nav-list">
                    <h2><a href="http://localhost:8080/JSPWork/foodlog" target="TT">修改记录</a>
                        <i></i>
                    </h2>
                </li>
            </ul>
        </div>
    </div>
    <div class="right">
        <iframe name="TT" width="99%" height="99%"></iframe>
    </div>
</div>
</body>
</html>
