<%--
  Created by IntelliJ IDEA.
  User: kimsehyun
  Date: 2025. 9. 9.
  Time: 오후 2:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>자기소개 입력</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
    <style>
        body {
            font-family: 'Noto Sans KR', sans-serif;
            background-color: #f8f9fa;
            padding: 30px;
        }
        .form-container {
            max-width: 500px;
            margin: auto;
            background: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
        h1 {
            text-align: center;
            margin-bottom: 20px;
        }
    </style>
</head>

<body>
<div class="form-container">
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
    </form>
</div>
</body>
</html>
