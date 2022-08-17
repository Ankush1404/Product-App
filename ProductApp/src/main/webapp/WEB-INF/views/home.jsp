<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!doctype html>
<html lang="en">
<head>

     <!-- CSS -->
     <link href="/resources/css/style.css" />
     <%@ include file="./base.jsp" %>

</head>
<body background="${pageContext.request.contextPath}/resources/images/background1.jpg">

      <!-- Modal -->
      <div class="modal fade" id="MyModal" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
           aria-labelledby="staticBackdropLabel" aria-hidden="true">
          <div class="modal-dialog">

              <div class="modal-content">
                  <div class="modal-header">
                      <h5 class="modal-title" id="staticBackdropLabel">Description</h5>
                      <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                  </div>

                  <div class="modal-body">
                      <p>${description}</p>
                  </div>

                  <div class="modal-footer">
                      <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                  </div>
              </div>

         </div>
      </div>

     <div class="container mt-5">
         <div class="row">

             <div class="col-md-12">

                 <h1 class="text-center text-white mb-3">Welcome to Product App</h1>

                 <input class="mb-2" type="hidden" value="${id}" name="id" />

                 <p class="mt-3 mb-2">${message}</p>

                 <table class="table text-white">
                       <thead class="table-dark text-center">
                             <tr>
                                <th scope="col">Product Name</th>
                                <th scope="col">Description</th>
                                <th scope="col">Price</th>
                                <th scope="col">Owner Contact</th>
                                <th scope="col">Action</th>
                             </tr>
                       </thead>

                       <tbody class="text-center">

                            <!-- Each "Product" from "Database" by using "forEach" loop is come into "product" variable. -->
                            <c:forEach items="${products}" var="product">
                              <tr>
                                 <td>${product.name}</td>
                                 <td>${product.description}</td>
                                 <!--
                                 <td>
                                    <a href="productDescription/${product.id}" type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#MyModal">
                                            Description
                                    </a>
                                 </td>-->
                                 <td class="font-weight-bold">&#x20B9; ${product.price}</td>
                                 <td>
                                     <div class="input-group mb-3">
                                         <span class="input-group-text" id="inputGroup-sizing-default">Phone Number</span>
                                         <input type="text" class="form-control" width="100" aria-label="Sizing example input"
                                                aria-describedby="inputGroup-sizing-default" value="${product.ownerPhoneNumber}" readonly>
                                     </div>

                                    <div class="input-group mb-3">
                                        <span class="input-group-text" id="inputGroup-sizing-default">Email Address</span>
                                        <input type="text" class="form-control" width="50" aria-label="Sizing example input"
                                               aria-describedby="inputGroup-sizing-default" value="${product.ownerEmail}" readonly>
                                    </div>
                                 </td>

                                 <td>
                                    <!--<a href="delete/${product.id}"><i class="fa fa-trash" style="font-size: 30px" aria-hidden="true"></i></a>
                                    <a href="update/${product.id}"><i class="fa fa-pen-nib text-primary" style="font-size: 30px"
                                       aria-hidden="true"></i></a>
                                        -->
                                    <a type="button" class="btn btn-sm btn-outline-danger" href="${pageContext.request.contextPath}/deleteChecking/${id}/${product.id}">Delete</a>
                                    <a type="button" class="btn btn-sm btn-outline-success" href="${pageContext.request.contextPath}/updateChecking/${id}/${product.id}">Update</a>
                                 </td>
                              </tr>
                            </c:forEach>
                       </tbody>
                 </table>

                  <div class="container text-center mb-5 mt-3">
                      <a href="${pageContext.request.contextPath}/addProduct/${id}" class="btn btn-outline-success">Add Product</a>
                 </div>
             </div>

         </div>
     </div>

     <!--
     <script>
           function description(Product id) {
               <c:forEach items="${products}" var="product">

               </c:forEach>
           }
     </script>
     -->

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