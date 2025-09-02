<%@ page contentType="text/html; charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8" />
  <title>오시는 길 - 우리카페</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/location.css" />
  <!-- 카카오 지도 API -->
  <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=YOUR_KAKAO_API_KEY"></script>
</head>
<body>

  <%@ include file="include/header.jsp" %>

  <section class="location-section">
    <div class="container">
      <h1>오시는 길</h1>
      <div class="location-content">
        <div class="location-info">
          <p><strong>주소:</strong> 서울시 강남구 어딘가로 123</p>
          <p><strong>전화번호:</strong> 02-123-4567</p>
          <p><strong>지하철:</strong> 2호선 강남역 5번 출구에서 도보 5분</p>
        </div>
        <div id="map" class="location-map"></div>
      </div>
    </div>
  </section>

  <%@ include file="include/footer.jsp" %>

  <script>
    // 카카오 지도 생성
    var container = document.getElementById('map');
    var options = {
      center: new kakao.maps.LatLng(37.49794, 127.027621), // 카페 위치 좌표 (예시)
      level: 3 // 확대 레벨
    };
    var map = new kakao.maps.Map(container, options);

    // 마커 생성
    var markerPosition  = new kakao.maps.LatLng(37.49794, 127.027621);
    var marker = new kakao.maps.Marker({
      position: markerPosition
    });
    marker.setMap(map);
  </script>

</body>
</html>