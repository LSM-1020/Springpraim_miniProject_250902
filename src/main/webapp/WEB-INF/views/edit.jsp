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

      <form action="boardedit" method="post" class="write-form">
        <!-- 수정 시, id를 숨겨서 전송 -->
         <input type="hidden" name="bnum" value="${boardDto.bnum}" />
      
        <input type="hidden" name="id" value="${boardDto.memberDto.memberid}" />

        <div class="form-group">
          <label for="title">제목</label>
          <input type="text" id="title" name="btitle" value="${boardDto.btitle}" required />
        </div>

        <div class="form-group">
          <label for="author">글쓴이</label>
          <input type="text" id="author" name="bwriter" value="${sessionScope.sessionId}" readonly />
        </div>

        <div class="form-group">
          <label for="content">내용</label>
          <textarea id="content" name="bcontent" rows="10" required>${boardDto.bcontent}</textarea>
        </div>

        <div class="form-actions">
          <button type="submit" class="btn-submit">수정 완료</button>
          <a href="/board/view?id=${boardDto.memberDto.memberid}" class="btn-cancel">취소</a>
        </div>
      </form>
    </div>
  </section>

  <%@ include file="include/footer.jsp" %>

</body>
</html>
