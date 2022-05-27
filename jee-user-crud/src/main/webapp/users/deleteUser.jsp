<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/header.jsp" %>
<div class="container-fluid">

    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800"><span style="font-size: 130%; "><b>UsersCRUD</b></span></h1>
    </div>
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h4 class="m-0 font-weight-bold text-primary"><span style="font-size: 110%; color: firebrick ">Czy na pewno chcesz usunąc użytkownika o ID: ${user.id}?</span>
            </h4>
        </div>
        <div class="card-body">
            <form method="post">
                <input type="hidden" name="id" value="${user.id}"/>

                <button type="submit" class="btn btn-primary"><h5><Strong><span
                        style="font-size: 120%; ">Tak!</span></Strong></h5></button>
                <a href="<c:url value="/list"/>" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm">
                    <i class="fas fa-download fa-sm text-white-50"></i><b><span style="font-size: 125%; ">Wróc do listy użytkowników</span></b></a>
            </form>
        </div>
    </div>
</div>
<%@ include file="/footer.jsp" %>


