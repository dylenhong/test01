<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/2/25
  Time: 16:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    Integer count = (Integer)application.getAttribute("count");
    if(count != null){
        count++;
    }else{
        count=1;
    }
    application.setAttribute("count",count);
%>
您是第<%=application.getAttribute("count")%>个访问者
</body>
</html>
