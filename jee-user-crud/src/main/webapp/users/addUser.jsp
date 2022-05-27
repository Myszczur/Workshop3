<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/header.jsp" %>
<div class="container-fluid">

    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800"><span style="font-size: 130%; "><b>UsersCRUD</b></span></h1>
        <a href="<c:url value="/list"/>" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm">
            <i class="fas fa-download fa-sm text-white-50"></i><h6><span style="font-size: 120%; ">Lista użytkowników</span></h6> </a>
    </div>
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h5 class="m-0 font-weight-bold text-primary"><span style="font-size: 115%; ">Dodaj użytkownika</span></h5>
        </div>
        <div class="card-body">
            <form method="post">
                <div class="form-group">
                    <label for="userName"><h5>Nazwa użytkownika</h5></label>
                    <input name="userName" type="text" class="form-control" id="userName"
                           placeholder="Podaj nazwę użytkownika">
                </div>
                <div class="form-group">
                    <label for="userEmail"><h5>Email</h5></label>
                    <input name="userEmail" type="email" class="form-control" id="userEmail" placeholder="Podaj email">
                </div>
                <div class="form-group">
                    <label for="userPassword"><h5>Hasło</h5></label>
                    <input name="userPassword" type="password" class="form-control" id="userPassword"
                           placeholder="Podaj hasło">
                </div>

                <button type="submit" class="btn btn-primary"><span style="font-size: 110%; ">Zapisz</span></button>
            </form>

        </div>
    </div>
</div>
<%@ include file="/footer.jsp" %>
