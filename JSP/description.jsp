<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Club Description</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css">
</head>
<body>
<div class="container mx-auto p-4 flex items-center justify-between">
    <h1 class="text-3xl font-bold mb-4">Club Details</h1>
</div>
<div class="bg-white w-full max-w-md p-4 border border-gray-200 rounded-lg shadow sm:p-8 dark:bg-gray-800 dark:border-gray-700">
 
    <c:choose>
        <c:when test="${empty sessionScope.club}">
            <p class="text-center text-red-500 text-xl font-semibold">No club details available.</p>
        </c:when>
        <c:otherwise>
                <p class="text-lg font-semibold mb-2 text-black">Club ID: ${sessionScope.club.clubId}</p>
                <p class="text-lg font-semibold mb-2 text-black">Club Name: ${sessionScope.club.clubName}</p>
                <p class="text-lg font-semibold mb-2 text-black">Description: ${sessionScope.club.description}</p>
                <p class="text-lg font-semibold mb-2 text-black">Founded Year: ${sessionScope.club.foundedYear}</p>
            
        </c:otherwise>
    </c:choose>
</div>

</body>
</html>
