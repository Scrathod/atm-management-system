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
#depositButton,#cashWithdrawButton,#balanceEnquiry,#pinChange,#fastCash,#exitButton
{
    width: 118px;
   height: 33px;
   border-radius:5px;
   border:none;
   font-size: 16px;
   cursor:pointer;
   background-color:rgb(165, 184, 199);
}

#cashWithdrawButton
{
  position: relative;
  top: 117px;
  right: 40px;
  width: 180px;
}
#depositButton
{
  position: relative;
  top: 200px;
  right: 250px;
  width: 130px;
}
#exitButton
{
  position: relative;
  top: 125px;
  right: 40px;
   width: 180px;
   letter-spacing: 3px;
}
#fastCash
{
  position: relative;
  top: 115px;
  right: 250px;
  width: 130px;
}
#pinChange
{
  position: relative;
  top: 143px;
  right: 40px;
  width: 180px;
}
#balanceEnquiry
{
  position: relative;
  top: 130px;
  right: 40px;
  width: 180px;
}
#selectTransaction
{
  position: relative;
    color: white;
    top: 56px;
    right: 130px;
}

</style>
</head>
<body>
          <center>
          
          <%
            Customer customer = (Customer)request.getAttribute("details");
            if(customer!=null)
            {
            	session.setAttribute("pin", customer.getPin());
            }
          %>
         
          <h3 id="selectTransaction">Please Select Your Transaction</h3>
         <form action="DepositeAmount.jsp">
          
          <input id="depositButton" type="submit" value="DEPOSIT">
         </form>
          
          
          <form action="CashWithdrawl.jsp">
          <input id="cashWithdrawButton" type="submit" value="CASH WITHDRAWL">
          </form>
          
          
         
          <form action="balanceEnquiry">
          
          
           <input name="pin" value="<%= (Integer)session.getAttribute("pin")%>" hidden="true">
          <input id="balanceEnquiry" type="submit" value="BALANCE ENQUIRY">
          </form>
        
          <form action="PinChange.jsp">
         
          <input id="pinChange" type="submit" value="PIN CHANGE">
          </form>
         
          <form action="FastCash.jsp">
          <input id="fastCash" type="submit" value="FAST CASH">
          </form>
          <a href="index.jsp">
          <input type="button" value="EXIT" id="exitButton">
          </a>
          </center>
</body>
</html>