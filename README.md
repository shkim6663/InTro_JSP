**# InTro_JSP
Servlet과 JSP를 함께 사용하여 사용자의 자기소개 정보를 처리하고 출력하는 기능을 구현해봅니다. 실습을 통해 Form 입력값을 서버가 처리하고 동적으로 웹 페이지를 렌더링하는 흐름을 익히게 됩니다.**

**시연영상**


https://github.com/user-attachments/assets/4f426076-b863-4158-8e5e-dbe9baae177e




**1.자기소개 입력 폼 작성**

    <h1>나를 소개합니다</h1>
    <form action="intro" method="post">   <%-- intro는 서블릿 매핑 이름 --%>
        <div class="mb-3">
            <label class="form-label">이름</label>
            <input type="text" name="name" class="form-control" placeholder="이름을 입력하세요" required>
        </div>
        <div class="mb-3">
            <label class="form-label">나이</label>
            <input type="number" name="age" class="form-control" placeholder="나이를 입력하세요" min="0" required>
        </div>
        <div class="mb-3">
            <label class="form-label">MBTI</label>
            <input type="text" name="mbti" class="form-control" placeholder="예: INTJ" maxlength="4" required>
        </div>
        <div class="mb-3">
            <label class="form-label">좋아하는 음식</label>
            <input type="text" name="foods" class="form-control" placeholder="예: 마라탕,떡볶이,삼겹살" required>
        </div>
        <div class="mb-3">
            <label class="form-label">좋아하는 색상</label>
            <input type="text" name="color" class="form-control" placeholder="좋아하는 색상을 입력하세요" required>
        </div>
        <button type="submit" class="btn btn-primary w-100">제출</button>

      

**2.폼 데이터 서버로 전송**

    <form action="intro" method="post">   <%-- intro는 서블릿 매핑 이름 --%>


**3. 서블릿에서 요청 처리**

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

**4. jsp에서 결과 출력**

       <div class="result-container">
       <h1>소개 결과</h1>
       <p><strong>이름:</strong> <%= name %></p>
       <p><strong>나이:</strong> <%= age %></p>
       <p><strong>MBTI:</strong> <%= mbti %></p>
       <p><strong>좋아하는 음식:</strong> <%= foodList %></p>

       <p style="margin-top:20px; font-weight:bold;">
        <%= name %>님은 <%= age %>살의 <%= mbti %> 성격을 가진 분이며, 좋아하는 음식으로는 <%= foodList %> 등이 있습니다.
       </p>
