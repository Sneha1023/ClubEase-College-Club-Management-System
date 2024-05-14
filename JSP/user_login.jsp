<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Login</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.16/dist/tailwind.min.css" rel="stylesheet">
</head>
<body class="bg-offwhite h-screen flex items-center justify-center">

<div class="bg-white shadow-md p-8 rounded-md w-96" style="border-top: 4px solid #6B46C1;">
    <h2 class="text-2xl font-semibold text-purple-700 mb-4">User Login</h2>
    <form action="login" method="post">
        <div class="mb-4">
            <label for="username" class="block text-gray-600">Username:</label>
            <input type="text" id="username" name="username" class="form-input" required>
        </div>
        <div class="mb-6">
            <label for "password" class="block text-gray-600">Password:</label>
            <input type="password" id="password" name="password" class="form-input" required>
        </div>
        <div class="flex items-center justify-between">
            <button type="submit" class="bg-purple-700 text-white py-2 px-4 rounded-md hover:bg-purple-800">Login</button>
            <p class="text-gray-600">Not a user? <a href="user_reg.jsp" class="text-yellow-500">Register</a></p>
        </div>
    </form>
    <p class="mt-4 text-gray-600">ADMIN? <a href="admin_login.jsp" class="text-yellow-500">Admin Login</a></p>
</div>

</body>
</html>
