<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Registration</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.7/dist/tailwind.min.css">
</head>
<body class="bg-offwhite h-screen flex items-center justify-center">
    <div class="bg-white rounded-lg shadow-md p-8 w-80" style="border-top: 4px solid #6B46C1;">
        <h1 class="text-2xl font-semibold text-purple-700 mb-4">User Registration</h1>
        <form action="register" method="post">
            <div class="mb-4">
                <label for="username" class="block text-sm font-medium text-gray-600">Username</label>
                <input type="text" id="username" name="username" class="mt-1 p-2 block w-full rounded-md border-gray-300">
            </div>
            <div class="mb-4">
                <label for="email" class="block text-sm font-medium text-gray-600">Email</label>
                <input type="email" id="email" name="email" class="mt-1 p-2 block w-full rounded-md border-gray-300">
            </div>
            <div class="mb-4">
                <label for="password" class="block text-sm font-medium text-gray-600">Password</label>
                <input type="password" id="password" name="password" class="mt-1 p-2 block w-full rounded-md border-gray-300">
            </div>
            <div class="mb-6">
                <button type="submit" class="px-4 py-2 bg-purple-700 text-white rounded-md hover:bg-purple-800">Register</button>
            </div>
            <p class="text-sm text-gray-600">Already have an account? <a href="user_login.jsp" class="text-yellow-500">Login</a></p>
        </form>
    </div>
</body>
</html>
