<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" ,content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Merchan, Diner !</title>
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <!-- <link rel="stylesheet" href="theme_1632474732444.css"> -->
    <link rel="stylesheet" href="css/SearchPage.css" />
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery-3.6.0.min.js"></script>
    <script
      src="https://kit.fontawesome.com/84aa3774b7.js"
      crossorigin="anonymous"
    ></script>
    <link rel=”stylesheet”
    href=”http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css“>
    <style>
       @import url("https://fonts.googleapis.com/css2?family=Jua&display=swap");
      * {
        font-family: "Jua", sans-serif;
        letter-spacing: 1px;
        font-weight: 100;
      }
      .text-center{
        text-align: center;
      }
      .mini-box{
        width : 400px;
        height: 200px;
        background-color: white;
        border-radius: 30px;
        padding : 20px;
        margin : 20px;
        margin-left: 50px;
        margin-right: 50px;
      }
      .flex-box{
        display: flex;
        flex-direction: row;
        justify-content: center;
      }
      .button{
        margin:50px;
        height: 45px;
      }
      h1{
        padding-bottom: 50px;
      }
      a {
        text-decoration: none;
        color: black;
      }
      a:hover {
        color: black;
      }
      .sm-card-custom {
        box-shadow: 2px 2px 10px -5px black;
        border-radius: 30px;
        transition: transform 0.3s ease-in-out, border-radius 0.3s ease-in-out,
          background-color 0.3s ease-in-out, border 0.3s ease-in-out;
      }
      .sm-card-custom:hover {
        transform: scale(105%);
      }
    </style>
  </head>

  <body>
    <div>
      <div>
          <h1 class="text-center"><b>마이페이지</b></h1>
      </div>
      <div class="flex-box">
        <a href="map-school.html">
          <div class="mini-box text-center sm-card-custom">
            <p class="img">🗺</p>
            <h5 style="padding-bottom: 30px;"><b>나의 지도</b></h5>
            <p>내가 좋아하는 장소들을 다른 사람들과 함께 공유해봐요!</p>
          </a>
      </div>
      <div class="mini-box text-center sm-card-custom">
        <p class="img">🙋‍♀️</p>
        <h5 style="padding-top:px;"><b>별명을바꿔요!</b></h5>
        <p>나를 표현해줄 이모티콘과 닉네임을 바꿔봐요</p>
        <input style="width:30px;" type="text" value="🌟">
        <input style="width:90px;" type="text" value="허지윤"></p>
      </div>
    </div>
    <div class="flex-box">
      <div class="mini-box text-center sm-card-custom">
        <p class="img">🍜</p>
        <h5 style="padding-bottom: 30px;"><b>나의 맛집</b></h5>
        <p>내가 좋아하는 맛집을 평가해봐요!</p>
      </div>
      <div class="mini-box text-center sm-card-custom">
        <p class="img">💖</p>
        <h5 style="padding-bottom: 30px;"><b>내가 받은 하트의 갯수는?</b></h5>
        <p>❤❤❤❤❤❤</p>
      </div>
    </div>
    <div class="flex-box">
  
        <div  >
          <!--로그인 버튼-->
          <button class="btn" data-bs-toggle="modal" data-bs-target="#login-modal">
            <img class="button" src="images/joinout.png" alt="">
          </button>
          <!--로그인 모달 영역-->
          <div class="modal fade" id="login-modal" role="login" aria-labelledby="login" 
          aria-hidden="true" tabindex="-1">
            <!--modal-dailog : 모달 창 영역 설정-->
            <div class="modal-dialog">
              <!--modal-content : 모달 창 콘텐츠 영역 설정-->
              <div class="modal-content">
                  <!--modal-header : 모달 창 콘텐츠의 헤더영역-->
                  <div class="modal-header modal-header-custom">
                      <h4 class="modal-title modal-title-custom">회원탈퇴</h4>
                  </div>
                  <!--modal-body : 모달 창 콘텐츠의 바디영역-->
                  <div class="modal-body">
                   정말 탈퇴 하시겠어요?😱<br>탈퇴하시더라도 저장된 정보는 자동으로 지워지지 않습니다.
                  </div>
                  <!--modal-footer : 모달 창 콘텐츠의 푸터영역-->
                  <div class="modal-footer">
               
                      <a href="bye.html" class="login-sm">정말로 회원 탈퇴하기😥</a>
                      </button>
                    </div>
                  </div>
              </div>
          </div>
      </div><a href="main-page.html">
      <button class="btn" >
        <img class="button" src="images/logout.png">
      </button></a>
    </div>
   
 
      
  </body>

  <script>
    function main() {
      location.href = "main.html";
    }

    function sign() {
      location.href = "sign.html";
    }
    function login() {
      location.href = "sign.html";
    }

    function SearchPage() {
      location.href = "SearchPage.html";
    }
  </script>
</html>
