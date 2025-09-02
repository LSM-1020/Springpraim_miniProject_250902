<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8" />
  <title>주문 목록 - 우리카페</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/order.css" />
</head>
<body>

  <%@ include file="include/header.jsp" %>

  <section class="order-list-section">
    <div class="container">
      <h1>주문 목록</h1>

      <!-- 주문 목록 테이블 -->
      <table class="order-list-table">
        <thead>
          <tr>
            <th>상품명</th>
            <th>가격</th>
            <th>수량</th>
            <th>작성자</th>
            <th>주문 날짜</th>
          </tr>
        </thead>
        <tbody>
          <c:forEach var="order" items="${orders}">
            <tr>
              <td>${order.productName}</td>
              <td>${order.price.toLocaleString()}원</td>
              <td>${order.quantity}</td>
              <td>${order.memberName}</td>
              <td>${order.orderDate}</td>
            </tr>
          </c:forEach>
          <c:if test="${empty orders}">
            <tr>
              <td colspan="5">주문 내역이 없습니다.</td>
            </tr>
          </c:if>
        </tbody>
      </table>

      <!-- 목록으로 버튼 -->
      <div class="btn-container">
        <a href="${pageContext.request.contextPath}/order" class="btn-back">목록으로</a>
      </div>

    </div>
  </section>

  <%@ include file="include/footer.jsp" %>

</body>
</html>
