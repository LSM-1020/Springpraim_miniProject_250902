<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8" />
  <title>주문 내역 - 우리카페</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/orderlist.css" />
</head>
<body>
 <%@ include file="include/header.jsp" %>
  <h1 class="title">주문 내역</h1>

  <table class="order-table">
    <thead>
      <tr>
        <th>상품명</th>
        <th>가격(원)</th>
        <th>수량</th>
        <th>합계(원)</th>
      </tr>
    </thead>
    <tbody>
      <c:set var="total" value="0" />
      <c:forEach var="item" items="${orderDtos}">
        <tr>
          <td>${item.product}</td>
         <td>${item.price}</td>
          <td>${item.amount}</td>
          <td>
            <fmt:formatNumber value="${item.price * item.amount}" type="number"/>
            <c:set var="total" value="${total + (item.price * item.amount)}" />
          </td>
        </tr>
      </c:forEach>
      <tr class="total-row">
        <td colspan="3">총 합계</td>
        <td><fmt:formatNumber value="${total}" type="number" /></td>
      </tr>
    </tbody>
  </table>

  <div class="btn-container">
    <a class="btn" href="${pageContext.request.contextPath}/order">다시 주문하기</a>
     <!-- 전체삭제 버튼 -->
  <form method="post" action="${pageContext.request.contextPath}/orderDeleteAll" onsubmit="return confirm('전체 주문을 삭제하시겠습니까?');" style="display:inline;">
    <button type="submit" class="btn btn-danger">전체삭제</button>
  </form>
  </div>
  <%@ include file="include/footer.jsp" %>
</body>
</html>