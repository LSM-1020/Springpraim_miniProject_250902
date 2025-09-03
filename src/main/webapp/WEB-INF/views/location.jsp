<%@ page contentType="text/html; charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8" />
  <title>오시는 길 - 우리카페</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/location.css" />
</head>
<body>

  <%@ include file="include/header.jsp" %>

  <section class="location-section">
    <div class="container">
      <h1>오시는 길</h1>
      <div class="location-content">
        <div class="location-info">
          <p><strong>주소:</strong> 서울 마포구 신촌로 176 </p>
          <p><strong>전화번호:</strong> 02-313-1711</p>
          <p><strong>지하철:</strong> 이대역 6번출구 직진 10m 중앙빌딩</p>
        </div>
        <div id="map" class="location-map"></div>
      </div>
    </div>
  </section>

  <%@ include file="include/footer.jsp" %>

   <!-- 지도 자리 -->
     <div id="map" style="width:500px;height:400px;"></div>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=8c6541871bc3305cd9e0a398a3f3115d&libraries=services"></script>
	<script>
		var container = document.getElementById('map');
		var options = {
			center: new kakao.maps.LatLng(37.5564397859151, 126.945190775648),
			level: 3
		};

		var map = new kakao.maps.Map(container, options);
		
		//주소-좌표 변환 객체 생성
	      var geocoder = new kakao.maps.services.Geocoder();
	      
	      var address = "서울특별시 마포구 신촌로 176, 중앙빌딩";
	      
	      geocoder.addressSearch(address, function(result, status) {
	            if (status === kakao.maps.services.Status.OK) {
	                // 검색된 좌표 (위도: y, 경도: x)
	                var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

	                // 지도 중심 이동
	                map.setCenter(coords);

	                // 마커 생성
	                var marker = new kakao.maps.Marker({
	                    map: map,
	                    position: coords
	                });

	                // 인포윈도우 생성 (주소 표시)
	                var infowindow = new kakao.maps.InfoWindow({
	                    content: '<div style="padding:5px;">' + address + '</div>'
	                });
	                infowindow.open(map, marker);

	                // 콘솔에 위도 경도 출력
	                console.log("위도: " + result[0].y + ", 경도: " + result[0].x);
	            } else {
	                alert("주소 검색 실패: " + status);
	            }
	        });
	</script>
    </div>

</body>
</html>