<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/header.jsp" %>
<div class="container-fluid">

    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800"><span style="font-size: 130%; "><b>UsersCRUD</b></span></h1>
        <a href="<c:url value="/list"/>" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm">
            <i class="fas fa-download fa-sm text-white-50"></i><h6><span
                style="font-size: 120%; ">Lista użytkowników</span></h6></a>
    </div>
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary"><span
                    style="font-size: 130%; "><b>Edycja użytkownika</b></span></h6>
        </div>
        <div class="card-body">
            <form method="post">
                <input type="hidden" name="id" value="${user.id}"/>
                <div class="form-group">
                    <label for="userName"><span style="font-size: 110%; color: darkslateblue "><b>Nowa nazwa:</b></span></label>
                    <input value="${user.userName}" name="userName" type="text" class="form-control" id="userName"
                           placeholder="Nazwa użytkownika">
                </div>
                <div class="form-group">
                    <label for="userEmail"><span style="font-size: 110%;color: darkslateblue "><b>Nowy Email:</b></span></label>
                    <input value="${user.email}" name="userEmail" type="email" class="form-control" id="userEmail"
                           placeholder="Email użytkownika">
                </div>
                <div class="form-group">
                    <label for="userPassword"><span style="font-size: 110%;color: darkslateblue "><b>Nowe hasło:</b></span></label>
                    <input name="userPassword" type="password" class="form-control" id="userPassword"
                           placeholder="Hasło użytkownika">
                </div>

                <button type="submit" class="btn btn-primary"><span style="font-size: 110%; "><b>Edytuj</b></span>
                </button>
            </form>
        </div>
    </div>
</div>
<%@ include file="/footer.jsp" %>


