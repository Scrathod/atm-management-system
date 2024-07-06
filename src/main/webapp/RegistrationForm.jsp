<%@page import="com.govt.banksystem.entity.Customer"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
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
		    top: 40%;
		    left:40%;
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
        p
        {
            margin-left: 54px;
           padding-top: 20px;
            font-weight: bold;
        }
        #cardNumber
        {
           position: relative;
           bottom: 17px;
        }
        #pin
        {
            position: relative;
            bottom: 27px;
        }
        #message
        {
           position: relative;
           right: 38px;
           bottom: 15px;
           color: rgb(127, 109, 109);
           font-weight: normal;
           border-radius: 5px;
           
        }
        #okButton
        {
            position: absolute;
            top: 95px;
            left: 15px;
            width: 40px;
        }
  
       * {
            padding: 0px;
            margin: 0px;
        }
        body
        {
            background-color:white;
            width: 90%;
            height: 110vh;
           
        }
        #page1,#page2,#page3
        {
            width: 36%;
            height: 90vh;
           background-color: white;
           border-radius: 10px;
           border: 2px solid black;
            display: flex;
            flex-direction: column;
            position: absolute;
            float: left;
            left: 30%;
            top: 20%;
        }
        #page1
        {
            z-index: 3;
        }
        #page3
        {
            z-index: 2;
        }

       
        input,select
        {
            width: 50%;
            margin-left: 40%;
            z-index: 2;
            outline: none;
            
        }
        select
        {
            margin-bottom: 15px;
           

        }
        label
        {
           position: relative;
           top: 4%;
           left: 12%;
        }
       
        .selectTags
        {
            left: 3%;
        }
        .gender
        {
            position: relative;
            right: 70px;
        }
        .maritalstatus
        {
            position: relative;
            right: 70px;
        }
        .maleFemale,.yesNo
        {
            position: relative;
            left: 54%;
            top: 13px;
        }
        .yesNoButton
        {
            position: relative;
            top: -4.5%;
            left: -25%;
        }
        .yesNo
        {
            top: -1%;
            left: 45%;
        }
        .married
        {
            position: relative;
            left: 54%;
            top: 13px;
        }
        #gen,#citizen
        {
            position: relative;
            top: 48px;
        }
        #citizen
        {
            position: relative;
            left: 4%;
            top: 3%;
        }
      
        #maritel
        {
            position: relative;
            top: 48px;
        }
        #nextButton,#nextButton1
        {
            width: 40px;
            position: absolute;
            right: 30px;
            bottom: 15px;
        }
        #backButton
        {
           width: 40px;
           position: absolute;
           right: 85%;
           bottom: 15px;
        }
        #existingaccount
        {
            position: relative;
            left: 40px;
            top: 30px;
        }
        .existingaccountRadio
        {
            position: relative;
            left: -70px;
            bottom: 17px;
        }
        .existingaccountYesNo
        {
            position: relative;
            left: 250px;
            top: 0px;
        }
        #chooseAccount
        {
            position: relative;
            left: 40px;
          top: -5px;
        }
        #savingAccount
        {
            position: relative;
            right: 55%;
            top: -4px;

        }
        #savingAccount1
        {
            position: relative;
            top: 12px;
            left: 60px;
        }
        #fixedDepositeAccount
        {
            position: relative;
            bottom: 70px;
            right: 75px;
        }
        #fixedDepositeAccount1
        {
            position: relative;
            left: 52%;
           top: -11%;
        }
        #currentAccount
        {
            position: relative;
            left: -55%;
            top: 3px;

        }
        #currentAccount1
        {
            position: relative;
            left: 60px;

        }
        #reccurringDepositAccount
        {
            position: relative;
            bottom: 62px;
            right: 75px;
        }
        #reccurringDepositAccount1
        {
            position: relative;
           top: -47px;
           left: 240px;
        }
        #accountServices
        {
            position: relative;
            top: -20px;
            left: 42px;
        }
        #atmCard
        {
            position: relative;
            right: 250px;
            bottom: 20px;
        }
        #atmCard1
        {
            position: relative;
            top: -4px;
            left: 70px;
        }
        #internateBanking
        {
            position: relative;
            top: -57px;
            left: -75px;
        }
        #internateBanking1
        {
            position: relative;
            top: -41px;
            left: 53%;
        }
        #mobileBanking
        {
            position: relative;
            bottom: 10%;
            right:54.5%;
        }
        #mobileBanking1
        {
            position: relative;
            top: -37px;
           left: 69px;
        }
        #sms
        {
            position: relative;
            top: -87px;
           right: 76px;
        }
        #sms1
        {
            position: relative;
            top: -70px;
            left: 240px;
        }
        .button
        {
            width: 20%;
            position: relative;
            right: 30px;

        }
        h1{
            text-align: center;
            position: relative;
            top: 65px;
            left: 55px;
            color:red;
        }
        img
        {
            width: 65px;
            height: 65px;
            position: relative;
            left: 37%;
            top: 15px;
            
        }
 
 
</style>
</head>
<body>
       <h1>Application Form</h1>
    <img src="logo.jpg">
    <form action="applyForAccount">
      
    <div id="page1">

        <label>Name :</label>
        <input type="text" name="custname"  required="required">
        <label>Father Name :</label>
        <input type="text" name="custfathername" required="required" >
        <label> Data Of Birth :</label>
        <input type="date" name="dob" required="required">
        <label id="gen"> Gender :</label>
        <label  class="maleFemale">Male</label>
        <input class="gender" type="radio" name="gender" value="Male" required="required">
        <label class="maleFemale">Female</label>
        <input class="gender" type="radio" name="gender" value="Female" required="required">
       
        <label>Aadhar :</label>
        <input   name="aadhar" required="required">
        <label>Pan :</label>
        <input type="text"  name="pan"  required="required">
        <label>Email Address :</label>
        <input type="email"  name="email" required="required">
        <label>Mobile : </label>
        <input type="text" name="mobile" required="required">
        <label id="maritel"> Maritel Status :</label>
        <label class="married">Married</label>
        <input class="maritalstatus" type="radio" name="maritalstatus" value="Married" required="required">
        <label class="married">Unmarried</label>
        <input class="maritalstatus" type="radio" name="maritalstatus" value="Unmarried" required="required">
        <input id="nextButton" type="button" value="Next" onclick="showContainer()">
        </div>
        <div id="page2">
            <label>Address : </label>
            <input type="text" name="address" required="required">
            <label>City :</label>
            <input type="text" name="city" required="required">
            <label>Pin Code :</label>
            <input type="number" name="pincode" required="required">
            <label>State :</label>
            <input type="text" name="state" required="required">
           
            <label class="selectTags">Select Religion :</label>
             <select name="religion" required="required">
              <option value="Hindu">
              Hindu
              </option>
              <option value="Muslim">
               Muslim
              </option>
              <option value="Sikh">
              Sikh
              </option>
              <option value="Christian">
              Christian
              </option>
               <option value="Other">
              Other
              </option>
             </select>
            
             <label  class="selectTags">Select Category :</label>
             <select name="category" required="required">
              <option value="General">
              General
              </option>
              <option value="SC">
               SC
              </option>
              <option value="ST">
              ST
              </option>
               <option value="OBC">
              OBC
              </option>
               <option value="Other">
              Other
              </option>
             </select>
             
              <label  class="selectTags">Select Qualification :</label>
             <select name="qualification" required="required">
              <option value="Non-Graduate">
              Non-Graduate
              </option>
              <option value="Graduate">
               Graduate
              </option>
              <option value="Post Graduate">
              Post Graduate
              </option>
              <option value="Doctrate">
              Doctrate
              </option>
              <option value="Others">
              Others
              </option>
             </select>
             <label  class="selectTags">Select Income :</label>
             <select name="income" required="required">
              <option value="< 1,50,000">
              < 1,50,000
              </option>
              <option value="<2,50,000">
               < 2,50,000
              </option>
              <option value="< 3,50,000">
              < 3,50,000
              </option>
              <option value="10,00,000">
              Up to 10,00,000
              </option>
              <option value="Others">
              Others
              </option>
             </select>
             
             <label  class="selectTags">Select Occupation :</label>
             <select name="occupation" required="required">
              <option value="Salaried">
              Salaried
              </option>
              <option value="Self- Employed">
               Self- Employed
              </option>
              <option value="Business">
             Business
              </option>
              <option value="Student">
              Student
              </option>
              <option value="Others">
              Others
              </option>
             </select>
             <label id="citizen">Senior Citizen :</label>
             <label class="yesNo">Yes</label>
            <input  class="yesNoButton" type="radio" name="seniorcitizen" value="Yes">
            <label class="yesNo">No</label>
            <input class="yesNoButton" type="radio" name="seniorcitizen" value="No">
           
             <input id="nextButton1" type="button" value="Next" onclick=" showContainer1()">
            <!--  <input id="backButton" type="button" value="Back" onclick="backContainer()"> -->
             
        </div>
         <div id="page3">
            <label id="existingaccount">Existing Account :</label>
            <label class="existingaccountYesNo">Yes</label>
            <input class="existingaccountRadio" type="radio" name="existingaccount" value="Yes">
            <label class="existingaccountYesNo"> No</label>
            <input class="existingaccountRadio" type="radio" name="existingaccount" value="No">
           
            <label id="chooseAccount">Choose Account Type :</label>
            <label id="savingAccount1">Saving Account</label>
            <input id="savingAccount" type="radio" name="accounttype" value="Saving">
            <label id="currentAccount1">Current Account</label>
            <input id="currentAccount" type="radio" name="accounttype" value="Current">
            <label id="fixedDepositeAccount1">Fixed Deposit Account</label>
           <input id="fixedDepositeAccount"  type="radio" name="accounttype" value="Fixed Deposit">
           <label id="reccurringDepositAccount1">Reccurring Deposit Account</label>
            <input id="reccurringDepositAccount" type="radio" name="accounttype" value="Reccurring Deposite">
           
            <label id="accountServices">Account Services : </label>
            <label id="atmCard1">ATM Card</label>
            <input id="atmCard" type="checkbox" name="services" value="ATM Card">
            <label id="internateBanking1">Internate Banking</label>
             <input id="internateBanking" type="checkbox" name="services" value="Internate Banking">
             <label id="mobileBanking1">Mobile Banking</label>
              <input id="mobileBanking" type="checkbox" name="services" value="Mobile Banking">
              <label id="sms1">SMS Alerts</label>
              <input id="sms" type="checkbox" name="services" value="SMS Alerts">
              <input class="button" type="submit" value="Create"> &nbsp;&nbsp;&nbsp;
              <input class="button" type="reset" value="Clear">
         </div>
        </form>
        <script>
       
            var nextPage = document.querySelectorAll("div")
            function showContainer()
            {
                nextPage[1].style.zIndex=4;
            }
            function showContainer1()
            {
                nextPage[2].style.zIndex=8;
            }
           
        </script>
        
            
         <%
            Customer cst = (Customer)request.getAttribute("customer");
            if(cst!=null)
            {
            	 
         %>
          <div id="cardContainer">
            <div id="messageContainer">
             <p id="message">Message</p>
            </div>
          <p id="cardNumber">Card Number : <%=cst.getCardnumber() %></p>
          <p id="pin">Pin : <%=cst.getPin() %></p>
          <%
              session.setAttribute("pin", cst.getPin());
          %>
          <a href="DepositeAmount.jsp">
          <input id="okButton" type="submit" value="Ok">
          </a>
          </div>
         
         <%
            }
            
            String message = (String)request.getAttribute("accountStatus");
            if(message!=null)
            {
         %>
           <div id="message">
           <h3><%=message %></h3>
           </div>
           <%
            }
           %>
           
           
           
       
</body>
</html>