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
    request.setCharacterEncoding("utf-8");
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    if("大卫".equals(username) && "123".equals(password)){
        Cookie cookie = new Cookie("user","david");
        response.addCookie(cookie);
        request.getRequestDispatcher("success01.jsp").forward(request,response);
    }else{
        response.sendRedirect("login.jsp");
    }

%>
</body>
</html>
