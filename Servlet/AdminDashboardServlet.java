package com.Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.ClubDAO;
import com.DAO.UserDAO;
import com.entities.Club;
import com.entities.User;
@WebServlet("/admin-dashboard")
public class AdminDashboardServlet extends HttpServlet {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Check if the admin is logged in (check the adminName session attribute)
        HttpSession session = request.getSession();
        String adminName = (String) session.getAttribute("adminName");

        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        if (adminName != null) {
            // If the admin is logged in, fetch and display user information
            List<User> users = UserDAO.getAllUsers(); // Implement this method to fetch user data
            List<Club> clubs = ClubDAO.getAllClubs(); // Implement this method to fetch club data

            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Admin Dashboard</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Welcome, Admin!</h1>");

            // Display User Information
            out.println("<h2>User Information</h2>");
            out.println("<table border='1'>");
            out.println("<tr>");
            out.println("<th>User ID</th>");
            out.println("<th>Username</th>");
            out.println("<th>User-Joined Club Name</th>");
            out.println("<th>Is User a Head?</th>");
            out.println("</tr>");
            
            for (User user : users) {
                out.println("<tr>");
                out.println("<td>" + user.getUserId() + "</td>");
                out.println("<td>" + user.getUsername() + "</td>");
                out.println("<td>" + user.getJoinedClubName() + "</td>"); // Implement this property in User class
                out.println("<td>" + user.isHeadUser() + "</td>"); // Assuming you have a property like isHeadUser
                out.println("</tr>");
            }

            out.println("</table>");

            // Display Club Information
            out.println("<h2>Club Information</h2>");
            out.println("<ul>");
            for (Club club : clubs) {
                out.println("<li>" + club.getClubName() + "</li>");
            }
            out.println("</ul>");

            out.println("<a href='" + request.getContextPath() + "/logout'>Logout</a>");
            out.println("</body>");
            out.println("</html>");
        } else {
            // If not logged in, redirect to the admin login page
            response.sendRedirect(request.getContextPath() + "/admin_login.jsp");
        }
    }
}
