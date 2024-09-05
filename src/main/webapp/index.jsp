<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html> 
<html> 
<head> 
<meta charset="UTF-8"> 
<title>Your Step</title> 
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous"> 
</head> 
<body> 
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script> 
 
    <style> 
        /* Basic styling for the body */ 
      
body{ 
    background-image: url('https://img.freepik.com/free-vector/hands-holding-smartphone-with-mobile-app-order-asian-food_88138-867.jpg?w=1380&t=st=1697281583~exp=1697282183~hmac=6f9e356d4d533432684a9a9ae03847667005f06cb48bc43ae1ce2f71936f3c48'); /* Replace 'background-image.jpg' with your image URL */
    background-size: cover; /* Cover the entire viewport */
            background-repeat: no-repeat; /* Do not repeat the image */
            background-attachment: fixed;
    display: flex; 
  justify-content: center; 
  align-items: center; 
  min-height: 100vh; 
  background-size: cover; 
  background-position: center; 
} 
.wrapper{ 
  width: 550px; 
  background: rgb(233, 21, 21); 
  border: 2px solid rgba(255, 255, 255, .2); 
  backdrop-filter: blur(9px); 
  color: #fff; 
  border-radius: 12px; 
  padding: 30px 40px; 
} 
.wrapper h1{ 
  font-size: 36px; 
  text-align: center; 
} 
.wrapper .input-box{ 
  position: relative; 
  width: 100%; 
  height: 50px; 
   
  margin: 30px 0; 
} 
.input-box input{ 
  width: 100%; 
  height: 100%; 
  border: none; 
  outline: none; 
  border: 2px solid rgba(255, 255, 255, .2); 
  border-radius: 40px; 
  font-size: 16px; 
  color: black; 
  padding: 20px 45px 20px 20px; 
} 
.input-box input::placeholder{ 
  color: black; 
} 
.input-box i{ 
  position: absolute; 
  right: 20px; 
  top: 30%; 
  transform: translate(-50%); 
  font-size: 20px; 
 
} 
.wrapper .remember-forgot{ 
  display: flex; 
  justify-content: space-between; 
  font-size: 14.5px; 
  margin: -15px 0 15px; 
} 
.remember-forgot label input{ 
  accent-color: #fff; 
  margin-right: 3px; 
 
} 
.remember-forgot a{ 
  color: #fff; 
  text-decoration: none; 
 
} 
.remember-forgot a:hover{ 
  text-decoration: underline; 
} 
.wrapper .btn{ 
  width: 100%; 
  height: 45px; 
  background: #fff; 
  border: none; 
  outline: none; 
  border-radius: 40px; 
  box-shadow: 0 0 10px rgba(0, 0, 0, .1); 
  cursor: pointer; 
  font-size: 16px; 
  color: #333; 
  font-weight: 600; 
} 

    </style> 
</head> 
<body> 
   <div class="wrapper"> 
    <form action="checkdeliveryboylogin" method="post"> 
      <h1>LOGIN</h1> 
      <div class="input-box"> 
        <input type="text" name="email" placeholder="Email" required> 
        <i class='bx bxs-user'></i> 
      </div> 
      <div class="input-box"> 
        <input type="text" name="uname" placeholder="Password" required> 
        <i class='bx bxs-user'></i> 
      </div> 
       
      <div class="remember-forgot"> 
        <label><input type="checkbox">Remember Me</label> 
         
      </div> 
      <button type="submit">Login</button> 
     
    </form> 
  </div> 
</body> 
</html> 
 
</body> 
</html>