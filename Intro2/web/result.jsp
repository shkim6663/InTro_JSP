<%--
  Created by IntelliJ IDEA.
  User: kimsehyun
  Date: 2025. 9. 9.
  Time: 오후 2:23
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.Arrays" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>자기소개 결과 화면</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            font-family: 'Noto Sans KR', sans-serif;
            background-color: #f8f9fa;
            padding: 30px;
        }
        .result-container {
            max-width: 600px;
            margin: 50px auto;
            background: #fff;
            padding: 25px;
            border-radius: 12px;
            box-shadow: 0 0 15px rgba(0,0,0,0.1);
        }
        h1 {
            text-align: center;
            margin-bottom: 25px;
        }
        p {
            font-size: 1.2rem;
            margin-bottom: 15px;
        }
        .back-btn {
            display: block;
            width: 150px;
            margin: 25px auto 0 auto;
        }
    </style>
</head>
<body>
<%
    String name = (String) request.getAttribute("name");
    String age = (String) request.getAttribute("age");
    String mbti = (String) request.getAttribute("mbti");
    String[] foods = (String[]) request.getAttribute("foods");

    String foodList = String.join(", ", foods);
%>

<div class="result-container">
    <h1>소개 결과</h1>
    <p><strong>이름:</strong> <%= name %></p>
    <p><strong>나이:</strong> <%= age %></p>
    <p><strong>MBTI:</strong> <%= mbti %></p>
    <p><strong>좋아하는 음식:</strong> <%= foodList %></p>

    <p style="margin-top:20px; font-weight:bold;">
        <%= name %>님은 <%= age %>살의 <%= mbti %> 성격을 가진 분이며, 좋아하는 음식으로는 <%= foodList %> 등이 있습니다.
    </p>

    <a href="form.jsp" class="btn btn-secondary back-btn">다시 작성</a>
</div>
</body>
</html>

