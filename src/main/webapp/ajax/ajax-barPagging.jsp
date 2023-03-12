<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 3/7/2023
  Time: 10:03 AM
  To change this template use File | Settings | File Templates.
--%>
<style>
     li.active {
        background: blue;
    }
</style>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% int total =  Integer.parseInt(request.getParameter("total")); %>
<% int currentPage = Integer.parseInt(request.getParameter("page"));%>
<nav aria-label="Page navigation example">
  <ul class="pagination">
   <% int totalPages = total/9;
     if (total % 9 != 0 ) {
         totalPages++;
   }
     if (total == 0 ) {
         totalPages =1;
     }
        %>

      <%  for(int i=1 ; i < totalPages+1; i++) {  %>
      <div style="margin-left: 20px">
          <li class="page-item <%="item" + i%> <%=(i==1)? "active" : ""%>">
              <a onclick="pagging(this.id)" class="page-link " id="<%=i%>"><%=i%></a>
          </li>
      <%-- <input type="text" id="<%=i%>positionPage" class="positionPage" name="positionPage" value="<%=i%>" style="display: none">
          <label onclick=""  for="<%=i%>positionPage"><a>--%>
             <%-- <%=i%></a></label>--%>
      </div>
    <%}%>
  </ul>
</nav>
