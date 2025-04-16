<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.util.List" %>
<%@ page import="com.tap.model.Restaurant" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome to PlatePilot</title>
    <link rel="icon" type="image/png" href="https://i.pinimg.com/originals/b1/fc/bb/b1fcbbfd4fb8116c714ef352bb39bbaf.jpg">
    <style>
        body {
            display: flex;
            flex-direction: column;
            justify-content: flex-start;
            align-items: center;
            min-height: 100vh;
            margin: 0;
            font-family: Arial, sans-serif;
            background-image: url('');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            background-attachment: fixed;
        }
       .navbar {
		    height: 58vh;
            width: 100%;
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 20px;
            background-color: rgba(0, 0, 0, 0);
		}
		
		.hero {
           height: 68vh;
            width:100vW;
            background: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)),
                url('https://images.unsplash.com/photo-1504674900247-0877df9cc836?auto=format&fit=crop&w=1920&q=80');
            background-size: cover;
             background-position: center;
            display: flex;
            align-items: center;
            justify-content: center;
             text-align: center;
             color: var(--white);
         }
		
		.navbar td {
		    color: white;
		    font-weight: bold;
		    cursor: pointer;
		    text-align: center; /* Ensures the text inside the td is centered */
		}
       
        }
        .left {
            margin-right: auto;
        }
        .right {
           font-style: oblique;
           font-size: 20px;
           padding-left: 613px;
           padding-bottom: 50px;
           display: flex;
           gap: 20px;
        }
        .app-name {
             margin-top: -12px;
            font-size: 56px;
            font-weight: bold;
            color: red;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.7);
        }
        .tagline {
            margin-top: 10px;
            font-size: 24px;
        }
        .restaurants {
           margin-top: 20px;
            margin-bottom:80px;
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 20px;
        }
        .restaurant-card {
            background-color: rgba(255, 255, 255, 0.8);
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            overflow: hidden;
            width: 226px;
            text-align: center;
        }
        .restaurant-card img {
            width: 100%;
            height: 200px;
            object-fit: cover;
        }
        .restaurant-card h3 {
            margin: 10px 0 5px;
            font-size: 20px;
            color: #333;
        }
        .restaurant-card p {
            margin: 5px 0;
            font-size: 16px;
            color: #666;
        }
        .restaurant-card a {
            display: block;
            padding: 10px;
            background-color: #4CAF50;
            color: white;
            text-decoration: none;
            border-radius: 4px;
            margin: 10px 0;
        }
        .restaurant-card a:hover {
            background-color: #45a049;
        }
        td {
            padding: 10px;
        }
        .navbar td:hover {
            color: #FFD700;
        }
        .footer {
            width: 100%;
            background-color: #FFD700; /* Yellow background */
            color: black; /* Black text color */
            padding: 20px;
            display: flex;
            flex-direction: column;
            align-items: center;
        }
        .footer p {
            margin: 5px 0;
        }
        .footer-links {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 20px;
            margin-bottom: 20px;
        }
        .footer-links div {
            text-align: center;
        }
        .social-icons {
            display: flex;
            justify-content: center;
            gap: 10px;
        }
        .social-icons img {
            width: 24px;
            height: 24px;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <div class="navbar">
        <section class="hero">
         <div class="hero-content">
           
           <div style="color : white" class="app-name">PlatePilot</div>
          <h1 style="color : white">Discover the Best Food & Drinks</h1>
        </div>
       </section>
     </div>
    
    <p >Explore the best restaurants, cafes, and bars in your city</p>
   
    <div class="restaurants" >
                   <%-- To get all the restaurant to display in the browser and it will navagate to menu servlet --%>
          <%
             List<Restaurant> list = (List<Restaurant>) request.getAttribute("restaurants");

            if (list != null && !list.isEmpty()) {
                for (Restaurant r : list) {
        %>
          <a href="MenuServlet?restaurantId=<%= r.getRestaurantId() %>" style="text-decoration: none;">
           <div class="restaurant-card">
		    <img src="<%= r.getImagePath() %>" alt="<%= r.getName() %>">
		    <h3><%= r.getName() %></h3>
		    <p>Cuisine: <%= r.getCuisineType() %></p>
		    <p>Rating: <%= r.getRatings() %> ★</p>
		    <p>Address: <%= r.getAddress() %></p>
		    <p>Active: <%= r.getIsActive() %></p>
		    
          </div>
          </a>
           
        <%
                }
            } else {
        %>
        <p>No restaurants available.</p>
        <%
            }
        %>
    </div>
    <div class="footer">
    <h1>PlatePilot</h1>
    <div class="footer-links">
        
        
       
        <div>
            <h2>About PlatePilot</h2>
            <p>Who We Are</p>
            <p>Blog</p>
            <p>Work With Us</p>
            <p>Investor Relations</p>
            <p>Report Fraud</p>
            <p>Press Kit</p>
            <p>Contact Us</p>
        </div>
        <div>
            
            <h2>PlateUniverse</h2>
            <p>Blinkit</p>
            <p>District</p>
            <p>Feeding India</p>
            <p>Hyperpure</p>
            <p>Onifood Live</p>
            <p>Oniland</p>
            <p>Weather Union</p>
        </div>
        <div>
             
            <h2>For Restaurants</h2>
            <p>Partner With Us</p>
            <p>Apps For You</p>
            <p>Learn More</p>
        </div>
        <div>
             <h2>Learn more</h2>
            <p>Privacy</p>
            <p>Security</p>
            <p>Terms</p>
        </div>
    </div>
    
   
    <p>By continuing past this page, you agree to our Terms of Service, Cookie Policy, 
    Privacy Policy and Content Policies. All trademarks are properties of their 
    respective owners. 2025 © PlatePilot™ Ltd. All rights reserved.</p>
</div>
   
</body>
</html>
