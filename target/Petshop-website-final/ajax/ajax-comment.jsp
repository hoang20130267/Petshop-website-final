<%@ page import="vn.edu.hcmuaf.fit.beans.Comment" %><%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 02/01/2023
  Time: 9:26 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%Comment cmt = (Comment) request.getAttribute("cmt");%>
<div id="cmt-section">
  <div class="container mt-5">
    <div class="row  d-flex justify-content-center">
      <div class="col-md-8">
        <div class="card p-3">

          <div class="d-flex justify-content-between align-items-center">

            <div class="user d-flex flex-row align-items-center">

              <img src="https://i.imgur.com/hczKIze.jpg" width="30" class="user-img rounded-circle mr-2">
              <span><small class="font-weight-bold text-primary"><%=cmt.getCustomerID()%></small> <small class="font-weight-bold"><%=cmt.getDescription()%></small></span>
            </div>
          </div>
          <div class="action d-flex justify-content-between mt-2 align-items-center">
            <div class="reply px-4">
              <small>Remove</small>
              <span class="dots"></span>
            </div>
            <div class="icons align-items-center">
              <i class="fa fa-star text-warning"></i>
              <i class="fa fa-check-circle-o check-icon"></i>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
