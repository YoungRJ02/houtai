<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<%@page import="java.sql.*"%>
<%@ page import="java.io.File" %>
<%@ page import="java.net.URL" %>
<%@ page import="java.net.HttpURLConnection" %>
<%@ page import="java.awt.image.BufferedImage" %>
<%@ page import="java.awt.*" %>
<%@ page import="javax.imageio.ImageIO" %>
<%--导入java.sql包--%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <title>个人简历</title>
    <style type=text/css>
        body{
            background: url("/images/bg3.jpg") no-repeat;
            background-size: cover;
        }
    </style>
</head>
<body>
<center>
    <%
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/login?serverTimezone=UTC"; //数据库名
            String username = "root"; //数据库用户名
            String password = "yang123123"; //数据库用户密码
            Connection conn = DriverManager.getConnection(url, username, password); //连接状态
            System.out.println("数据库连接成功！");
    %>
    <table border="2">
        <tr>
            <th>名字</th>
            <th>住址</th>
            <th>年龄</th>
            <th>电话</th>
            <th>邮箱</th>
            <th>自我介绍</th>
            <th>照片</th>
        </tr>
            <%
				Statement stmt = null;
					ResultSet rs = null;
					String sql = "select * from jianli where Jname = '" + request.getParameter("Jname")+"'" ; //查询语句
					stmt = conn.createStatement();
					rs = stmt.executeQuery(sql);
					out.print("<br/>");
                    out.print("<br/>");
                    out.print("<br/>");
					while (rs.next()) {
			%>
        <tr>
            <td><%=rs.getString("Jname")%></td>
            <td><%=rs.getString("Jaddress")%></td>
            <td><%=rs.getString("Jage")%></td>
            <td><%=rs.getString("Jphone")%></td>
            <td><%=rs.getString("Jmail")%></td>
            <td><%=rs.getString("Jintro")%></td>
            <td><img src="<%=rs.getString("Jphoto")%>" width="650px" height="450px"></td>

        </tr>
            <%
				}
				} catch (Exception e) {
					e.printStackTrace();
					System.out.println("数据库连接失败");
				}
			%>
</center>
</body>
</html>

