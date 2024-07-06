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
label
{
  color: white;
  position: relative;
  right: 156px;
  top: 75px;
  font-size: 16px;
  
}
.inputTags
{
   position: relative;
   top: 75px;
   right: 120px;
   width: 15%;
   outline: none;
   height: 20px;
   font-size: 16px;
}
#input1
{
  position: relative;
  right: 136px;
}
.signInButton,#signUpButton
{
  position: relative;
  top: 85px;
  right: 120px;
  width: 118px;
   height: 33px;
   border-radius:5px;
   border:none;
   font-size: 16px;
   cursor:pointer;
   background-color:rgb(165, 184, 199);
}
#signUpButton
{
  position: relative;
  top: 93px;
  right: 120px;
}
h1
{
  color: white;
  position: relative;
  top: 50px;
  right: 126px;
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
</style>
</head>
<body>
          
          
         
        <center>
         <h1>Welcome To ATM</h1>
        <%
          
           String status = (String)request.getAttribute("status");
           
           if(status!=null)
           {
        	   
        %>
        
           <div id="cardContainer">
           <div id="messageContainer">
           <h3>Message</h3>
           </div>
           <h2 style="color:red; "><%=status %></h2>
           <a href="index.jsp">
           <input type="button" value="Exit">
           </a>
           </div>
        <%
           }
        %>
        
        <form action="validatePin">
        <label>Card No  </label> &nbsp;&nbsp;&nbsp;&nbsp;
        <input id="input1" class="inputTags" type="number" name="cardnumber"><br><br>
        <label>Pin  </label> &nbsp;&nbsp;&nbsp;&nbsp;
        <input class="inputTags" type="number" name="pin"><br><br>
        <input class="signInButton" type="submit" value="Sign In">&nbsp;&nbsp;&nbsp;
        <input class="signInButton" type="reset" value="Clear"><br><br>
        
        
        </form>
        <a href="RegistrationForm.jsp">
        <input id="signUpButton" type="submit" value="Sign Up">
        </a>
        
        
        </center>
</body>
</html>