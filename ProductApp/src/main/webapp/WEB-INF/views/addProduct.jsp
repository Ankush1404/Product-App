<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!doctype html>
<html lang="en">
<head>

     <%@ include file="./base.jsp" %>

</head>
<body background="${pageContext.request.contextPath}/resources/images/add.jpg">

      <div class="container text-white mt-5 mb-5">
          <div class="row">

              <!-- "md-6" means it takes "6 Grids" from total "12 Grids" and "md-3" means it shift the "3 Grids" from
               "Left" and "3 Grids" from "Right" . -->
              <div class="col-md-6 offset-md-3">

                  <h1 class="text-center mt-3 mb-3">Fill the Product Details</h1>

                  <form action="${pageContext.request.contextPath}/handleProduct" method="post">

                       <input type="hidden" value="${logInId}" name="userLogInId" />

                       <div class="form-group mt-3">
                           <label for="name">Product Name</label>
                           <input name="name" class="form-control" id="name" aria-describedby="emailHelp" placeholder="Enter product name here"  required="" autofocus="" />
                       </div>

                       <div class="form-group mt-3">
                           <label for="description">Product Description</label>
                           <textarea name="description" class="form-control" id="description" rows="5" placeholder="Enter the product description"  required="" autofocus=""></textarea>
                       </div>

                       <div class="form-group mt-3">
                           <label for="name">Product Company</label>
                           <input name="company" class="form-control" id="name" aria-describedby="emailHelp" placeholder="Enter product company here"  required="" autofocus="" />
                       </div>

                       <div class="form-group mt-3">
                           <label for="price">Product Price</label>
                           <input name="price" type="text" class="form-control" id="price" placeholder="Enter product price"  required="" autofocus="" />
                       </div>

                       <div class="form-group mt-3">
                           <label for="phoneNumber">Your Phone Number</label>
                           <input name="ownerPhoneNumber" type="text" class="form-control" id="price" placeholder="Enter your phone number"  required="" autofocus="" />
                           <p><small>Please enter your valid Phone Number.</small></p>
                       </div>

                       <div class="form-group mt-3">
                           <label for="email">Your Email Address</label>
                           <input name="ownerEmail" type="text" class="form-control" id="email" placeholder="eg. sam@gmail.com"  required="" autofocus="" />
                           <p><small>Please enter your valid email which is used during Sign Up or Log In, Otherwise you will have to face the problem.</small></p>
                       </div>

                       <p class="mt-2 mb-2">${message}</p>

                       <div class="container text-center mt-4 mb-4">
                           <a href="${pageContext.request.contextPath}/home/${logInId}" class="btn btn-outline-warning">Back</a>
                           <button type="submit" class="btn btn-success">Add</button>
                       </div>
                  </form>
              </div>

          </div>
      </div>

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