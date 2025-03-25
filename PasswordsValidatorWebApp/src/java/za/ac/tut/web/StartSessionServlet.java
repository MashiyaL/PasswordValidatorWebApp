/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import za.ac.tut.model.PasswordValidator;
import za.ac.tut.model.PasswordValidatorInterface;

/**
 *
 * @author Gift Mashiya
 */
public class StartSessionServlet extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        String pswd = request.getParameter("pswd");
        
        PasswordValidatorInterface pvi = new PasswordValidator();
        boolean isValid = pvi.isPasswordValid(pswd);
        
        updateSession(session,pswd,isValid);
        request.setAttribute("isValid", isValid);
        request.setAttribute("pswd", pswd);
        
        RequestDispatcher disp = request.getRequestDispatcher("password_validation_outcome.jsp");
        disp.forward(request, response);
    }
 
    private void updateSession(HttpSession session, String pswd, boolean isValid) {
        Integer numPasswordChecked = (Integer)session.getAttribute("numPasswordsChecked");
        Integer numValidPasswords = (Integer)session.getAttribute("numValidPasswords");
        Integer numInvalidPasswords = (Integer)session.getAttribute("numInvalidPasswords");
        List<String> passwords =(List<String>)session.getAttribute("passwords");
        List<String> ValidPasswords =(List<String>)session.getAttribute("ValidPasswords");
        List<String> InvalidPasswords =(List<String>)session.getAttribute("InvalidPasswords");
        
        passwords.add(pswd);
        
        if(isValid){
            numValidPasswords++;
            ValidPasswords.add(pswd);
        }else {
            numInvalidPasswords++;
            InvalidPasswords.add(pswd);
        }
        
        numPasswordChecked++;
        
        session.setAttribute("numPasswordChecked", numPasswordChecked);
        session.setAttribute("numValidPasswords", numValidPasswords);
        session.setAttribute("numInvalidPasswords", numInvalidPasswords);
        session.setAttribute("passwords", passwords);
        session.setAttribute("ValidPasswords", ValidPasswords);
        session.setAttribute("InvalidPasswords", InvalidPasswords);
    }


}
