<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <title>Document</title>
    <style>*{box-sizing: border-box;}
        .wrap{
            width : 1200px;
            margin: 0 auto;
        }
        .header{
            background-color: #273443;
            border: 1px solid #000000;
            text-align: center; color: #ffffff;
            padding: 40px 0px;
            height: 100px;
            
        }        
        .menu{
        	background-color: #ffffff;	
            width: 100%;
            height: 40px;

        }
        .menu > ul{
            margin: 0;
            padding: 0;
        }
        .menu>ul>li{
            list-style: none;
            width: 20%;
            float:left;
            text-align: center;
            background-color: #ffffff;
            height: 40px;
            line-height: 40px;
            border: 1px solid #000000;
        }
        .menu>ul>li:hover{
            background-color: white;
        }
        .lcontents{
            width: 30%;
            float: left;
            background-color: #f5c2a7;
            border: 1px solid #000000;
            text-align: center;
            padding: 100px 0px;
            height: 500px;
            line-height: 300px;
        }
        .content{
            background-color: #a5c2a7;
            border: 1px solid #000000;
            text-align: center;
            padding: 100px 0px;
            width: 70%;
            float: left;            
            height: 500px;
            line-height: 300px;
        }
        .footer{
            background-color: #d1c3a7;
            border: 1px solid #000000;
            text-align: center;
            padding: 30px 0px;
            clear: both;
            height: 80px;
            
        }
        

    </style>
</head>
<body>
    <div class="wrap">
    <div class="header">HEADER</div>
    <div class="menu">
        <ul>
            <li>MENU1</li>
            <li>MENU2</li>
            <li>MENU3</li>
            <li>MENU4</li>
            <li>MENU4</li>
        </ul>
    </div>
    <div class = "container">
       <div class="lcontents">LCONTENTS</div>
       <div class="content">CONTENT</div>
    </div>
    <div class="footer">FOOTER</div>
    </div>
</body>
</html>