<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/2/25
  Time: 9:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%
        request.setCharacterEncoding("utf-8");
    %>
    <title>表单提交目标页面</title>
    <table>
        <tr>
            <td>用户名：</td>
            <td><%=request.getParameter("username") %></td>
        </tr>
        <tr>
            <td>密码：</td>
            <td><%=request.getParameter("password") %></td>
        </tr>
        <tr>
            <td>email：</td>
            <td><%=request.getParameter("email") %></td>
        </tr>
        <tr>
            <td>信息来源：</td>
            <td>
                <%
                    String[] infos = request.getParameterValues("info");
                    for (String str: infos) {
                        %>
                <%=str %>
                <%
                    }
                %>
            </td>
        </tr>
    </table>
</head>
<body>

</body>
</html>
