<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인페이지</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/test.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/product.css">
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
</head>
<body>
	<header>
	<div id="headcap">
        <div id="logo"><img src="<%=request.getContextPath()%>/image/logo.png" alt="" width="100" height="90"
        onclick=location.replace('<%=request.getContextPath()%>')></div>
        <div id="menu">
            <nav>
                <ul>
                    <li><a href="<%=request.getContextPath()%>/product/productAll">전체메뉴</a>
                        <ul>
                            <li><a href="">비건샐러드</a></li>
                            <li><a href="">육류</a></li>
                            <li><a href="">어류</a></li>
                            <li><a href="">유제품</a></li>
                        </ul>
                    </li>
                    <li><a href="">커스텀</a>
                        <ul>
                            <li><a href="">이용안내</a></li>
                            <li><a href="">커스텀하기</a></li>
                            <li><a href="">커뮤니티</a></li>
                        </ul>
                    </li>
                    <li><a href="">매장찾기</a>
                        <ul>
                            <li><a href="">주소검색</a></li>
                            <li><a href="">매장찾기</a></li>
                        </ul>
                    </li>
                    <li><a href="">고객센터</a>
                        <ul>
                            <li><a href="">공지사항</a></li>
                            <li><a href="">이벤트</a></li>
                            <li><a href="">FAQ</a></li>
                            <li><a href="">1:1문의</a></li>
                        </ul>
                    </li>
                    <li><a href="">마이페이지</a>
                        <ul>
                            <li><a href="">장바구니</a></li>
                            <li><a href="">배송현황</a></li>
                            <li><a href="">나의 게시물</a></li>
                            <li><a href="">나의 커스텀</a></li>
                        </ul>
                    </li>
                </ul>
            </nav>
        </div>
        <div id="loginjoin">
            <ul>
                <li><a href="<%=request.getContextPath()%>/view/login.jsp">login</a></li>
                <li><a href="<%=request.getContextPath()%>/view/join.jsp">join</a></li>
            </ul>
        </div>
    </div>
    </header>