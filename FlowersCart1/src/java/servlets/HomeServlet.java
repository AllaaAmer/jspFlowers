/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import Entities.Category;
import Entities.Flower;
import Entities.Product;
import Facade.HomeService;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author alaa
 */
@WebServlet(name = "HomeServlet", urlPatterns = {"/HomeServlet"})
public class HomeServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HomeService service = new HomeService();
        ArrayList<Category> categories = new ArrayList<>();
        ArrayList<Flower> flowers = new ArrayList<>();
        ArrayList<Product> products = new ArrayList<>();
        
        PrintWriter out = response.getWriter();
        HttpSession session = request.getSession(true);
        Boolean userLogged = (Boolean) session.getAttribute("LoggedIn");
        if(userLogged!=null&&userLogged.booleanValue()){
             categories = service.getCategories();
             flowers = service.getFlowers();
             products = service.getProducts();
             request.setAttribute("categories", categories);
             request.setAttribute("flowers", flowers);
             request.setAttribute("products", products);
        }
        System.out.println("no");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();

    }
}
