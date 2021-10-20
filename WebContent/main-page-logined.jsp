<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Merchan, Diner !</title>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.14.0/css/all.css" integrity="sha384-HzLeBuhoNPvSl5KYnjx0BT+WB0QEEqLprO+NBkkk5gbc67FTaL7XIGa2w1L0Xbgc" crossorigin="anonymous">
    <link rel="stylesheet" href="css/bootstrap.css" />
    <link rel="stylesheet" href="css/main-page.css" />
    
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
    <!--nav 영역-->
    <nav class="nav">
      <div>
        <!--로그인 버튼-->
        <button class="btn" data-bs-toggle="modal" data-bs-target="#login-modal">🌟허지윤</button>
      </div>
        <!--메뉴 토글 모달 영역-->
        <button class="btn" data-bs-toggle="modal" data-bs-target="#menu-toggle-modal"><i class="fas fa-bars fa-lg menu-toggle"></i></button>
        <div class="modal" id="menu-toggle-modal" role="menu-toggle" aria-labelledby="menu-toggle" 
        aria-hidden="true" tabindex="-1">
          <!--modal-dailog : 모달 창 영역 설정 커스텀 클래스를 줘서 우측에서 출력되도록 함-->
          <div class="modal-dialog custom-modal-dialog">
            <!--modal-content : 모달 창 콘텐츠 영역 설정-->
            <div class="modal-content custom-modal-content">
                <!--modal-header : 모달 창 콘텐츠의 헤더영역-->
                <div class="modal-header modal-header-custom">
                      <button type="button" class="btn login-sm modal-exit" 
                    data-bs-dismiss="modal">
                    <i class="fas fa-times fa-2x"></i>
                    </button>
                </div>
                <!--modal-body : 모달 창 콘텐츠의 바디영역-->
                <div class="modal-body">
                  <div class="row modal-login-box">
                    <a href="#"><i class="far fa-comment-alt fa-2x"></i><div class="col-md-12 ">의견제보</div></a>
                  </div>
                    <div class="row modal-login-box">
                      <a href="Mailto:merchanDiner@example.com?Subject=이메일%20a문의"><i class="far fa-paper-plane fa-2x"></i><div class="col-md-12 ">이메일 문의</div></a>
                    </div>
                    <div class="row modal-login-box">
                      <a href="mypage.jsp"><i class="far fa-user-circle fa-2x"></i><div class="col-md-12 ">마이 페이지</div></a>
                    </div>
                    <div class="row modal-login-box">
                      <a href="store/Detail-page-enroll.jsp"><i class="fas fa-home fa-2x"></i><div class="col-md-12 ">맛집 등록</div></a>
                    </div>
                </div>  
                <!--modal-footer : 모달 창 콘텐츠의 푸터영역-->
                <div class="modal-footer">
                  <!--페북, 인스타, 유튜브, 카카오톡 등 링크 설정-->
                    <div class="menu-toggle-footer">
                      <a href="#" class="menu-toggle-footer-items"><i class="fab fa-facebook fa-lg"></i></a>
                      <a href="#" class="menu-toggle-footer-items"><i class="fab fa-instagram fa-lg"></i></a>
                      <a href="#" class="menu-toggle-footer-items"><i class="fab fa-youtube fa-lg"></i></a>
                      <a href="#" class="menu-toggle-footer-items"><i class="fas fa-comment kakao fa-lg"></i></a>
                    </div>
                </div>
            </div>
        </div>
      </div>
      </div>
    </nav>
    <!--메인 섹션-->
    <div class="container" id="main-section">
      <!--메인 로고 영역-->
        <div class="row">
          <div class="col-md-4"></div>
          <div class="main-logo col-md-4"></div>
          <div class="col-md-4"></div>
        </div>
        <!--검색 페이지 영역-->
        <div class="row">
          <div class="col-md-3"></div>
          <div class="col-md-6">
            <div class="container">
              <input type="text" class="search-box" placeholder="테마지도를 검색해보세요">
              <a href="SearchPage.html"><i class="fas fa-search fa-2x" id="icon-color"></i></a>
            </div>
             </div>
          <div class="col-md-3"></div>
        </div>
        <!--카드 1 영역-->
        <div class="row main-section-inner">
          <div class="container out-space">
            <h4 class="title-head">검색결과</h1>
            <h6>최근 1주일동안 활발히 활동한 머천다이너분들입니다.</h3><br>
              <div class="card-box">
                <a href="홍대치킨맛집new.html">
                  <div class="col-md-2 sm-card">
                    <div class="sm-card-inner">
                      <img class="emoji" src="emoji/woman.png" alt="">
                    </div>
                    <div class="sm-card-inner">
                      최실비아
                    </div>
                    <div class="sm-card-inner">
                      5개의 테마
                    </div>
                  </div>
                </a>
                <a href="노량진패스트푸드new.html">
                  <div class="col-md-2 sm-card">
                    <div class="sm-card-inner">
                      <img class="emoji" src="emoji/cool.png" alt="">
                    </div>
                    <div class="sm-card-inner">
                      정현석
                    </div>
                    <div class="sm-card-inner">
                      5개의 테마
                    </div>
                  </div>
                </a>
                <a href="map-일식.html">
                  <div class="col-md-2 sm-card">
                    <div class="sm-card-inner">
                      <img class="emoji" src="emoji/smile.png" alt="">
                    </div>
                    <div class="sm-card-inner">
                      최재석
                    </div>
                    <div class="sm-card-inner">
                      5개의 테마
                    </div>
                  </div>
                </a>
                <a href="map-디저트.html">
                  <div class="col-md-2 sm-card">
                    <div class="sm-card-inner">
                      <img class="emoji" src="emoji/shiba.png" alt="">
                    </div>
                    <div class="sm-card-inner">
                      강아지
                    </div>
                    <div class="sm-card-inner">
                      5개의 테마
                    </div>
                  </div>
                </a>
                <a href="map-school.html">
                  <div class="col-md-2 sm-card">
                    <div class="sm-card-inner">
                      <img class="emoji" src="emoji/cat.png" alt="">
                    </div>
                    <div class="sm-card-inner">
                      허지윤
                    </div>
                    <div class="sm-card-inner">
                      5개의 테마
                    </div>
                  </div>
                </a>
                <a href="map-new.html">
                  <div class="col-md-2 sm-card">
                    <div class="sm-card-inner">
                      <img class="emoji" src="emoji/boy.png" alt="">
                    </div>
                    <div class="sm-card-inner">
                      장발장
                    </div>
                    <div class="sm-card-inner">
                      5개의 테마
                    </div>
                  </div>
                </a>
              </div>
          </div>
        </div>
        <!--카드 2 영역-->
        <div class="row">
          <div class="container out-space">
            <h4 class="title-head">요즘 뜨는 장소들</h1>
            <h6>머천다이너에서 사랑받고 있는 맛집들을 소개합니다.</h3><br>
              <div class="card-box">
                <a href="Detail-page.html">

                  <div class="col-md-2 md-card">
                    <div class="md-card-inner ">
                      <span class="font-lg">전주식당</span>
                    </div>
                    <div class="md-card-inner">
                      <span class="font-sm">서울시 강남구 강남대로 11길</span> 
                    </div>
                    <div class="md-card-inner">
                      <span class="font-sm">#집밥느낌</span>
                    </div>
                  </div>
                </a>                
                <a href="Detail-page.html">

                  <div class="col-md-2 md-card">
                    <div class="md-card-inner">
                      <span class="font-lg">만랩카페</span>
                    </div>
                    <div class="md-card-inner">
                      <span class="font-sm">서울시 강남구 강남대로 13길</span>
                    </div>
                    <div class="md-card-inner">
                      <span class="font-sm">#마카롱맛집 #혼공족 </span>
                    </div>
                  </div>
                </a>
                <a href="Detail-page.html">

                  <div class="col-md-2 md-card">
                    <div class="md-card-inner">
                      <span class="font-lg">제육덮밥</span>
                    </div>
                    <div class="md-card-inner">
                      <span class="font-sm">서울시 서초구 서초대로 14길</span>
                    </div>
                    <div class="md-card-inner">
                      <span class="font-sm">#제육맛집 #제주 흑돼지 제육</span>
                    </div>
                  </div>
                </a>
                <a href="Detail-page.html">

                  <div class="col-md-2 md-card">
                    <div class="md-card-inner">
                      <span class="font-lg">돈까스집</span>
                    </div>
                    <div class="md-card-inner">
                      <span class="font-sm">서울시 용산구 이태원로 11길</span>
                    </div>
                    <div class="md-card-inner">
                      <span class="font-sm">#스윙스 #국내산 #밥무한리필</span>
                    </div>
                  </div>
                </a>
              </div>
          </div>
        </div>
    </div>
    <!--푸터-->
    <hr>
    <footer class="footer">
      <div>개인정보 처리 방침</div><br>
      <div class="font-sm">Copyrightⓒ B반 6조 All right reserved.</div>
      <div class="font-sm"> Icon reference - https://www.flaticon.com/</div>
    </footer>
  
  </body>
</html>
