<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="javax.servlet.ServletException, javax.servlet.http.HttpServlet, javax.servlet.http.HttpServletRequest, javax.servlet.http.HttpServletResponse, javax.servlet.http.HttpSession" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Club Listing</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.16/dist/tailwind.min.css">
    <style>
        /* Custom CSS for card layout */
        .club-card {
            width: 80%;
            margin: 4%;
            display: inline-block;
            border: 1px solid #ccc;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.5);
            padding: 1.5rem;
            background-color: #6B46C1; /* Purple card background */
            transition: transform 0.2s ease-in-out, box-shadow 0.2s ease-in-out;
        }

        .club-card:hover {
            transform: scale(1.03);
            box-shadow: 0 6px 8px rgba(0, 0, 0, 0.2);
        }

        .text-purple {
            color: #6B46C1; /* Purple text color */
        }

        .text-yellow {
            color: #FFD700; /* Yellow text color */
        }

        .bg-purple {
            background-color: #6B46C1; /* Purple background color */
        }
    </style>
</head>
<body class="bg-gradient-to-r from-yellow-200 to-yellow-300 font-sans">
    <div class="container mx-auto py-8">
        <h1 class="text-4xl font-bold text-center pb-8 text-white-500">Club Listing</h1>

        <div class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-3 gap-4 font-serif">
            <c:if test="${not empty clubs}">
                <c:forEach var="club" items="${clubs}">
                    <div class="club-card bg-purple text-white">
                        <a href="ClubDetailsServlet?clubId=${club.clubId}" class="text-yellow mt-4 inline-block">
                        <h2 class="text-xl font-semibold mb-2">${club.clubName}</h2>
                        <p class="text-gray-300 mb-4">Description: ${club.description}</p>
                        <p class="text-gray-300">Founded Year: ${club.foundedYear}</p>
                        <p class="text-white-300">Join Club</p>
                        </a>
                    </div>
                </c:forEach>
            </c:if>

            <c:if test="${empty clubs}">
                <p class="text-2xl font-semibold text-center mt-4 text-purple">No clubs found.</p>
            </c:if>
        </div>
    </div>
</body>
</html>
