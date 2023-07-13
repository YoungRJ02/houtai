<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>期末大作业</title>
    <style type="text/css">
        div,ul,li{
            margin: 0;
            padding: 0;
        }
        .container{
            width: 100%;
            height: 100%;
            position: relative;
            background-color: white;
        }
        .head{
            width:90%;
            height:200px;
            display: flex;
            margin-right: 50px;
            margin-left: 80px;
            background:url(/images/bg2.jpg) no-repeat;
            background-size:cover;
        }
        .row{
            height:80px;
            display: flex;
            background-color:white;
            margin-left: 23%;
            margin-top: 10px;
            margin-bottom: 10px;
        }
        .row ul{
            list-style:none;
        }
        .row li{
            float:left;
        }
        .row li a{
            background-color:#1a36d7;
            text-decoration:none;
            color:#ffffff;
            display:block;
            width:170px;
            height:65px;
            line-height:40px;
            text-align:center;
            margin-right:1px;
            padding-top: 15px;
            font-size: 20px;
        }
        .row li a:hover{
            background-color:#FF6600;
            color:#ffffff;
        }
        .row2{
            width:90%;
            height:850px;
            margin-top: 10px;
            display: flex;
            background:url(/images/welcome.jpg) no-repeat;
            background-size: 100% 100%;
            margin-right: 50px;
            margin-left: 80px;
        }
        .row3{
            width:90%;
            height:170px;
            margin-top: 10px;
            display: flex;
            background-color: rgb(248, 248, 255);
            margin-right: 50px;
            margin-left: 80px;
        }

    </style>
</head>
<body >
<div class="container">
    <div class="head">
        <table width="1200" border="0" cellspacing="0" cellpadding="0" align="center">
            <tr>
                <td><img src="/images/logo.jpg" height=80 width=280></td>
                <td><font face = "黑体" size ="10" color = "black">基于Java的Web开发期末大作业</font></td>
            </tr>
        </table>
    </div>
    <div class="row">
        <ul>
            <li><a href="http://localhost:8080/JSPWork/food" target="text">杭州美食</a></li>
            <li><a href="http://localhost:8080/JSPWork/meijing" target="text">杭州美景</a></li>
            <li><a href="http://localhost:8080/JSPWork/renwen" target="text">杭州人文</a></li>
            <li><a href="http://localhost:8080/JSPWork/jianli" target="text">个人简历</a></li>
            <li><a href="http://localhost:8080/JSPWork/houtai" target="_blank">后台管理</a></li>
            <li><span id="clock" ></span>
                <script type="text/javascript">
                    var clock = new Clock();
                    clock.display(document.getElementById("clock"));
                </script></li>
        </ul>
    </div>
    <div class="row2">
        <iframe name="text" width="100%" height="900px">
        </iframe>
    </div>
    <div class="row3">
        <table width="800" border="0" align="center">
            <tr>
                <th><font face = "仿宋" size = "2" color="#696969">
                    基于Java的Web开发期末大作业<br/>
                     Final assignment for Java based web development <br/>
                    学校：中国计量大学 班级：21计算机3班 姓名：杨荣杰   浙江省杭州市 <br/>
                    学号：2100303312  手机：15858206716  邮箱：1325235470@qq.com  完成时间:2023/5/15</font></th>
            </tr>
        </table>
    </div>

</div>
</body>
</html>