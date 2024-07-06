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
#pinContainer
{
   width: 220px;
   height: 100px;
   background-color: gray;
}
.pinGenerate
{
  position: relative;
  top: 50px;
  right: 140px;
  height: 20px;
  outline: none;
  font-size: 16px;
  
}
label 
{
  color: white;
  padding-right: 20px;
  text-align: justify;
	
}
input
{
  color: green;
  font-weight: bold;
}
#input1
{
  margin-left: 17px;
}
#updateButton
{
  width: 118px;
   height: 33px;
   border-radius:5px;
   border:none;
   font-size: 17px;
   cursor:pointer;
   background-color:rgb(165, 184, 199);
   position: relative;
   top: 160px;
   left:34px;
   color: black;
   letter-spacing: 3px;
   font-weight: normal;
}
#backButton
{
  position: relative;
   top: 205px;
   right: 85px;
   width: 118px;
   height: 33px;
   border-radius:5px;
   border:none;
   font-size: 19px;
   letter-spacing: 2px;
   background-color:rgb(165, 184, 199);
   color: black;
    font-weight: normal;
    cursor: pointer;
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
        #notMatched
        {
          position: relative;
          right: 140px;
          color: red;
        }

</style>
</head>
<body>

			<center>
			
			
			<%
               HttpSession s = request.getSession();
			  Customer customer = (Customer)request.getAttribute("pinChange");
			  if(customer!=null)
			  {
				  
			    session.setAttribute("pin", customer.getPin());
			  
			  
            %>
            
             <div id="cardContainer">
             <div id="messageContainer">
             <h3>Message</h3>
             </div>
            <h3>New Pin Generated Successfully</h3>
            <a href="TransactionDetails.jsp">
            <input type="submit" value="Back">
            </a>
          </div>
			<%
			  }
			%>
			<form action="pinChange">
		   <input name="pin" value="<%=(Integer)s.getAttribute("pin")%>" hidden="true" >
          <br>
          <label class="pinGenerate">Enter New Pin</label>
          <input id="input1" class="pinGenerate" name="pin1" >
          <br><br>
          <label class="pinGenerate">Re-Enter New Pin</label>
          <input class="pinGenerate" name="pin2">
          <br><br>
          <input id="updateButton" type="submit" value="Update">
          <a href="TransactionDetails.jsp">
          <input id="backButton" type="button" value="Back">
          </a>
          </form>
          
          <%
             String message = (String)request.getAttribute("pinStatus");
             if(message!=null)
             {
            	 
             
          %>
            <h3 id="notMatched"><%=message %></h3>
            <%
             }
            %>
			</center>
  		
</body>
</html>