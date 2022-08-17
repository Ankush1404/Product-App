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

<style>

.form-signin {
width: 100%;
max-width: 330px;
padding: 15px;
margin: auto;
}

.card {
width: 100%;
max-width: 330px;
padding: 15px;
margin: auto;
}

</style>

<title>Forget Password Page</title>
</head>
<body>

     <div class="container bg-dark mt-5">
         <div class="card">

             <div class="card-body">
                 <div class="card-header text-center">
                     <h2>New Password</h2>
                 </div>

                 <form class="form-signin" action="handleForgetPasswordForm" method="post">
                      <div class="form-group mt-3">
                          <label for="exampleInputEmail">Your Email</label>
                          <input name="email" type="text" class="form-control " id="exampleInputEmail" arial-describedby="emailHelp"
                                 placeholder="Enter Email Address" />
                      </div>

                      <div class="form-group mt-3">
                          <label for="exampleInputEmail">New Password</label>
                          <input name="password" type="password" class="form-control" id="exampleInputEmail" arial-describedby="emailHelp"
                                 placeholder="Enter New Password" />
                      </div>

                      <p>${message}</p>

                      <div class="container text-center mt-3">
                          <a href="start" type="back" class="btn btn-outline-warning" data-bs-dismiss="modal">Back</a>
                          <button type="submit" class="btn btn-outline-success">Submit</button>
                      </div>
                 </form>

             </div>

         </div>
     </div

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