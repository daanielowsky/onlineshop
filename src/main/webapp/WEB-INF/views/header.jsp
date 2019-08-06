<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div style="float: right; padding: 10px">
<sec:authorize access="!isAuthenticated()">
<a href="/login">Zaloguj się</a>
<a href="/register">Zarejestruj się</a>
    <br>
    <br>
    <br>
</sec:authorize>
<sec:authorize access="isAuthenticated()">
    Witaj, ${userprofile.firstname}! <a href="/profile">Profil</a> <a href="/logout">Wyloguj</a>
    <br>
    <br>
    <br>
    </div>
</sec:authorize>
<center>
    <a href="/"><img src="https://i.ibb.co/mBdg1X5/cooltext331901052392998.png"/></a><br>
</center>
<div class="dropdown">
    <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Kategorie
        <span class="caret"></span></button>
    <ul class="dropdown-menu">
        <c:forEach items="${categoriesDropdown}" var="category">
        <li><a href="/category/${category.name}">${category.name}</a></li>
        </c:forEach>
    </ul>
</div>