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
    <title>杭州美食</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/content.css">
</head>
<body>
<center>
    <%
                ResultSet rs=null;
                try {
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    String url = "jdbc:mysql://localhost:3306/login?serverTimezone=UTC"; //数据库名
                    String username = "root"; //数据库用户名
                    String password = "yang123123"; //数据库用户密码
                    Connection conn = DriverManager.getConnection(url, username, password); //连接状态
                    System.out.println("数据库连接成功！");
                    %>
        <%
                    Statement stmt = null;
                    rs = null;
                    String sql = "select * from food where Fname = '" + request.getParameter("Fname") + "'"; //查询语句
                    stmt = conn.createStatement();
                    rs = stmt.executeQuery(sql);
                    out.print("<br/>");
                    out.print("<br/>");
                    out.print("<br/>");
                    while (rs.next()) {
                        %>


<div class="container">
    <div class="header">
        <div class="left">
            <p><font face="华文行楷" size="7" color="blue"><%=rs.getString("Fname")%></font></p>
        </div>
        <div class="right">
            <p><%=rs.getString("Fcategory")%></p>
        </div>
    </div>

    <main>
        <div class="left">
            <div class="span">
                <h1><font face = "华文行楷" size ="5" color = "blue">简介</font></h1>
            </div>
            <div class="left_container">
                <p><%=rs.getString("Fintro")%></p>
            </div>
            <div class="span">
                <h1><font face = "华文行楷" size ="5" color = "blue">历史</font></h1>
            </div>
            <div class="left_container">
                <p><%=rs.getString("Fhistory")%></p>
            </div>
        </div>

        <div class="right">
            <div class="right_container">
                <img src="<%=rs.getString("Fphoto")%>" width="100%" height="100%">
            </div>
        </div>
    </main>
</div>
            <%
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                    System.out.println("数据库连接失败");
                }
                %>
</body>
</center>
</html>

