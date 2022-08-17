<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!doctype html>
<html lang="en">
<head>

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

<!--
     <!-- Image file. -->
    <link href="<c:url value="/resources/css/style.css" />" />
-->

<style>

.form-signin {
width: 100%;
max-width: 330px;
padding: 15px;
margin: auto;
}

</style>

<title>Log In Page</title>
</head>
<body class="text-white" background="${pageContext.request.contextPath}/resources/images/logIn.jpg">

     <main class="form-signin mt-5">

          <form action="handleLogInForm" method="post">

               <!--
               <img class="mb-3 mt-3" src="D:\Images\Leaf-Logo.JPG" alt="" width="72" height="57">
               -->

               <h1 class="text-center h3 mb-3 mt-5 fw-normal">Log In</h1>

               <label for="inputEmail" class="visually-hidden">Email address</label>
               <input name="email" type="email" id="inputEmail" class="form-control" placeholder="Email address" required="" autofocus="">

               <label for="inputPassword" class="visually-hidden">Password</label>
               <input name="password" type="password" id="inputPassword" class="form-control mt-3" placeholder="Password" required="">

               <p>${message}</p>

               <div class="container text-center mt-3">
                   <a href="start" type="cancel" class="btn btn-outline-danger" data-bs-dismiss="modal">Cancel</a>
                   <button type="submit" class="btn btn-outline-primary">Log In</button>
               </div>

               <div class="form-group text-center mt-3">
                   <a href="forgetPassword">Forget Password</a>
                   <p class="mt-2">Do not have an account</p>
                   <a href="signUp" type="submit" class="btn btn-outline-primary">Sign Up</a>
               </div>

          </form>

     </main>

     <!-- Optional JavaScript; choose one of the two! -->

     <!-- Option 1: Bootstrap Bundle with Popper -->
     <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>

     <!-- Option 2: Separate Popper and Bootstrap JS -->
     <!--
     <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js" integrity="sha384-q2kxQ16AaE6UbzuKqyBE9/u/KzioAlnx2maXQHiDX9d4/zp8Ok3f+M7DPm+Ib6IU" crossorigin="anonymous"></script>
     <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.min.js" integrity="sha384-pQQkAEnwaBkjpqZ8RU1fF1AKtTcHJwFl3pblpTlHXybJjHpMYo79HY3hIi4NKxyj" crossorigin="anonymous"></script>
     -->

</body>
</html>