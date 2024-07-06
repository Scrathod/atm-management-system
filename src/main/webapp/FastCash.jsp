<%@page import="com.govt.banksystem.entity.Customer"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
#cardContainer,#transactionFail
        {
            width: 270px;
            height: 130px;
            background-color:silver;
            font-size: 13px;
            border-radius: 5px;
            border: 2px solid gray;
            filter: drop-shadow(2px 2px 2px gray);
            position: absolute;
		    top: 30%;
		    left:30%;
		    z-index: 10;
           
        }
        #messageContainer,#messageCont
        {
            width: 270px;
            height: 35px;
          background-color: rgba(240, 236, 236, 0.902);
          position: relative;
          bottom: 13px;
           
        }
body
{
  width:100%;
  height:90vh;
  background-image: url("atm.jpg");
  background-position: center;
  background-repeat: no-repeat;
  background-color: gray;
}
#button100,#button200,#button500,#button2000,#backButton
{
  width: 118px;
   height: 33px;
   border-radius:5px;
   border:none;
   font-size: 16px;
   cursor:pointer;
   background-color:rgb(165, 184, 199);
}
#button100
{
   position: relative;
  top: 200px;
  right: 250px;
}
#button200
{
   position: relative;
  top: 214px;
  right: 250px;
}
#button500
{
  position: relative;
  top: 100px;
  right: 40px;
  
}
#button2000
{
  position: relative;
  top: 117px;
  right: -23px;
  
}
#backButton
{
  position: relative;
  top: 180px;
  right: 95px;
}
#selectWithdrawl
{
   position: relative;
    color: white;
    top: 56px;
    right: 130px;
}
span
{
  color: green;
  font-weight: bold;
}
#back
{
  position: relative;
  bottom: 7px;
  
}
</style>
</head>
<body>
          <center>
          
          
          <h3 id="selectWithdrawl">Select Withdrawl Amount</h3>
         <form action="fastCashDebit">
         <input name="pin" value="<%= (Integer)session.getAttribute("pin")%>" hidden="true">
         <input name="amount" value="100" hidden="true">
         <input id="button100" type="submit" value="Rs 100">
         </form>
        
         
         <form action="fastCashDebit">
         <input name="pin" value="<%= (Integer)session.getAttribute("pin")%>" hidden="true">
         <input name="amount" value="200" hidden="true">
         <input id="button200" type="submit" value="Rs 200">
         </form>
       
         <form action="fastCashDebit">
         <input name="pin" value="<%= (Integer)session.getAttribute("pin")%>" hidden="true">
         <input name="amount" value="500" hidden="true">
         <input id="button500" type="submit" value="Rs 500">
         </form>
         
         <form action="fastCashDebit">
         <input name="pin" value="<%= (Integer)session.getAttribute("pin")%>" hidden="true">
         <input name="amount" value="2000" hidden="true">
         <input id="button2000" type="submit" value="Rs 2000">
         
         
         <a href="TransactionDetails.jsp">
         <input id="backButton" type="button" value="Back">
         </a>
         </form>
         <%
             Customer cst = (Customer)request.getAttribute("fastCash");
             if(cst!=null)
             {
            	 double amount = (Double)request.getAttribute("amount");
            	 session.setAttribute("pin", cst.getPin());
            
          %>
              <div id="cardContainer">
              <div id="messageContainer">
               <p id="message">Message</p>
              </div>
                <h3>Rs. <span><%=amount %> </span>debited sucessfully </h3>
                <a href="TransactionDetails.jsp">
                <input type="button" value="Ok">
                </a>
              </div>
          <%
             }
          %>
         
         <%
             String message = (String)request.getAttribute("message");
             if(message!=null)
             {
         %>
         <div id="transactionFail">
         <div id="messageCont">
         <h3>Message</h3>
         </div>
         <h3 style="color:red;"><%=message %></h3>
         <a href="TransactionDetails.jsp">
         <input type="button" value="Back" id="back">
         </a>
         </div>
         <%
             }
         %>
         </center>
</body>
</html>