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
  <title>杭州美食</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/module.css">
  <script src="${pageContext.request.contextPath}/js/module.js"></script>
</head>
<body>
<h1 align="center"><font face = "华文行楷" size ="10" color = "blue">杭州美食</font></h1>
<div class="container">
  <div class="search">
    <form action="goFood" method="post" class="login_container">
      <input type="text" id="Fname" name="Fname" placeholder="可查询片儿川，东坡肉，西湖醋鱼，叫花童子鸡" autofocus="autofocus" required>
      <input type="submit" class="click_login" value="查询"/>
    </form>
  </div>
  <div class="row">
    <div class="imgBox">
      <img class="img-slide img1" src="https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fpicapi.zhituad.com%2Fphoto%2F94%2F77%2F05EAA.jpg&refer=http%3A%2F%2Fpicapi.zhituad.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1668925266&t=cef562b6c4969d3b2bbc79bdaab8763d"  alt="1">
      <img class="img-slide img2" src="https://statics.dujiabieshu.com/statics/manager/ueditor/php/upload/image/20210121/8ca66e27417486d85690937952bc9791477543.jpg" alt="2">
      <img class="img-slide img3" src="https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fpic.ecook.cn%2Fweb%2F262981371.jpg%21wd780&refer=http%3A%2F%2Fpic.ecook.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1668926280&t=af1162ba07aed366186ac127f59f1b34"alt="3">
      <img class="img-slide img4" src="https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fsafe-img.xhscdn.com%2Fbw1%2Fc0023707-5bee-4327-9ccd-58b755180c8b%3FimageView2%2F2%2Fw%2F1080%2Fformat%2Fjpg&refer=http%3A%2F%2Fsafe-img.xhscdn.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1686898067&t=2c04ae381d9032dfa2c61b060b7853cd"alt="4">
      <img class="img-slide img4" src="https://img2.baidu.com/it/u=3024506273,1079835294&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=280"alt="5">
    </div>
  </div>
  <div class="row2">
    <p style="text-indent:3em;"><font face = "楷体" size ="4" color = "black">杭帮菜，是浙江饮食文化的重要组成部分，属于浙江菜的重要流派，它与宁波菜、温州菜、绍兴菜共同构成传统的浙江菜系。
      杭帮菜的口味以咸为主，略有甜头。“清淡”是杭帮菜的一个象征性特点。特色菜品有西湖醋鱼、东坡肉、龙井虾仁、笋干老鸭煲、八宝豆腐等。杭州菜源远流长
      ，是浙江饮食文化的重要组成部分。近年来，杭州餐饮市场发展迅速，涌现出许多在全国有相当知名度的菜肴。这些新菜博采众长，精工细作，无论是在做功还是
      色香味上，都超越了传统的浙菜。</font></p>
  </div>
</div>
</body>

</html>
