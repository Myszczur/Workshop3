package pl.coderslab.servlet;

import pl.coderslab.users.User;
import pl.coderslab.users.UserDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet("/user/show")
public class UserShow extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        UserDao userDao = new UserDao();
        String idToShow = request.getParameter("id");
        User show = userDao.read(Integer.parseInt(idToShow));
        request.setAttribute("user", show);

        getServletContext().getRequestDispatcher("/users/userShow.jsp").forward(request, response);
        response.sendRedirect(request.getContextPath() + "/list");
    }

}
