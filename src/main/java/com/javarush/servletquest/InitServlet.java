package com.javarush.servletquest;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "initServlet", value = "/start")
public class InitServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession(true);
        String user = req.getParameter("user");
        session.setAttribute("user", user);
        session.setAttribute("step", 1);
        session.setAttribute("count", 1);
        session.setAttribute("gameCount", 0);
        resp.sendRedirect("questPage.jsp");
    }
}
