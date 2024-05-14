<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Club Details</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css">
</head>
<body class="bg-gradient-to-r from-purple-900 via-purple-500 to-purple-900 min-h-screen flex flex-col justify-center items-center text-white font-sans">

<div class="bg-yellow-300 p-4 rounded-lg shadow-md mb-4">
    <h1 class="text-4xl font-bold mb-2">${sessionScope.club.clubName}</h1>
</div>

<div class="grid grid-cols-4 sm:grid-cols-2 md:grid-cols-3 gap-6 p-4">
    
    <div class=" p-4 rounded-lg shadow-md bg-yellow-300 w-full h-full hover:bg-yellow-500 transition duration-300 ease-in-out">
        <jsp:include page="description.jsp" />
    </div>
    <div class=" p-4 rounded-lg shadow-md bg-yellow-300 w-full h-full hover:bg-yellow-600 transition duration-300 ease-in-out">
        <jsp:include page="members_card.jsp" />
    </div>
    <div class=" p-4 rounded-lg shadow-md bg-yellow-300 w-full h-full hover:bg-yellow-500 transition duration-300 ease-in-out">
        <jsp:include page="event_card.jsp" />
    </div>
    <div class=" p-4 rounded-lg shadow-md bg-yellow-300 w-full h-full hover:bg-yellow-500 transition duration-300 ease-in-out">
        <jsp:include page="blog_card.jsp" />
    </div>
    <div class=" p-4 rounded-lg shadow-md bg-yellow-300 w-full h-full hover:bg-yellow-600 transition duration-300 ease-in-out">
        <jsp:include page="notice_card.jsp" />
    </div>
    <div class="p-4 rounded-lg shadow-md bg-yellow-300 w-full h-full hover:bg-yellow-500 transition duration-300 ease-in-out">
        <jsp:include page="feedback.jsp" />
    </div>
</div>

<div class="flex justify-center mt-4">
    <a href="club_listing.jsp" class="bg-blue-500 hover:bg-blue-600 text-white font-semibold py-2 px-4 rounded transition-all duration-300">Back to Club Listing</a>
</div>

<div class="flex justify-center mt-4">
    <c:choose>
        <c:when test="${empty sessionScope.club}">
            <p class="text-center text-red-500 text-xl font-semibold">No club details available.</p>
        </c:when>
        <c:otherwise>
            <div class="text-center mb-6">
                <a href="JoinClubServlet?clubId=${sessionScope.club.clubId}&userId=${userId}" class="bg-blue-500 hover:bg-blue-600 text-white font-semibold py-2 px-4 rounded transition-all duration-300 mt-6">Join Club</a>
            </div>
        </c:otherwise>
    </c:choose>
</div>

</body>
</html>
