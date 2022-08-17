<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS. -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">

<!-- Bootstrap JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"
        integrity="sha384-q2kxQ16AaE6UbzuKqyBE9/u/KzioAlnx2maXQHiDX9d4/zp8Ok3f+M7DPm+Ib6IU" crossorigin="anonymous"></script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.min.js"
        integrity="sha384-pQQkAEnwaBkjpqZ8RU1fF1AKtTcHJwFl3pblpTlHXybJjHpMYo79HY3hIi4NKxyj" crossorigin="anonymous"></script>

<!-- Title. -->
<title>
<c:out value="${title}">Product App</c:out>
</title>

<!-- Modal -->
<div class="modal fade" id="Modal" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
     aria-labelledby="staticBackdropLabel" aria-hidden="true">
     <div class="modal-dialog">

         <div class="modal-content">
             <div class="modal-header">
                 <h2 class="modal-title" id="staticBackdropLabel">Contact Us</h2>
                 <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
             </div>

             <div class="modal-body">
                  <h5>Contact Info</h5>

                  <div class="mt-3">
                      <label>Email</label>
                      <a href="https://mail.google.com/mail/" style="text-decoration: none">goyalankush608@gmail.com</a>
                  </div>

                  <div class="mt-2">
                      <label>Linkedin</label>
                      <a href="https://www.linkedin.com/in/" style="text-decoration: none">Ankush Goyal</a>
                  </div>
             </div>

             <div class="modal-footer">
                 <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
             </div>
         </div>

     </div>
</div>

<!-- Navigation Bar. -->
<nav class="navbar navbar-expand-lg navbar-light bg-dark">

    <div class="container-fluid">

        <a class="navbar-brand text-light" style="font-weight: bold" href="#">Product App</a>

        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
               <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
               <li class="nav-item">
                  <a class="nav-link active" style="color: white; font-weight: bold" aria-current="page" href="${pageContext.request.contextPath}/home/${id}">Home</a>
               </li>

               <li class="nav-item">
                  <a class="nav-link active" style="color: white; font-weight: bold" href="${pageContext.request.contextPath}/about/${id}">About</a>
               </li>

               <li class="nav-item">
                  <a class="nav-link active" style="color: white; font-weight: bold" href="" data-bs-toggle="modal"
                     data-bs-target="#Modal">Contact Us</a>
               </li>
            </ul>

           <a class="btn btn-outline-primary mx-3 my-3" type="submit" href="${pageContext.request.contextPath}/signUp">Sign Up</a>
        </div>

    </div>

</nav>