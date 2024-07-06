<%@page import="com.govt.banksystem.entity.Customer"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>

body
{
  width:100%;
  height:90vh;
  background-image: url("atm.jpg");
  background-position: center;
  background-repeat: no-repeat;
  background-color: gray;
}
#accountBalance
{
  position: relative;
    color: white;
    top: 56px;
    left: 360px;
}
#amount
{
    position: relative;
    color: green;
    top: 56px;
    left: 360px;
  
}
#backButton
{
  width: 118px;
   height: 33px;
   border-radius:5px;
   border:none;
   font-size: 16px;
   cursor:pointer;
   background-color:rgb(165, 184, 199);
   position: absolute;
   top: 60%;
   left: 45%;
   letter-spacing: 3px;
}
</style>
</head>
<body>
           <%
               Customer cst = (Customer)request.getAttribute("balanceInfo");
               if(cst!=null)
               {
            	   
               
           %>
             <h3 id="accountBalance">Your Current Account Balance Is  </h3>
             
               <h1 id="amount"> Rs <%=cst.getAmount() %></h1>
             
                <a href="TransactionDetails.jsp">
                <input id="backButton" type="button" value="Back">
                </a>
           <%
               }
           %>
</body>
</html>