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
                    <div class="form-group">
                        <label><h4>Id: </h4></label>
                        <label><h5>${user.id}</h5></label>
                    </div>
                    <div class="form-group">
                        <label><h4>Nazwa: </h4></label>
                        <label><h5>${user.userName}</h5></label>
                    </div>
                    <div class="form-group">
                        <label><h4>Email:</h4></label>
                        <label><h5>${user.email}</h5></label>
                    </div>
                    <div>
                        <a href='<c:url value="/user/edit?id=${user.id}"/>'><h5>Edytuj</h5></a>
                        <a href='<c:url value="/user/delete?id=${user.id}"/>'><h5>Usuń</h5></a>
                    </div>
                </table>
            </div>
        </div>
    </div>
</div>
<!-- /.container-fluid -->
<%@ include file="/footer.jsp" %>

