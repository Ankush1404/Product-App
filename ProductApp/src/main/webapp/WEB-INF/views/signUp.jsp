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

<title>Sign Up Page</title>
</head>
<body background="${pageContext.request.contextPath}/resources/images/background.jpg">

     <!--
     <div class="modal" id="myModal" tabindex="-1">
         <div class="modal-dialog">

             <div class="modal-content">
                 <div class="modal-header">
                     <h5 class="modal-title">Sign Up </h5>
                     <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                 </div>

                 <div class="modal-body">
                     <p>Fill his/her all information details properly and correctly.
                        It is very important for your convenience and our application.</p>
                 </div>

                 <div class="modal-footer">
                     <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                 </div>
             </div>

         </div>
     </div>
     -->

     <div class="container mt-5 mb-5">
         <div class="card">
             <div class="card-body">

                 <div class="card-header text-center">
                     <h2>Sign Up</h2>
                 </div>

                 <form action="handleSignUpForm" method="post">
                       <div class="card mt-3 text-dark">
                           <div class="card-body bg-success">
                               <p">Full Name</p>

                               <div class="form-group">
                                   <label class="form-check-label" for="inlineRadio1">First Name</label>
                                   <input name= "firstName" type="text" class="form-control" placeholder="Enter First Name." required="" autofocus="" />
                               </div>

                               <div class="form-group my-3">
                                   <label class="form-check-label" for="inlineRadio1">Sur Name</label>
                                    <input name= "surName" type="text" class="form-control" placeholder="Enter Sur Name" required="" autofocus="" />
                               </div>
                           </div>
                       </div>

                       <div class="form-group mt-3">
                           <label for="exampleInputEmail">Your Date of Birth</label>
                           <input name="dob" type="text" class="form-control" id="exampleInputEmail" arial-describedby="emailHelp"
                                  placeholder="dd/mm/yyyy" required="" autofocus="" />
                       </div>

                       <div class="form-group mt-3">
                           <span class="mr-3">Select Gender</label>

                           <div class="form-check form-check-inline">
                               <input class="form-check-inline"  type="radio" name="gender" id="inlineRadio1" value="male">
                               <label class="form-check-label" for="inlineRadio1">Male</label>
                           </div>

                           <div class="form-check form-check-inline">
                               <input class="form-check-inline"  type="radio" name="gender" id="inlineRadio2" value="female" required="">
                               <label class="form-check-label" for="inlineRadio1">Female</label>
                           </div>
                       </div>

                       <div class="form-group mt-3">
                           <label for="exampleInputEmail">Your Phone Number</label>
                           <input name="phoneNumber" type="phone-number" class="form-control" id="exampleInputEmail" arial-describedby="emailHelp"
                                  placeholder="Enter Phone Number" required="" autofocus=""/>
                       </div>

                      <div class="form-group mt-3">
                          <label for="exampleInputEmail">Your Email Id</label>
                          <input name="email" type="text" class="form-control" id="exampleInputEmail" arial-describedby="emailHelp"
                                 placeholder="eg. sam@gmail.com" required="" autofocus="" />
                          <p><small>Enter a valid Email! You can be able to perform any process by using this Email only.</small></p>
                      </div>

                       <div class="form-group mt-3">
                          <label for="exampleInputEmail">Your Password</label>
                          <input name="password" type="password" class="form-control" id="exampleInputEmail" arial-describedby="emailHelp"
                                 placeholder="Enter Password" required="" autofocus="" />
                      </div>

                      <div class="card mt-3">
                          <div class="card-body bg-success">
                              <p>Your Address</p>

                              <div class="form-group">
                                  <label class="form-check-label" for="inlineRadio1">House Number</label>
                                  <input name= "address.houseNo" type="text" class="form-control" placeholder="Enter House No." required="" autofocus="" />
                              </div>

                              <div class="form-group mt-3">
                                  <label class="form-check-label" for="inlineRadio1">Street</label>
                                  <input name= "address.street" type="text" class="form-control" placeholder="Enter Street" required="" autofocus="" />
                              </div>

                              <div class="form-group mt-3">
                                  <label class="form-check-label" for="inlineRadio1">City</label>
                                  <input name="address.city" type="text" class="form-control" placeholder="Enter City" required="" autofocus="" />
                              </div>

                              <div class="form-group mt-3">
                                  <label class="form-check-label" for="inlineRadio1">State</label>
                                  <input name="address.state" type="text" class="form-control" placeholder="Enter State" required="" autofocus="" />
                              </div>

                              <div class="form-group mt-3">
                                  <label class="form-check-label" for="inlineRadio1">Pin Code</label>
                                  <input name="address.pinCode" type="text" class="form-control" placeholder="140022" required="" autofocus="" />
                              </div>
                          </div>
                      </div>

                      <div class="mt-1">
                          <p>${message}</p>
                      </div>

                      <div class="container text-center mt-3">
                           <button type="submit" class="btn btn-primary">Submit</button>
                      </div>
                 </form>

             <div>
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