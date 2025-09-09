package com.example;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.WebServlet;
import java.io.IOException;

@WebServlet("/intro")
public class IntroServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8"); // 한글 깨짐 방지

        String name = request.getParameter("name");
        String age = request.getParameter("age");
        String mbti = request.getParameter("mbti");
        String foods = request.getParameter("foods");

        String[] foodArray = foods.split(",");

        request.setAttribute("name", name);
        request.setAttribute("age", age);
        request.setAttribute("mbti", mbti);
        request.setAttribute("foods", foodArray);

        RequestDispatcher dispatcher = request.getRequestDispatcher("/result.jsp");
        dispatcher.forward(request, response);
    }
}

