<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/header.jsp" %>
<div class="container-fluid">

  <!-- Page Heading -->
  <div class="d-sm-flex align-items-center justify-content-between mb-4">
    <h1 class="h3 mb-0 text-gray-800">UsersCRUD</h1>
    <a href="<c:url value="/list"/>" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm">
      <i class="fas fa-download fa-sm text-white-50"></i><h6>Lista użytkowników</h6></a>
  </div>
  <div class="card shadow mb-4">
    <div class="card-header py-3">
      <h4 class="m-0 font-weight-bold text-primary">Informacje o użytkowniku </h4>
    </div>
    <div class="card-body">
      <div class="table-responsive">
        <table class="table">
          <tr>
            <th><h5>Id</h5></th>
            <th><h5>Nazwa użytkownika</h5></th>
            <th><h5>Email</h5></th>
            <th><h5>Akcja</h5></th>
          </tr>
<%--          <c:forEach items="${users}" var="user">--%>
            <tr>
              <td>${user.id}</td>
              <br/>
              <td>${user.userName}</td>
              <br/>
              <td>${user.email}</td>
              <td>
                <a href='<c:url value="/user/show?id=${user.id}"/>'>Pokaż</a>
                <a href='<c:url value="/user/edit?id=${user.id}"/>'>Edytuj</a>
                <a href='<c:url value="/user/delete?id=${user.id}"/>'>Usuń</a>
              </td>
            </tr>
<%--          </c:forEach>--%>
        </table>
      </div>
    </div>
  </div>
</div>
<!-- /.container-fluid -->
<%@ include file="/footer.jsp" %>

