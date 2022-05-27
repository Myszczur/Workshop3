package pl.coderslab.servlet;

import pl.coderslab.users.User;
import pl.coderslab.users.UserDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet("/user/edit")
public class UserEdit extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        UserDao userDao = new UserDao();
        String id = request.getParameter("id");

        User userEdit = userDao.read(Integer.parseInt(id));

        request.setAttribute("user", userEdit);

        getServletContext().getRequestDispatcher("/users/editUser.jsp")
                .forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        User user = new User();
        UserDao userDao = new UserDao();
        String userName = request.getParameter("userName");
        String userEmail = request.getParameter("userEmail");
        String userPassword = request.getParameter("userPassword");
        user.setId(Integer.parseInt(request.getParameter("id")));
        user.setPassword(userPassword);
        user.setUserName(userName);
        user.setEmail(userEmail);
        user.setEmail(userEmail);

        userDao.update(user);
        response.sendRedirect(request.getContextPath() + "/list");
    }
}
