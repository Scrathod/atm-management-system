<%@page import="com.govt.banksystem.entity.Customer"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
#cardContainer,#failedCont
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
#inputWithdraw
{
   position: relative;
   top: 50px;
   right: 5px;
   width: 20%;
   height: 26px;
   font-size: 18px;
   color: green;
   outline: none;
}
#withdrawButton,#backButton
{
   position: relative;
   top: 240px;
   right: 150px;
   width: 128px;
   height: 33px;
   border-radius:5px;
   border:none;
   font-size: 16px;
   cursor:pointer;
   background-color:rgb(165, 184, 199);
   letter-spacing: 2px;
}
#withdrawButton
{
   position: relative;
   right: 90px;
   
}
#backButton
{
  position: relative;
  top: 280px;
  right: 220px;
   width: 128px;
   letter-spacing: 3px;
}
#withdrawAmount
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
  bottom: 10px;
}

</style>
</head>
<body>
           <center>
          
           
            
           <h3 id="withdrawAmount">Please Enter Your Amount</h3>
           <form action="withdrawAmount">
           <input name="pin" value="<%= (Integer)session.getAttribute("pin")%>" hidden="true">
           <input id="inputWithdraw" name="amount">
           <input id="withdrawButton" type="submit" value="WITHDRAW">
           <a href="TransactionDetails.jsp">
           <input id="backButton" type="button" value="Back">
           </a>
           
           </form>
           
           
           <%
              Customer cst = (Customer)request.getAttribute("withdrawCustomer");
             
             
              if(cst!=null)
              {
            	
                double amount = (Double)request.getAttribute("withdrawAmount");
               
               
           %>
           
             
           <div id="cardContainer">
             <div id="messageContainer">
             <h3>Message</h3>
             </div>
             <h3>Rs <span><%=amount %> </span> Withdrawl Successful</h3>
             
             <a href="TransactionDetails.jsp">
             <input type="submit" value="Ok">
             </a>
           
           
           </div>
           
           <%
                
              }
              String message = (String)request.getAttribute("message");
              if(message!=null)
              {
           %>
            <div id="failedCont">
            <div id="messageCont">
            <h3>Message</h3>
            </div>
            <h3 style="color: red;"><%=message %></h3>
            <a href="TransactionDetails.jsp">
            <input type="button" value="Back" id="back">
            </a>
            <%
              }
            %>
            </div>
            </center>
</body>
</html>