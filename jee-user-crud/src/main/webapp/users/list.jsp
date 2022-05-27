<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/header.jsp" %>
<div class="container-fluid">

    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800"><span style="font-size: 130%; "><b>UsersCRUD</b></span></h1>
        <a href="<c:url value="/user/add"/>" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm">
            <i class="fas fa-download fa-sm text-white-50"></i><h6><span
                style="font-size: 120%; ">Dodaj użytkownika</span></h6></a>
    </div>
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h4 class="m-0 font-weight-bold text-primary"><span style="font-size: 115%; ">Lista użytkowników</span></h4>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table">
                    <tr>
                        <th><h5><span style="font-size: 115%; color: #1c294e "><b>Id</b></span></h5></th>
                        <th><h5><span style="font-size: 115%; color: #1c294e"><b>Nazwa użytkownika</b></span></h5></th>
                        <th><h5><span style="font-size: 115%; color: #1c294e"><b>Email</b></span></h5></th>
                        <th><h5><span style="font-size: 115%; color: #1c294e"><b>Akcja</b></span></h5></th>
                    </tr>
                    <c:forEach items="${users}" var="user">
                        <tr>
                            <td>${user.id}</td>
                            <td>${user.userName}</td>
                            <td>${user.email}</td>
                            <td>
                                <a href='<c:url value="/user/show?id=${user.id}"/>'><span style="font-size: 110%; "><b>Pokaż</b></span></a>
                                <a href='<c:url value="/user/edit?id=${user.id}"/>'><span style="font-size: 110%; "><b>Edytuj</b></span></a>
                                <a href='<c:url value="/user/delete?id=${user.id}"/>'><span
                                        style="font-size: 110%; "><b>Usuń</b></span></a>
                            </td>
                        </tr>
                    </c:forEach>
                </table>
            </div>
        </div>
    </div>
</div>
<!-- /.container-fluid -->
<%@ include file="/footer.jsp" %>

