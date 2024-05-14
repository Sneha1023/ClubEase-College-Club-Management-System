package com.Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.UserDAO;
import com.entities.User;

/**
 * Servlet implementation class Login
 */
@WebServlet("/login")
public class Login extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        // Assuming you have a UserDAO method to validate the login
        User user = UserDAO.getUserByUsernameAndPassword(username, password);

        if (user != null) {
            // Create a session and store the user ID in it
            HttpSession session = request.getSession();
            session.setAttribute("userId", user.getUserId());

            // Redirect to the ClubListingServlet
            response.sendRedirect("club-listing");
        } else {
            // Redirect back to the login page (adjust the URL as needed)
            response.sendRedirect("user_login.jsp");
        }
    }
}
