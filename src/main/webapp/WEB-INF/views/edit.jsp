<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8" />
  <title>게시글 수정</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/write.css" />
</head>
<body>

  <%@ include file="include/header.jsp" %>

  <section class="write-section">
    <div class="write-container">
      <h1 class="write-title">게시글 수정</h1>

      <form action="/board/edit" method="post" class="write-form">
        <!-- 수정 시, id를 숨겨서 전송 -->
        <input type="hidden" name="id" value="${post.id}" />

        <div class="form-group">
          <label for="title">제목</label>
          <input type="text" id="title" name="title" value="${post.title}" required />
        </div>

        <div class="form-group">
          <label for="author">글쓴이</label>
          <input type="text" id="author" name="author" value="${post.author}" readonly />
        </div>

        <div class="form-group">
          <label for="content">내용</label>
          <textarea id="content" name="content" rows="10" required>${post.content}</textarea>
        </div>

        <div class="form-actions">
          <button type="submit" class="btn-submit">수정 완료</button>
          <a href="/board/view?id=${post.id}" class="btn-cancel">취소</a>
        </div>
      </form>
    </div>
  </section>

  <%@ include file="include/footer.jsp" %>

</body>
</html>
