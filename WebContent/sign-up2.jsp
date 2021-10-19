<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Merchan, Diner !</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- <link rel="stylesheet" href="project-style.css"> -->
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery-3.6.0.min.js"></script>
    <script src="https://kit.fontawesome.com/84aa3774b7.js" crossorigin="anonymous"></script>
    <link rel=”stylesheet” href=”http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css“>
    <style>
         @import url("https://fonts.googleapis.com/css2?family=Jua&display=swap");
      * {
        font-family: "Jua", sans-serif;
        letter-spacing: 1px;
        font-weight: 100;
      }
        body {

            background-color: rgb(254, 243, 232);
            display: flex;
            /*가로*/
            justify-content: center;
            /*세로*/
            align-items: center;
        }

        .bossbox {
            margin-top: 60px;
            width: 600px;
            height: 690px;
            background-color: white;
            border-radius: 35px/35px;
            padding: auto;
            box-shadow: 30px 8px 2px 2px rgba( 0, 0, 0, 0.1);
        }

        .marginSet {
            margin-top: 45px;
            margin-left: 30px;
        }

        .minimizeCoffee {
            width: 40px;
            height: 40px;

        }

        .Center {
            display: flex;
            /*가로*/
            justify-content: center;
            /*세로*/
            align-items: center;
            font-size: large;
        }

        .starR1 {
            background: url('http://miuu227.godohosting.com/images/icon/ico_review.png') no-repeat -52px 0;
            background-size: auto 100%;
            width: 15px;
            height: 30px;
            float: left;
            text-indent: -9999px;
            cursor: pointer;
        }

        .starR2 {
            background: url('http://miuu227.godohosting.com/images/icon/ico_review.png') no-repeat right 0;
            background-size: auto 100%;
            width: 15px;
            height: 30px;
            float: left;
            text-indent: -9999px;
            cursor: pointer;
        }

        .starR1.on {
            background-position: 0 0;
        }

        .starR2.on {
            background-position: -15px 0;
        }

        .margin1 {
            margin-left: 80px;
        }

        .margin2 {
            margin-top: 70px;
            margin-left: 30px;
        }

        .minimizeSize {
            width: 80px;
            height: 80px;
        }
        .loginsize{
            width: 280px;
            height: 100px;
            margin-bottom: 0px;
            margin-left: 153px;

        }
        .join{
            margin-left: 240px;
            margin-bottom: 30px;
        }
        a {
            color: black;
            text-decoration: none;
        }
        a:hover {
            color: black;
            text-decoration: none;
        }
        .merchanDinner {
            width: 200px;
            height: 200px;
            margin-left: 200px;
        }
        .lasthardcoding{
            text-align: center;
            font-weight: 900px;
        }
    </style>
</head>
<body class="center">
    
    
    <div class="bossbox">
        <div class="lasthardcoding"><h2>회원가입</h2></div>
        <div class="marginSet">
            <h4><strong>내취향 기억하기<img src="images/coffee.png" class="minimizeCoffee">
        </div></strong></h4>
        <div class="row margin1">
            <div class="col-md-3">
                <h5>내취향</h5>
            </div>
            <div class="col-md-2">짠맛</div>
            <div class="col-md-7">
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
            <div class="col-md-3"></div>
            <div class="col-md-2">단맛</div>
            <div class="col-md-7">
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
            <div class="col-md-3"></div>
            <div class="col-md-2">매운맛</div>
            <div class="col-md-7">
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
        <div class="row margin2">
            <div class="col-4 " style="height: 90px;">
                <h5>선호하는 음식</h5>
            </div>
            <div class="col-2" style="height: 90px;">
                <img src="images/noodle.png" class="minimizeSize"><br>
                <label for=""><input type="checkbox" name="mailing2" value="dialog" >중식</label>
            </div>
            <div class="col-2 " style="height: 90px;"><img src="images/rice.png" class="minimizeSize">
                <label for=""><input type="checkbox" name="mailing2" value="dialog" >한식</label>
            </div>
            <div class="col-2 " style="height: 90px;"><img src="images/free-icon-nigiri-5200030.png" class="minimizeSize">
                <label for=""><input type="checkbox" name="mailing2" value="dialog" >일식</label>
            </div>
            <div style="margin-bottom: 20px;"></div>
            <div class="col-4 " style="height: 90px;">
                <h5></h5>
            </div>
            <div class="col-2" style="height: 90px;">
                <img src="images/cake-slice.png" class="minimizeSize"><br>
                <label for=""><input type="checkbox" name="mailing2" value="dialog" >디저트</label>
            </div>
            <div class="col-2 " style="height: 90px;"><img src="images/free-icon-chicken-123282.png" class="minimizeSize">
                <label for=""><input type="checkbox" name="mailing2" value="dialog" >치킨</label>
            </div>
            <div class="col-3 " style="height: 90px;"><img src="images/free-icon-hamburger-123289.png" class="minimizeSize">
                <label for=""><input type="checkbox" name="mailing2" value="dialog"  style="font-size:8px;">패스트푸드</label>
            </div>
        </div>
        <div class="minimizeCoffee"></div>
        <div></div>

        <a href="congrats.html"><img src="images/회원가입.png" class="loginsize"></a>
        <a href="main-page.html" class="join">회원가입 취소</a>
        <img src="images/KakaoTalk_20210908_165648797.png" class="merchanDinner">

    <script>
        $('.starRev span').click(function () {
            $(this).parent().children('span').removeClass('on');
            $(this).addClass('on').prevAll('span').addClass('on');
            return false;
        });

    </script>
</body>

</html>