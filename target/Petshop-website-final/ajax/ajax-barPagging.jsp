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
<% String positionPage = (String) request.getAttribute("positionPage"); %>
<nav aria-label="Page navigation example">
  <ul class="pagination">
   <% int totalPages = total/9;
     if (total % 9 != 0 ) {
         totalPages++;
   }
     if (total == 0 ) {
         totalPages =1;
     }
     if (positionPage == null) {
          positionPage = "1";
     }
     int indexPage = Integer.parseInt(positionPage);
        %>
    <%--  <% for (int i=1; i <= totalPages; i++) {

          if ( i ==1 || i == indexPage || i == totalPages || ( i <= indexPage + 1 && i >= indexPage -1)) { %>
      <li class="page-item <%="item" + i%> <%=(i==indexPage)? "active" : ""%>" value="<%=i%>">
          <a onclick="pagging(this.id)" class="page-link " id="<%=i%>"><%=i%></a>
      </li>
          <%} else if (i == indexPage + 2 || i == indexPage - 2 ) { %>
                <li> <a>...</a> </li>
          <%}
          }
       %>--%>
      <%  for(int i=1 ; i <= totalPages; i++) {  %>
      <div style="margin-left: 20px">
          <li class="page-item <%="item" + i%> <%=(i==indexPage)? "active" : ""%>" value="<%=i%>">
              <a onclick="pagging(this.id)" class="page-link " id="<%=i%>"><%=i%></a>
          </li>
      </div>
    <%}%>
  </ul>
</nav>