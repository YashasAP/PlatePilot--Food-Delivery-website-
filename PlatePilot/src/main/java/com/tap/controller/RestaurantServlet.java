package com.tap.controller;

import java.io.IOException;
import java.util.List;

import com.tap.daoImp.RestaurantDaoI;
import com.tap.model.Restaurant;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


public class RestaurantServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("RestaurantServlet invoked"); // Debug statement

        RestaurantDaoI r = new RestaurantDaoI();//create a restaurant implementation object
        List<Restaurant> list = r.getAllRestaurants();//it will fetch all the restaurants from database and store in the list

      

        req.setAttribute("restaurants", list); // Set restaurant data as request attribute

        
        RequestDispatcher dispatcher = req.getRequestDispatcher("/restaurant.jsp");//it will navigate to jsp file
        dispatcher.forward(req, resp);//forwords the req and resp
        
    }
}
