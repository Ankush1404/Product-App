<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1" >

     <!-- Include the "base.jsp" file and "./" means "Current Directory", then "File" name. -->
     <%@ include file="./base.jsp" %>

</head>
<body background="${pageContext.request.contextPath}/resources/images/add.jpg">

     <div class="container text-white mt-5">
         <div class="row">

             <!-- "md-6" means it takes "6 Grids" from total "12 Grids" and "md-3" means it shift the "3 Grids" from "Left" and "3 Grids" from "Right" . -->
             <div class="col-md-6 offset-md-3">

                 <h1 class="text-center mb-3">Change Product Details</h1>

                 <!-- We need to use "Absolute Path" instead of "Relative Path". -->
                 <form action="${pageContext.request.contextPath}/handleUpdateProduct" method="post">

                      <input type="hidden" value="${userLogInId}" name="logInId" />

                      <input type="hidden" value="${product.id}" name="id" />

                      <div class="form-group mt-3">
                          <label for="name">Product Name</label>
                          <input name="name" class="form-control" id="name" aria-describedby="emailHelp" placeholder="Enter product name here"
                          value="${product.name}"/>
                      </div>

                      <div class="form-group mt-3">
                          <label for="description">Product Description</label>
                          <textarea name="description" class="form-control" id="description" rows="5"
                          placeholder="Enter the product description">${product.description}</textarea>
                      </div>

                      <div class="form-group mt-3">
                          <label for="description">Product Company</label>
                          <input name="company" type="text" class="form-control" id="company" placeholder="Enter product company" value="${product.company}"/>
                      </div>

                       <div class="form-group mt-3">
                          <label for="price">Product Price</label>
                          <input name="price" type="text" class="form-control" id="price" placeholder="Enter product price" value="${product.price}"/>
                      </div>

                      <div class="form-group mt-3">
                          <label for="phoneNumber">Your Phone Number</label>
                          <input name="ownerPhoneNumber" type="text" class="form-control" id="price" placeholder="Enter your phone number"
                                 value="${product.ownerPhoneNumber}"/>
                          <p><small>Please enter your valid phoneNumber.</small></p>
                      </div>

                      <div class="form-group mt-3">
                          <label for="email">Your Email</label>
                          <input name="ownerEmail" type="text" class="form-control" id="email" placeholder="eg. sam@gmail.com"
                                 value="${product.ownerEmail}" readonly/>
                          <p><small>Email will not be changed.</small></p>
                      </div>

                      <p>${message}</p>

                      <div class="container text-center mb-3 mt-4">

                          <!-- "pageContext.request.contextPath" gives the "Project" name or host name, otherwise with
                           only "/" it will clear "Project" name and gives error. -->
                          <a href="${pageContext.request.contextPath}/home/${userLogInId}" class="btn btn-outline-danger">Cancel</a>

                          <button type="submit" class="btn btn-success">Update</button>
                      </div>
                 </form>

             </div>

         </div>
     </div>

</body>
</html>