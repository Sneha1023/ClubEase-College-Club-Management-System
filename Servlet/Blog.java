package com.Servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DatabaseConnection.DatabaseConnection;

public class Blog extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Get parameters from the request
        int clubId = Integer.parseInt(request.getParameter("clubId"));
        String blogName = request.getParameter("blogname");
        String blogDescription = request.getParameter("blogdescription");

        // Insert data into the blog table
        String query = "INSERT INTO blog (club_id, blog_name, blog_description) VALUES (?, ?, ?)";

        try (Connection connection = DatabaseConnection.getConnection();
                PreparedStatement preparedStatement = connection.prepareStatement(query)) {

            preparedStatement.setInt(1, clubId);
            preparedStatement.setString(2, blogName);
            preparedStatement.setString(3, blogDescription);

            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
            // Handle the SQL exception (e.g., log or display an error message)
        }

        // Forward the request to club_details.jsp
        RequestDispatcher dispatcher = request.getRequestDispatcher("club_details.jsp");
        dispatcher.forward(request, response);
    }
}
