/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import java.io.Console;
import java.io.IOException;
import java.io.PrintWriter;
import java.lang.reflect.InvocationTargetException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.entities.Client;
import model.entities.Interests;
import org.apache.commons.beanutils.BeanUtils;

/**
 *
 * @author alaa
 */
@WebServlet(name = "RegisterServlet", urlPatterns = {"/RegisterServlet"})
public class RegisterServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //************* startAllaa **************/

        //************** EndAllaa **************/
        //************* startAdel ************
        //************** EndAdel **************/
        //************* startSherif **************/
        //************** EndSherif **************/
        //************* startMoamen **************/
        //************** EndMoamen **************/
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        //************* startAllaa **************/
//        // id for user
        Client client = new Client();
        try {
            
            BeanUtils.populate(client, request.getParameterMap());
            System.out.println(client.getFname());
            
        } catch (IllegalAccessException ex) {
            Logger.getLogger(RegisterServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (InvocationTargetException ex) {
            Logger.getLogger(RegisterServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
//        String fname = request.getParameter("inputFname");
//        String lname = request.getParameter("inputLname");
//        String mail = request.getParameter("inputEmail");
//        String password = request.getParameter("inputPassword");
//        String bDate = request.getParameter("inputBirthDay");
//        String job = request.getParameter("inputJob");
//        String phone = request.getParameter("inputPhone");
//        String address = request.getParameter("inputAddress");
//        String creditLimit = request.getParameter("inputCreditLimit");
//        String[] interests = request.getParameterValues("inputInterest");
//
//        // date 
//        Date date = new Date();
//        try {
//            SimpleDateFormat formatter = new SimpleDateFormat("dd-MMM-yyyy");
//            date = formatter.parse(bDate);
//        } catch (ParseException ex) {
//            Logger.getLogger(RegisterServlet.class.getName()).log(Level.SEVERE, null, ex);
//        }
//        
//        // credit limit
//        int creditLimitInteger = Integer.parseInt(creditLimit);
//        
//        //interests
//        ArrayList<Interests> interestsList = new ArrayList<>();
//        for (int i = 0; i < interests.length; i++) {
//            Interests ob = new Interests();
//            ob.setName(interests[i]);
//            interestsList.add(ob);
//        }
//
//        Client client = new Client();
//        client.setFname(fname);
//        client.setLname(lname);
//        client.setMail(mail);
//        client.setPassword(password);
//        client.setBirthday(date);
//        client.setAddress(address);
//        client.setJob(job);
//        client.setCridetlimit(creditLimitInteger);
//        client.setPhone(phone);
//        client.setInterestsList(interestsList);
//        
//        System.out.println(client);

//************** EndAllaa **************/
//************* startAdel ************
//************** EndAdel **************/
//************* startSherif **************/
//************** EndSherif **************/
//************* startMoamen **************/
//************** EndMoamen **************/
    }

}
