package com.tap.controller;

import java.io.IOException;
import java.util.List;

import com.tap.daoImp.MenuDaoI;
import com.tap.daoImp.RestaurantDaoI;
import com.tap.model.Menu;
import com.tap.model.Restaurant;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class MenuServlet extends HttpServlet {
    private MenuDaoI menuDao;
    private RestaurantDaoI restaurantDao;

    public void init() {
        menuDao = new MenuDaoI(); //to create menuDaoI object
        restaurantDao = new RestaurantDaoI(); //to create restaurantDaoI object
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String restaurantIdParam = request.getParameter("restaurantId");
        if (restaurantIdParam == null || restaurantIdParam.isEmpty()) {
            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Missing restaurantId parameter.");
            return;
        }

        int restaurantId = Integer.parseInt(restaurantIdParam); //to get restaurantId
        
        HttpSession session=request.getSession();
        session.setAttribute("restaurantId",restaurantId );
        
        List<Menu> menuList = menuDao.getMenusByRestaurantId(restaurantId); //to get all the menu for that particular restaurant
        Restaurant restaurant = restaurantDao.getRestaurant(restaurantId); //to get restaurant from the id

        
        
        request.setAttribute("menuList", menuList); // to set the menulist attribute 
        request.setAttribute("restaurant", restaurant); //to set the restaurant attribute

        RequestDispatcher dispatcher = request.getRequestDispatcher("menu.jsp"); //it will navigate to menu.jsp file
        dispatcher.forward(request, response); //it will forward the request and response object 
    }
}
