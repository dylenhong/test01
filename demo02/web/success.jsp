<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/2/25
  Time: 15:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String username = (String)session.getAttribute("username");
    if(username != null){
    %>

        <h1>登录成功！欢迎你！<%=username %></h1>
<%
    }else{
        response.sendRedirect("login.jsp");
    }
%>
</body>
</html>
