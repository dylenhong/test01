<%@page import="org.news.entity.User"%>
<%@page import="org.news.dao.user.impl.UserDaoImpl"%>
<%@page import="org.news.dao.user.UserDao"%>
<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="utf-8"%>
<%
	String uname = request.getParameter("uname");
	String password = request.getParameter("upwd");
	System.out.print(uname+","+password);
    UserDao userDao=new UserDaoImpl();
    User user1 = new User();
    user1.setUname(uname);
    user1.setUpwd(password);
    User user =userDao.findUser(user1);
	if(user==null){	
%>
<script	type="text/javascript">
	alert("用户名密码错误，请重新登录");
	open("../index.jsp","_self");	
</script>
<%
	}else{		
		session.setAttribute("admin",uname);
		response.sendRedirect("../util/do_news_list.jsp");
	}
%>
