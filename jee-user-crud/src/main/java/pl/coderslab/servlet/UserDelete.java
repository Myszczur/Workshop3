package pl.coderslab.servlet;

import pl.coderslab.users.User;
import pl.coderslab.users.UserDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet("/user/delete")
public class UserDelete extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        UserDao userDao = new UserDao();
        String idToDelete = request.getParameter("id");
        int deleteId = Integer.parseInt(idToDelete);
        User idToDeleted = userDao.read(deleteId);
        request.setAttribute("user", idToDeleted);
        getServletContext().getRequestDispatcher("/users/deleteUser.jsp").forward(request, response);
        response.sendRedirect(request.getContextPath() + "/list");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        UserDao userDao = new UserDao();
        userDao.delete(Integer.parseInt(request.getParameter("id")));
        response.sendRedirect(request.getContextPath() + "/list");
    }
}
