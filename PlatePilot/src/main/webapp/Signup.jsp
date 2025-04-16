<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Signup</title>
    <link rel="icon" type="image/png" href="https://i.pinimg.com/originals/b1/fc/bb/b1fcbbfd4fb8116c714ef352bb39bbaf.jpg"> <!-- Replace with your favicon URL -->
    <style>
       body {
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    height: 100vh;
    margin: 0;
    font-family: Arial, sans-serif;
    background-image: url('https://plus.unsplash.com/premium_photo-1661432769134-758550b8fedb?q=80&w=1932&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'); 
    background-size: cover;
    background-position: center;
    background-repeat: no-repeat;
		}
		
		.heading {
		    margin-bottom: 20px;
		    color: white;
		    text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5);
		}
		
		form {
		    display: flex;
            flex-direction: column;
            align-items: flex-start;
            padding: 34px;
            border-radius: 4px;
               background-color: rgba(255, 255, 255, 0.9);
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
           }
		
		label {
		    margin-bottom: 10px;
		    font-weight: bold;
		}
		
		input[type="text"], input[type="number"], input[type="password"] {
		   margin-bottom: 2px;
           padding: 0px;
            width: 100%;
            border: -1px solid #ccc;
            border-radius: 8px;
         }
		
		input[type="submit"] {
		    padding: 15px 20px; /* Increased padding */
		    background-color: #4CAF50; /* Green background */
		    color: white;
		    border: none;
		    border-radius: 4px;
		    cursor: pointer;
		}
		
		input[type="submit"]:hover {
		    background-color: #45a049; /* Darker green on hover */
		}
       
    </style>
</head>

<body>
    <h1 class="heading">Signup</h1>
    
   <form action="signup" method="post">
    <label for="userName">Username</label>
    <input type="text" id="userName" name="username" required>
    <label for="email">Email</label>
    <input type="text" id="email" name="email" required>
    <label for="phoneNumber">Phone Number</label>
    <input type="number" id="phoneNumber" name="phoneNumber" required>
    <label for="address">Address</label>
    <input type="text" id="address" name="address" required>
    <label for="password">Password</label>
    <input type="password" id="password" name="password" required>
    <input type="submit" value="Submit">
   </form>
   
    
</body>
</html>
    