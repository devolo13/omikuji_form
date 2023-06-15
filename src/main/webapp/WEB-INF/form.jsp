<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!-- c:out ; c:forEach etc. -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- Formatting (dates) -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html data-bs-theme="dark">
<head>
    <meta charset="UTF-8">
    <title>Omikuji</title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/main.css">
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/js/app.js"></script>
</head>
<body class="container">
    <h1 class="text-center">Send an Omikuji</h1>
    <div class="border border-4 p-2">
        <form action="/show">
            <label for="number">Pick any number from 5 to 25</label>
            <br/>
            <input type="number" id="number" name="number" class="mb-4">
            <br/>
            <label for="city">Enter the name of any city.</label>
            <br/>
            <input type="text" id="city" name="city" class="mb-4">
            <br/>
            <label for="person">Enter the name of any real person</label>
            <br/>
            <input type="text" id="person" name="person" class="mb-4">
            <br/>
            <label for="hobby">Enter professional endeavor or hobby:</label>
            <br/>
            <input type="text" id="hobby" name="hobby" class="mb-4">
            <br/>
            <label for="thing">Enter any type of living thing.</label>
            <br/>
            <input type="text" id="thing" name="thing" class="mb-4">
            <br/>
            <label for="complement">Say something nice to someone</label>
            <br/>
            <textarea id="complement" name="complement" class="mb-4"></textarea>
            <br/>
            <p class="fst-italic">Send and show a friend</p>
            <button class="btn btn-primary">Send</button>
        </form>
    </div>
</body>
</html>

