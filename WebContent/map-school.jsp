<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Merchan, Diner !</title>
    <link
      rel="stylesheet"
      href="https://use.fontawesome.com/releases/v5.14.0/css/all.css"
      integrity="sha384-HzLeBuhoNPvSl5KYnjx0BT+WB0QEEqLprO+NBkkk5gbc67FTaL7XIGa2w1L0Xbgc"
      crossorigin="anonymous"
    />
    <link rel="stylesheet" href="css/bootstrap.css" />
    <link rel="stylesheet" href="css/main-page.css" />
    <link rel="stylesheet" href="css/page.css" />
    <link rel="stylesheet" href="css/map.css" />
    <link rel="stylesheet" href="css/map-modal-page.css" />
    <script
      src="https://kit.fontawesome.com/84aa3774b7.js"
      crossorigin="anonymous"
    ></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery-3.6.0.min.js"></script>
    <style>
      @import url("https://fonts.googleapis.com/css2?family=Jua&display=swap");
      * {
        font-family: "Jua", sans-serif;
        letter-spacing: 1px;
        font-weight: 100;
      }
    </style>
  </head>
  <body>
    <div id="map" class="map-section" style="width: 100%; height: 98vh">
      <!--Map 네비게이션 부분-->
      <nav class="map-nav row">
        <div class="col-md-8">
          <a href="main-page.html"
            ><button class="btn btn-success shadow btn-bg-color">
              <i class="fas fa-arrow-left fa-lg"></i></button
          ></a>
          <button class="btn btn-success wide-button shadow btn-bg-color">
            허지윤님의 학교앞 가벼운 한끼🍽
          </button>
          <button class="btn btn-success shadow btn-bg-color" onclick="heart()">
            <div style="width: 20px; height: 25px;">
              <img  id="heart" src="images/heart-regular.svg" style="width: 20px; height:20px;"></img>
              <img  id="heartout" src="images/heart-solid.svg" style="width: 20px; height:20px;"></img>
            </div>
          </button>
        </div>
        <div class="col-md-4 nav-item-right">
          <!--맵안에 메뉴 토글 버튼-->
          <button
            class="
              btn btn-lg btn-success
              shadow
              btn-bg-color
              .btn-custom-radius
            "
            style="width: 3.5rem"
            data-bs-toggle="modal"
            data-bs-target="#menu-toggle-modal"
          >
            <i class="fas fa-bars fa-lg menu-toggle"></i>
          </button>
        </div>
      </nav>
      <!--멥안에 메뉴 토글 부분-->
      <div
        class="modal map-modal-index"
        id="menu-toggle-modal"
        role="menu-toggle"
        aria-labelledby="menu-toggle"
        aria-hidden="true"
        tabindex="-1"
      >
        <!--modal-dailog : 모달 창 영역 설정 커스텀 클래스를 줘서 우측에서 출력되도록 함-->
        <div class="modal-dialog custom-modal-dialog">
          <!--modal-content : 모달 창 콘텐츠 영역 설정-->
          <div class="modal-content custom-modal-content">
            <!--modal-header : 모달 창 콘텐츠의 헤더영역-->
            <div class="modal-header modal-header-custom">
              <button
                type="button"
                class="btn login-sm modal-exit"
                data-bs-dismiss="modal"
              >
                <i class="fas fa-times fa-2x"></i>
              </button>
            </div>
            <!--modal-body : 모달 창 콘텐츠의 바디영역-->
            <div class="modal-body">
              <div class="row modal-login-box">
                <a href="#"
                  ><i class="far fa-comment-alt fa-2x"></i>
                  <div class="col-md-12">의견제보</div></a
                >
              </div>
              <div class="row modal-login-box">
                <a href="#"
                  ><i class="far fa-paper-plane fa-2x"></i>
                  <div class="col-md-12">이메일 문의</div></a
                >
              </div>
            </div>
            <!--modal-footer : 모달 창 콘텐츠의 푸터영역-->
            <div class="modal-footer">
              <!--페북, 인스타, 유튜브, 카카오톡 등 링크 설정-->
              <div class="menu-toggle-footer">
                <a href="#" class="menu-toggle-footer-items"
                  ><i class="fab fa-facebook fa-lg"></i
                ></a>
                <a href="#" class="menu-toggle-footer-items"
                  ><i class="fab fa-instagram fa-lg"></i
                ></a>
                <a href="#" class="menu-toggle-footer-items"
                  ><i class="fab fa-youtube fa-lg"></i
                ></a>
                <a href="#" class="menu-toggle-footer-items"
                  ><i class="fas fa-comment kakao fa-lg"></i
                ></a>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!--Map 가게 목록 부분-->
      <div id="menu-wrap">
        <div class="list-panel">
          <ul id="placeList">
            <div class="list-item">
              <div class="list-overlay shadow" id="box0">
                <div class="read-more">
                  <!--상세페이지 모달 추가될 부분-->
                  <i
                    class="fas fa-expand-alt"
                    data-bs-toggle="modal"
                    data-bs-target="#map-page-modal"
                  ></i>
                </div>
                <div class="place-name">모다모다</div>
                <div class="place-address">서울 관악구 관악로14길 36 1층</div>
                <div class="theme-name">#카레 #혼밥족</div>
              </div>
            </div>
            <div class="list-item">
              <div class="list-overlay shadow" id="box1">
                <div class="read-more">
                  <a>
                    <i class="fas fa-expand-alt"></i>
                  </a>
                </div>
                <div class="place-name">텐동요츠야</div>
                <div class="place-address">서울 관악구 관악로14길 35 1층</div>
                <div class="theme-name">#텐동 #존맛탱</div>
              </div>
            </div>
            <div class="list-item">
              <div class="list-overlay shadow" id="box1">
                <div class="read-more">
                  <a>
                    <i class="fas fa-expand-alt"></i>
                  </a>
                </div>
                <div class="place-name">맨프롬오키나와</div>
                <div class="place-address">서울 관악구 관악로14길 35 1층</div>
                <div class="theme-name">#혼술 #이자카야</div>
              </div>
            </div>
            <div class="list-item">
              <div class="list-overlay shadow" id="box2">
                <div class="read-more">
                  <a>
                    <i class="fas fa-expand-alt"></i>
                  </a>
                </div>
                <div class="place-name">박명주브라더</div>
                <div class="place-address">서울 관악구 관악로14길 89</div>
                <div class="theme-name">#닭도리탕</div>
              </div>
            </div>
            <div class="list-item">
              <div class="list-overlay shadow" id="box3">
                <div class="read-more">
                  <a>
                    <i class="fas fa-expand-alt"></i>
                  </a>
                </div>
                <div class="place-name">9ounce Burger</div>
                <div class="place-address">서울 관악구 관악로12길 108 1층</div>
                <div class="theme-name">#버거맛집</div>
              </div>
            </div>
            <div class="list-item">
              <div class="list-overlay shadow">
                <div class="read-more">
                  <a>
                    <i class="fas fa-expand-alt"></i>
                  </a>
                </div>
                <div class="place-name">오지편한식당</div>
                <div class="place-address">서울 관악구 관악로14길 105 1층</div>
                <div class="theme-name">#이자카야</div>
              </div>
            </div>
            <div class="list-item">
              <div class="list-overlay shadow">
                <div class="read-more">
                  <a>
                    <i class="fas fa-expand-alt"></i>
                  </a>
                </div>
                <div class="place-name">더멜팅팟</div>
                <div class="place-address">서울 관악구 관악로14가길 2</div>
                <div class="theme-name">#버거맛집</div>
              </div>
            </div>
          </ul>
        </div>
      </div>
      <!--상세페이지 모달 부분-->
      <div
        class="modal fade"
        id="map-page-modal"
        role="page"
        aria-labelledby="page"
        aria-hidden="true"
        tabindex="-1"
      >
        <!--modal-dailog : 모달 창 영역 설정-->
        <div class="modal-dialog">
          <!--modal-content : 모달 창 콘텐츠 영역 설정-->
          <div class="modal-content">
            <!--modal-header : 모달 창 콘텐츠의 헤더영역-->
            <div class="modal-header modal-header-custom modal-text-box-header">
              <div class="row">
                <div class="col-md-12 modal-text-lg">Tiel'O</div>
                <div class="col-me-12 modal-text-sm">
                  서울특별시 강남구 역삼동 강남대로94길 14
                </div>
              </div>
            </div>
            <!--modal-body : 모달 창 콘텐츠의 바디영역-->
            <div class="modal-body">
              <div class="row">
                <!--맛집 사진관련 창-->
                <div class="col-md-12">
                  <div class="modal-body-imgbox">
                    <div>+</div>
                    여기를 눌러서 장소와 관련된 사진을 올려주시면 <br />페이지가
                    더 유익해 질 것 같아요!
                  </div>
                </div>

                <div
                  class="col-md-12 flex-box-container"
                  style="margin: 25px auto"
                >
                  <!--음식점 카테고리-->
                  <div class="flex-box-container-col left-set">
                    <div class="col-md-8 flex-box-container-col">
                      여기는 어떤 곳인가요?
                    </div>
                    <div class="flex-box-container-col left-set">
                      <div class="flex-box-conianer-col">
                        <button class="btn btn-primary category-icon">
                          <img src="images/hamburger.png" class="minimize" />
                          #내가 먹어 본 인생 햄버거
                        </button>
                      </div>
                      <div>
                        <button class="btn btn-primary category-icon">
                          <img src="images/hamburger.png" class="minimize" />
                          #패티 맛집
                        </button>
                      </div>
                    </div>
                  </div>
                  <!--별점 넣는 칸-->
                  <div class="col-md-4">
                    <div class="col-12">짠맛</div>
                    <div class="col-12">
                      <div class="starRev">
                        <span class="starR1 on">별1_왼쪽</span>
                        <span class="starR2">별1_오른쪽</span>
                        <span class="starR1">별2_왼쪽</span>
                        <span class="starR2">별2_오른쪽</span>
                        <span class="starR1">별3_왼쪽</span>
                        <span class="starR2">별3_오른쪽</span>
                        <span class="starR1">별4_왼쪽</span>
                        <span class="starR2">별4_오른쪽</span>
                        <span class="starR1">별5_왼쪽</span>
                        <span class="starR2">별5_오른쪽</span>
                      </div>
                    </div>
                    <div class="col-12"></div>
                    <div class="col-12">단맛</div>
                    <div class="col-12">
                      <div class="starRev">
                        <span class="starR1 on">별1_왼쪽</span>
                        <span class="starR2">별1_오른쪽</span>
                        <span class="starR1">별2_왼쪽</span>
                        <span class="starR2">별2_오른쪽</span>
                        <span class="starR1">별3_왼쪽</span>
                        <span class="starR2">별3_오른쪽</span>
                        <span class="starR1">별4_왼쪽</span>
                        <span class="starR2">별4_오른쪽</span>
                        <span class="starR1">별5_왼쪽</span>
                        <span class="starR2">별5_오른쪽</span>
                      </div>
                    </div>
                    <div class="col-12"></div>
                    <div class="col-12">매운맛</div>
                    <div class="col-12">
                      <div class="starRev">
                        <span class="starR1 on">별1_왼쪽</span>
                        <span class="starR2">별1_오른쪽</span>
                        <span class="starR1">별2_왼쪽</span>
                        <span class="starR2">별2_오른쪽</span>
                        <span class="starR1">별3_왼쪽</span>
                        <span class="starR2">별3_오른쪽</span>
                        <span class="starR1">별4_왼쪽</span>
                        <span class="starR2">별4_오른쪽</span>
                        <span class="starR1">별5_왼쪽</span>
                        <span class="starR2">별5_오른쪽</span>
                      </div>
                    </div>
                  </div>
                </div>
                <!--SNS 링크 넣기-->
                <hr />
                <div class="col-md-12 flex-box-container-col">
                  <div>이 장소 공유하기</div>
                  <div class="menu-toggle-footer flex-box-container">
                    <a href="#" class="menu-toggle-footer-items"
                      ><i class="fab fa-facebook fa-lg"></i
                    ></a>
                    <a href="#" class="menu-toggle-footer-items"
                      ><i class="fab fa-instagram fa-lg"></i
                    ></a>
                    <a href="#" class="menu-toggle-footer-items"
                      ><i class="fab fa-youtube fa-lg"></i
                    ></a>
                    <a href="#" class="menu-toggle-footer-items"
                      ><i class="fas fa-comment kakao fa-lg"></i
                    ></a>
                  </div>
                </div>
              </div>
            </div>
            <!--modal-footer : 모달 창 콘텐츠의 푸터영역-->
            <div class="modal-footer">
              <div class="modal-footer-custom">
                <!--회원가입 페이지 이동-->
                <a href="Detail-page.html" class="login-sm">
                  <button class="btn btn-dark">상세페이지 이동</button>
                </a>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!--다른사람의 지도 랜덤으로 보는 버튼-->
      <a href="map-new.html" class="">
        <div class="menu-footer shadow">
          <div class="menu-footer-icon">
            <div class="menu-footer-iconbox">
              <i class="fas fa-redo-alt fa-2x"></i>
            </div>
          </div>
          <div class="menu-footer-textbox">
            <div class="menu-footer-text-inner">
              다른 머천다이너의 지도 보기
            </div>
          </div>
        </div>
      </a>
    </div>
    <script
      type="text/javascript"
      src="https://dapi.kakao.com/v2/maps/sdk.js?appkey=7f7aaf0e4c0e87d3a6bc257b1b323e35"
    ></script>
    <script>
      var mapContainer = document.getElementById("map"), // 지도를 표시할 div
        mapOption = {
          center: new kakao.maps.LatLng(37.4783413, 126.956058), // 지도의 중심좌표
          level: 4, // 지도의 확대 레벨
        };

      var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

      // 마커를 표시할 위치와 title 객체 배열입니다
      var positions = [
        {
          title: "모다모다",
          latlng: new kakao.maps.LatLng(37.4787822, 126.954464),
        },
        {
          title: "텐동요츠야",
          latlng: new kakao.maps.LatLng(37.4789624, 126.954453),
        },
        {
          title: "맨프롬오키나와",
          latlng: new kakao.maps.LatLng(37.4779081, 126.95408),
        },
        {
          title: "박명주브라더",
          latlng: new kakao.maps.LatLng(37.4781706, 126.957393),
        },
        {
          title: "9ounce Burger",
          latlng: new kakao.maps.LatLng(37.4771889, 126.958343),
        },
        {
          title: "오지편한식당",
          latlng: new kakao.maps.LatLng(37.4778736, 126.958229),
        },
        {
          title: "더멜팅팟",
          latlng: new kakao.maps.LatLng(37.4783413, 126.956058),
        },
      ];

      // 마커 이미지의 이미지 주소입니다
      var imageSrc = "images/map-marker.svg";

      for (var i = 0; i < positions.length; i++) {
        addMarker(positions[i].latlng, positions[i].title, i);

        // var title = positions[i].title;
        // // 마커를 클릭했을 때 마커 위에 표시할 인포윈도우를 생성합니다
        // var iwContent = '<div style="padding:5px;">Hello World!</div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
        //     iwRemoveable = true; // removeable 속성을 ture 로 설정하면 인포윈도우를 닫을 수 있는 x버튼이 표시됩니다

        // // 인포윈도우를 생성합니다
        // var infowindow = new kakao.maps.InfoWindow({
        //     content: iwContent,
        //     removable: iwRemoveable
        // });

        // kakao.maps.event.addListener(marker, 'click', function () {
        //     main(title);
        // });
      }

      const boxInner = document.querySelector(".inner-box");

      function addMarker(latlng, title, index) {
        var imageSize = new kakao.maps.Size(24, 35);

        // 마커 이미지를 생성합니다
        var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize);

        // 마커 이미지의 이미지 크기 입니다
        var imageSize = new kakao.maps.Size(24, 35);

        // 마커 이미지를 생성합니다
        var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize);

        // 마커를 생성합니다
        var marker = new kakao.maps.Marker({
          map: map, // 마커를 표시할 지도
          position: latlng, // 마커를 표시할 위치
          clickable: true, //클릭 메소드
          title: title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
          image: markerImage, // 마커 이미지
        });

        kakao.maps.event.addListener(marker, "click", function () {
          page(title);
        });

        let boxId = document.querySelector("#box");

        kakao.maps.event.addListener(marker, "mouseover", function () {
          let boxId = document.querySelector("#box" + index);
          boxId.classList.add("inner-box");
        });
        kakao.maps.event.addListener(marker, "mouseout", function () {
          let boxId = document.querySelector("#box" + index);
          boxId.classList.remove("inner-box");
        });
        // kakao.maps.event.addListener(marker, "mouseover", function () {
        //   $("#box" + index).addClass("inner-box");
        // });

        // kakao.maps.event.addListener(marker, "mouseout", function () {
        //   $("#box" + index).removeClass("inner-box");
        // });
      }

      function page(titles) {
        // location.href = "info.html?" + title;
        location.href = "info" + title + ".html";
        location.title = titles;
      }

      function hoverEvent(title) {}
      function mousepage() {}

      function sign() {
        location.href = "sign.html";
      }
      function login() {
        location.href = "sign.html";
      }

      function SearchPage() {
        location.href = "SearchPage.html";
      }

      function boxEvent(e) {
        boxInner.classList.add("inner-box");
      }
    </script>
        <!--하트 변경되는 효과-->
        <script>
          $(document).ready(function () {
            /*웹페이지 열었을 때*/
            $("#heart").show();
            $("#heartout").hide();
    
            /*heart을 클릭했을 때 heartout를 보여줌*/
            $("#heart").click(function () {
              $("#heart").hide();
              $("#heartout").show();
            });
    
            /*heartout를 클릭했을 때 heart을 보여줌*/
            $("#heartout").click(function () {
              $("#heart").show();
              $("#heartout").hide();
            });
          });
        </script>
  </body>
</html>
