
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
 #cardContainer
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
        #messageContainer
        {
            width: 270px;
            height: 35px;
          background-color: rgba(240, 236, 236, 0.902);
          position: relative;
          bottom: 13px;
           
        }
  #enterAmount
  {
    position: relative;
    color: white;
    top: 56px;
    right: 130px;
  }
#amount
{
  position: relative;
  top: 50px;
  right: 10px;
  width: 25%;
  height: 30px;
  font-size: 20px;
  color: green;
  font-weight: bold;
  outline: none;
}
#depositButton
{
   position: relative;
   top: 220px;
   right: 115px;
   width: 118px;
   height: 33px;
   border-radius:5px;
   border:none;
   font-size: 19px;
   letter-spacing: 2px;
   background-color:rgb(165, 184, 199);
}
#backButton
{
   position: relative;
   top: 275px;
   right: 235px;
   width: 118px;
   height: 33px;
   border-radius:5px;
   border:none;
   font-size: 19px;
   letter-spacing: 2px;
   background-color:rgb(165, 184, 199);
}
span
{
  color: green;
  font-weight: bold;
}
</style>
</head>
<body>
         <center>
                
           
             
       		<h3 id="enterAmount">Enter Amount You Want To Deposit</h3>
       		<form action="depositeAmount">
       		
       		 <%
               Customer cst = (Customer)request.getAttribute("customer");
             
             if(cst!=null)
             {
                
            	 session.setAttribute("pin", cst.getPin());
             }
             
           %>
       		<input type="text" name="pin"  value="<%=(Integer)session.getAttribute("pin") %>" hidden="true">
       		
       		
       		<input id="amount" type="number" name="amount">
       		
       		<input id="depositButton" type="submit" value="Deposit">
       		<a href="http://localhost:8080/applyForAccount?custname=Sachin&custfathername=Subhash&dob=2999-02-01&gender=Male&aadhar=345630329434&pan=KASWQ5463L&email=sachincrathod35%40gmail.com&mobile=9000112234&maritalstatus=Married&address=Andoor&city=Bidar&pincode=585853&state=Karnataka&religion=Hindu&category=SC&qualification=Graduate&income=%3C2%2C50%2C000&occupation=Self-+Employed&seniorcitizen=No&existingaccount=No&accounttype=Saving&services=ATM+Card&services=Internate+Banking">
       		<input id="backButton" type="button" value="Back">
       		</a>
       		</form>
           
      
           <%
               
              Customer customer = (Customer)request.getAttribute("customer");
              if(customer!=null)
              {
            	  
            	  
            	  double amount = (Double)request.getAttribute("amount");
            	  
            	 
            	  
            	 
           %>
           
             <div id="cardContainer">
             <div id="messageContainer">
             <p id="message">Message</p>
            </div>
             <h3>Rs <span><%=amount %> </span> Deposited Successfully</h3>
              <a href="TransactionDetails.jsp">
              <input type="submit" value="Ok">
              </a>
             </div>
       
       <% 
              }
       %>
         </center>
</body>
</html>