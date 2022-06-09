<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>Signup</title>
</head>
<body>
<div id='container'>
  <div class='signup'>
   <form action="signupactions.jsp" method="post">
   <input type="text" name="Name" placeholder="Enter your name" required>
    <input type="email" name="email" placeholder="Enter your email" required>
     <input type="number" name="Mobilenumber" placeholder="Enter your mobilenumber" required>
     <select name="Securityquestion" required>
     <option value="what is your first school?">what is your first school?</option>
     <option value="what is your pet name?">what is your pet name?</option>
     <option value="what is birth place?">what is your birth place?</option>
     </select>
     <input type="text" name="Answer" placeholder="Enter answer" required>
      <input type="password" name="password" placeholder="Enter your password" required>
       <input type="submit" value="signup">
   </form> 
      <h2><a href="login.jsp">Login</a></h2>
  </div>
  <div class='whysign'>
<%
 String msg=request.getParameter("msg");
if("valid".equals(msg))
{
%>
<h1>Successfully Registered</h1>
<%} %>

<%
if("invalid".equals(msg))
{
%>
<h1>Some thing Went Wrong! Try Again !</h1>
<%} %>

   <h2>Online Mobile Shopping</h2>
    <p>The Online Mobile Shopping application that allows the users to shop mobiles through online without going to any shops to buy them.</p>
  </div>
</div>

</body>
</html>