<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.util.List" %>
<%@ page import="com.tap.model.Menu" %>
<%@ page import="com.tap.model.Restaurant" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><%= request.getAttribute("restaurant") != null ? ((Restaurant) request.getAttribute("restaurant")).getName() : "Restaurant Menu" %></title>
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
	    width: 100%;
	    display: flex;
	    justify-content: space-between;
	    align-items: center;
	    padding: 20px;
	    background-color: rgba(0, 0, 0, 0);
		}
		
		.center {
		    flex: 1;
		    text-align: center;
		}
		
		.center h1 {
		    color: white;
		    font-size: 36px;
		    font-weight: bold;
		    margin: 0;
		}


       
        .left {
            margin-right: auto;
        }
        .right {
            display: flex;
            gap: 20px;
        }
        .restaurant-name {
            margin-top: 10px;
            font-size: 48px;
            font-weight: bold;
            color: red;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.7);
        }
        .tagline {
            margin-top: 10px;
            font-size: 24px;
            font-weight: normal;
            background: -webkit-linear-gradient(45deg, #FFDD44, #FF8C00);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.5);
        }
        .restaurant-details {
            text-align: center;
            margin-bottom: -40px;
            color:red;
        }
        .restaurant-details img {
            width: 400px; /* Increased size */
            height: auto;
            border-radius: 8px;
        }
        .menu-items {
            margin-top: -70px;
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 20px;
        }
        .menu-card {
            background-color: rgba(255, 255, 255, 0.8);
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            overflow: hidden;
            width: 300px;
            text-align: center;
        }
        .menu-card img {
            width: 100%;
            height: 200px;
            object-fit: contain;
        }
        .menu-card h3 {
            margin: 10px 0 5px;
            font-size: 20px;
            color: #333;
        }
        .menu-card p {
            margin: 5px 0;
            font-size: 16px;
            color: #666;
        }
        .menu-card button {
            background-color: #FF8C00;
            color: white;
            border: none;
            padding: 10px 20px;
            cursor: pointer;
            border-radius: 4px;
            margin: 10px 0;
        }
        .menu-card button:hover {
            background-color: #FFA500;
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
    
    
    <div class="center">
        
    </div>

    <table class="right">
        <tr>
            <td><a href="restaurants" style="color: black; text-decoration: none;  font-style: oblique; font-size: 20px;">Back to Restaurants</a></td>
        </tr>
    </table>
</div>
  
    <%-- to set the restaurant and to display restaurant name and restaurant image --%>
    <%
        Restaurant restaurant = (Restaurant) request.getAttribute("restaurant");
        if (restaurant != null) {
    %>
        <div class="restaurant-details">
            
            <h1 class="restaurant-name"><%= restaurant.getName() %></h1>
        </div>
        <p class="tagline">Discover the best foods and drinks</p>
        <h1 style="color:white"><div class="app-name">Menu</div></h1>
    <%
        } else {
    %>
        <p>Restaurant details not found.</p>
    <%
        }
    %>
    <%-- to get menulist and display the menu details --%>
    <div class="menu-items">
        <%
            List<Menu> menuList = (List<Menu>) request.getAttribute("menuList");
            if (menuList != null && !menuList.isEmpty()) {
                for (Menu menu : menuList) {
        %>
            <div class="menu-card">
                <img src="<%= menu.getImagePath() %>" alt="<%= menu.getItemName() %>">
                <h3><%= menu.getItemName() %></h3>
                <h4><p>Price: ₹<%= menu.getPrice() %></p></h4> 
                <p>Description: <%= menu.getDescription() %></p>
                <p>Ratings: <%= menu.getRatings() %> ★</p>
                 
                <form action="Cart" method="post">
                <input type="hidden" name="action" value="add">
                <input type="hidden" name="itemId" value="<%=menu.getMenuId() %>">
                <input type="hidden" name="quantity" value="1">
                  <%-- to navigate to the cart Servlet --%>
                <button type="submit" class="add-to-cart">Add to Cart</button>
                </form>
              </div>
        <%
                }
            } else {
        %>
        <p>No menu items available.</p>
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
