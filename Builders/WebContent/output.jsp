<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
    <%@page import="com.builders.dao.MemberDao"%>
    <%@page import="com.builders.daoImpl.MemberDaoImpl"%>
    
     <%@page import="com.builders.dao.UserOrderDao"%>
    <%@page import="com.builders.daoImpl.UserOrderDaoImpl"%>
    <%@page import="com.builders.model.BuyDetails"%>
    
    <%@page import=" java.util.List"%>
    
    
    <%@page import=" com.builders.model.Plans"%>
    
    
    <%@page import=" com.builders.dao.PlanDao"%>
    
    <%@page import=" com.builders.daoImpl.PlanDaoImpl"%>
    
    
    
     <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>OUTPUT PAGE</h1>


<%




MemberDao dao=new MemberDaoImpl();
long memberCount=dao.CountTotalMember();
out.println("  TotalCount of Member is:"+memberCount);
request.setAttribute("memberCount",memberCount);

%>


<br/>
<br/>
<br/>
<br/>
<br/>
<br/>



<% 
UserOrderDao orderDao=new UserOrderDaoImpl();


long orderCount=orderDao.CountTotalOrders();
out.println("Total Count Of Orders is: "+orderCount);
request.setAttribute("orderCount", orderCount);

%>

<br/>
<br/>
<br/>
<br/>
<br/>
<br/>


<% 
UserOrderDao recentDao=new UserOrderDaoImpl();

/* List<BuyDetails> list=recentDao.RecentFiveOrders();
out.println("Recent five  Orders are: "+list);


 */
 
 double orderTotal=recentDao.orderTotal();
 System.out.println("order total is :"+orderTotal);
 request.setAttribute("orderTotal",orderTotal);

List<Object[]> list=recentDao. getRecentFiveOrders();

System.out.println("JOIN TABLE OUTPUT IS :"+list);

request.setAttribute("list", list);
%>
.
<p>${memberCount}</p>


<p>${orderTotal}</p>

<p>${list}</p>


</body>
</html>