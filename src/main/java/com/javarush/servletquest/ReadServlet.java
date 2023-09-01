package com.javarush.servletquest;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;


@WebServlet(name = "readServlet", value = "/read")
public class ReadServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession(false);
        session.setAttribute("step", (int) session.getAttribute("step") + 1);
        Integer value = Integer.parseInt(req.getParameter("choice"));
        session.setAttribute("choice", value);
        String page = "";
        if(value == 2 || (int) session.getAttribute("step") == 4){
            page = "resultPage.jsp";
            if ((int)session.getAttribute("choice") == 2 && (int) session.getAttribute("step") == 2){
                session.setAttribute("resultText", "def.1");
            } else if ((int)session.getAttribute("choice") == 2 && (int) session.getAttribute("step") == 3) {
                session.setAttribute("resultText", "def.2");
            } else if ((int)session.getAttribute("choice") == 2 && (int) session.getAttribute("step") == 4){
                session.setAttribute("resultText", "def.3");
            } else if ((int) session.getAttribute("choice") == 1 && (int) session.getAttribute("step") == 4) {
                session.setAttribute("resultText", "win.1");
            }
        }else {
            page = "questPage.jsp";
        }
        resp.sendRedirect(page);
    }
}