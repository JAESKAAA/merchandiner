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
    <!-- <link rel="stylesheet" href="css/main-page.css" /> -->
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
    <div style="text-align: center">
      <input type="text" class="form-control" placeholder="맛집을 찾아보세요" />
    </div>

    <div class="row row-cols-1 row-cols-md-3">
      <a href="map-coffee.html">
        <div class="col mb-4 sm-card-custom">
          <div class="card">
            <img src="images/meat.png" class="card-img-top" alt="..." />
            <div class="card-body">
              <h5 class="card-title">이 맛집은 어떤가요?</h5>
              <p class="card-text">🥐허지윤님의 커피&베이커리 맛집☕</p>
            </div>
          </div>
        </div>
      </a>
      <a href="map-meat.html">
        <div class="col mb-4 sm-card-custom">
          <div class="card">
            <img src="images/curry-rice.png" class="card-img-top" alt="..." />
            <div class="card-body">
              <h5 class="card-title">이 맛집은 어떤가요?</h5>
              <p class="card-text">🍗허지윤님고기(가 들어간)용산맛집🍖</p>
            </div>
          </div>
        </div>
      </a>
      <a href="map-coffee.html">
        <div class="col mb-4 sm-card-custom">
          <div class="card">
            <img src="images/sandwich.png" class="card-img-top" alt="..." />
            <div class="card-body">
              <h5 class="card-title">이 맛집은 어떤가요?</h5>
              <p class="card-text">🥐허지윤님의 커피&베이커리 맛집☕</p>
            </div>
          </div>
        </div>
      </a>
      <a href="map-meat.html">
        <div class="col mb-4 sm-card-custom">
          <div class="card">
            <img src="images/takeout-box.png" class="card-img-top" alt="..." />
            <div class="card-body">
              <h5 class="card-title">이 맛집은 어떤가요?</h5>
              <p class="card-text">🍗허지윤님고기(가 들어간)용산맛집🍖</p>
            </div>
          </div>
        </div>
      </a>
      <a href="map-coffee.html">
        <div class="col mb-4 sm-card-custom">
          <div class="card">
            <img
              src="images/steaming-bowl.png"
              class="card-img-top"
              alt="..."
            />
            <div class="card-body">
              <h5 class="card-title">이 맛집은 어떤가요?</h5>
              <p class="card-text">🥐허지윤님의 커피&베이커리 맛집☕</p>
            </div>
          </div>
        </div>
      </a>
      <a href="map-meat.html">
        <div class="col mb-4 sm-card-custom">
          <div class="card">
            <img
              src="images/shallow-pan-of-food.png"
              class="card-img-top"
              alt="..."
            />
            <div class="card-body">
              <h5 class="card-title">이 맛집은 어떤가요?</h5>
              <p class="card-text">🍗허지윤님고기(가 들어간)용산맛집🍖</p>
            </div>
          </div>
        </div>
      </a>
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
