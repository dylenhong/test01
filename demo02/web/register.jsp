<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/2/25
  Time: 9:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册</title>
</head>
<body>
<form action="doRegister.jsp" method="post">
    <table>
        <tr>
            <td colspan="2" align="center">请输入注册信息</td>
        </tr>
        <tr>
            <td>
                用户名：
            </td>
            <td>
                <input type="text" name="username"/>
            </td>
        </tr>
        <tr>
            <td>密码：</td>
            <td><input type="password" name="password"></td>
        </tr>
        <tr>
            <td>email：</td>
            <td><input type="text" name="email"></td>
        </tr>
        <tr>
            <td>信息来源</td>
            <td>
                <input type="checkbox" name="info" value="报刊">报刊
                <input type="checkbox" name="info" value="网络">网络
                <input type="checkbox" name="info" value="朋友推荐">朋友推荐
                <input type="checkbox" name="info" value="电视">电视
            </td>

        </tr>
        <tr>
            <td colspan="2"><input type="submit"></td>
        </tr>
    </table>
</form>
</body>
</html>
