package pl.supra.workTogether;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet("")
public class ServletWorkController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ServletContext servletContext = getServletContext();
        Object text = servletContext.getAttribute("text");
        request.setAttribute("text",text!= null ? text : "");
        request.getRequestDispatcher("/index.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String text = request.getParameter("text");
        ServletContext context = getServletContext();
        context.setAttribute("text", text);
        request.setAttribute("text", text != null ? text : "");
        request.getRequestDispatcher("/index.jsp").forward(request, response);
    }
}
