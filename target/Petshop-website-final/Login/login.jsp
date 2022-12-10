<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <!-- <link rel="stylesheet" href="fonts/icomoon/style.css"> -->

    <!-- <link rel="stylesheet" href="css/owl.carousel.min.css"> -->

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">

    <!-- Style -->
    <link rel="stylesheet" href="css/style.css">

    <title>Login #9</title>
  </head>
  <body>



  <div class="content">
    <div class="container">
      <div class="row justify-content-center">
        <!-- <div class="col-md-6 order-md-2">
          <img src="images/undraw_file_sync_ot38.svg" alt="Image" class="img-fluid">
        </div> -->
        <div class="col-md-6 contents">
          <div class="row justify-content-center">
            <div class="col-md-12">
              <div class="form-block">
                  <div class="mb-4">
                  <h3>Đăng nhập</h3>
                </div>
                <form action="LoginController" method="post">
                  <div class="form-group first">
                    <p> Tên đăng nhập</p>
                    <input type="text" class="form-control" id="username" name="username">
                  </div>
                  <div class="form-group last mb-4">
                    <p>Mật khẩu</p>
                    <input type="password" class="form-control" id="password" name="password">
                  </div>
                  <% String status = (String) request.getAttribute("loginStatus");%>
                  <h5 style="text-align:left; color: red;">
                    <%= status == null ? "" : status%>
                  </h5>

                  <div class="d-flex mb-5 align-items-center">
                    <!-- <label class="control control--checkbox mb-0">

                      <span class="caption">Nhớ mật khẩu</span>
                      <input type="checkbox" checked="checked"/>
                      <div class="control__indicator"></div>
                    </label> -->
                    <span class="ml-auto"><a href="forgetpass.jsp" class="forgot-pass">Quên mật khẩu</a></span>
                  </div>
<%--                  <a href="#" style="text-decoration: none;">--%>
<%--                    <div class="button_login"> Đăng nhập</div>--%>
<%--                  </a>--%>
                  <input type="submit" value="Đăng nhập" class="btn btn-pill text-white btn-block btn-primary">

                  <span class="d-block text-center my-4 text-muted"> Đăng nhập với:</span>

                  <div class="social-login text-center">
                    <a href="#" class="facebook">
                      <span ><i class="fa-brands fa-facebook-f"></i></span>
                    </a>
                    <a href="#" class="twitter">
                      <span ><i class="fa-brands fa-twitter"></i></span>
                    </a>
                    <a href="#" class="google">
                      <span> <i class="fa-brands fa-google"></i></span>
                    </a>

                    <span class="d-block text-center my-4 text-muted"><a href="signup.jsp" style="width: 60px; color: #6c757d;">Đăng kí</a> </span>
                  </div>
                </form>
              </div>
            </div>
          </div>

        </div>

      </div>
    </div>
  </div>
  </body>
</html>