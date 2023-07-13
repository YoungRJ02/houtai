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
    <title>杭州美景</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/module.css">
    <script src="${pageContext.request.contextPath}/js/module.js"></script>
</head>
<body>
<h1 align="center"><font face = "华文行楷" size ="10" color = "blue">杭州美景</font></h1>
<div class="container">
    <div class="search">
        <form action="gomeijing" method="post" class="login_container">
            <input type="text" id="Mname" name="Mname" placeholder="可查询西湖，良渚遗址，西溪湿地，拱宸桥，半山" autofocus="autofocus" required>
            <input type="submit" class="click_login" value="查询"/>
        </form>
    </div>
    <div class="row">
        <div class="imgBox">
            <img class="img-slide img1" src="https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fcdn.huodongxing.com%2Ffile%2Fue%2F20150519%2F110FE5CE557D48AE4FA254DDF256887314%2F30684158464270253.jpg&refer=http%3A%2F%2Fcdn.huodongxing.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1670665822&t=06cbf6db7847fb5fcdbdb26785ec8fbc"  alt="1">
            <img class="img-slide img2" src="https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.mp.itc.cn%2Fq_70%2Cc_zoom%2Cw_640%2Fupload%2F20160927%2F2a8fc730d2c247a4865812b71b5b51fc_th.jpeg&refer=http%3A%2F%2Fimg.mp.itc.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1670665852&t=d4c0ab5e9a760851af0472450ec39abc" alt="2">
            <img class="img-slide img3" src="https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimagepphcloud.thepaper.cn%2Fpph%2Fimage%2F173%2F558%2F908.jpg&refer=http%3A%2F%2Fimagepphcloud.thepaper.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1670665932&t=3627cf8422343974fc570469d2daf7a5"alt="3">
            <img class="img-slide img4" src="https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc2.hoopchina.com.cn%2Fuploads%2Fstar%2Fevent%2Fimages%2F160610%2F156d59064291d3324bfe8e4cb36dc903f7952e30.jpg&refer=http%3A%2F%2Fc2.hoopchina.com.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1670666145&t=1e07c0d6fa2c3b20b84713ba9a4ae031"alt="4">
            <img class="img-slide img4" src="https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fp5.itc.cn%2Fq_70%2Fimages03%2F20220207%2F75ba92d6568e426fbd5e239587751bb4.jpeg&refer=http%3A%2F%2Fp5.itc.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1670666222&t=8181a6f9066bf13b9849def67998e8d0"alt="5">
        </div>
    </div>
    <div class="row2">
        <p style="text-indent:3em;"><font face = "楷体" size ="4" color = "black">杭州拥有两个国家级风景名胜区——西湖风景名胜区、“两江两湖”（富春江——新安江——千岛湖——湘湖）风景名胜区；两个国家级自
            然保护区——天目山、清凉峰自然保护区；七个国家森林公园——千岛湖、大奇山、午潮山、富春江、青山湖、半山和桐庐瑶琳森林公园；一个国家级旅游度假区——之江国家旅游度假区；全
            国首个国家级湿地——西溪国家湿地公园。杭州还有全国重点文物保护单位25个、国家级博物馆9个。全市拥有年接待1万人次以上的各类旅游景区、景点120余处。著名的旅游胜地有瑶琳仙
            境、桐君山、武盛古街、雷峰塔、岳庙、三潭映月、苏堤、六和塔、宋城、南宋御街、灵隐寺、跨湖桥遗址等。2011年6月24日，杭州西湖正式列入《世界遗产名录》。</font></p>
    </div>
</div>
</body>

</html>
