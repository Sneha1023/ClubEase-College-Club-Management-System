<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css">
</head>
<script>
    document.addEventListener('DOMContentLoaded', function () {
        const showFormButton = document.getElementById('showForm');
        const closeFormButton = document.getElementById('closeForm');
        const popupForm = document.getElementById('popupForm');
        const blogForm = document.getElementById('blogForm');

        // Show the form when the button is clicked
        showFormButton.addEventListener('click', function () {
            popupForm.classList.remove('hidden');
        });

        // Close the form when the close button is clicked
        closeFormButton.addEventListener('click', function () {
            // Submit the form data to the servlet
            blogForm.submit();
        });
    });
</script>


<body>
    <div class="container mx-auto p-4">
     <!-- Your existing code -->
<div class="container mx-auto p-4 flex items-center justify-between">
    <h1 class="text-3xl font-bold mb-4">Blogs</h1>
    <button id="showForm" class="w-8 h-8 rounded-full bg-gray-800 dark:bg-gray-100 dark:text-gray-800 text-white flex items-center justify-center focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-black" aria-label="edit note" role="button">
        <svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-pencil" width="20" height="20" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
            <path stroke="none" d="M0 0h24v24H0z"></path>
            <path d="M4 20h4l10.5 -10.5a1.5 1.5 0 0 0 -4 -4l-10.5 10.5v4"></path>
            <line x1="13.5" y1="6.5" x2="17.5" y2="10.5"></line>
        </svg>
    </button>
</div>

<!-- Hidden form -->
<div id="popupForm" class="fixed inset-0 flex items-center justify-center z-50 hidden">
    <div class="bg-white p-4 rounded shadow-lg">
        <h2 class="text-lg font-semibold mb-4">Blog Form</h2>
        <!-- Your form content goes here -->
<form id="blogform" action="blogform" method="post">
    Enter Blog Name: <input type="text" name="blogname">
    <br>
    Enter Blog Description: <input type="textfield" name="blogdescription">
    <br>
    <input type="hidden" name="clubId" value="${sessionScope.club.clubId}">
    <button type="submit" class="bg-blue-500 hover:bg-blue-600 text-white font-semibold py-2 px-4 rounded transition-all duration-300 mb-4 mr-2 ml-2 mt-6">Submit</button>
</form>


    </div>
</div>

        <div class="flex overflow-x-auto">
            <c:forEach var="blog" items="${sessionScope.blogs}">
                <div class="w-64 h-64 flex-shrink-0 dark:bg-gray-800 bg-white dark:border-gray-700 rounded-lg border border-gray-400 mb-6 mx-2 py-5 px-4">
                    <h4 class="text-gray-800 dark:text-gray-100 font-bold mb-3">${blog.blogName}</h4>
                    <p class="text-gray-800 dark:text-gray-100 text-sm">${blog.blogDescription}</p>
                    <div class="flex items-center justify-between text-gray-800 dark:text-gray-100">
                        <p class="text-sm">${blog.blog_id}</p>

                    </div>
                    
                </div>
            </c:forEach>
            
        </div>
    </div>
    
</body>
</html>
