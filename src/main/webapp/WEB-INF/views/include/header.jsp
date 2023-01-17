<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Shop Item - Start Bootstrap Template</title>
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="/resources/test/css/styles.css" rel="stylesheet">
    </head>
    <body>
        
  <!-- Navigation ------------------------------------------------------------------------------------------------------------>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container px-4 px-lg-5">
                <a class="navbar-brand" href="/">NotFound404</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
                    
                        <li class="nav-item dropdown">
                            <a class="nav-link active dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">recommend</a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <li><a class="dropdown-item" href="#!">신상품 소개</a></li>
                                <li><a class="dropdown-item" href="/recommend">랜덤 추천 코디</a></li>
                                <li><a class="dropdown-item" href="/d_recommend">디자이너 추천 코디</a></li>
                            </ul>
                        </li>
                        
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">woman</a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <li><a class="dropdown-item" href="/productlist?gender=2&p_type=1">상의</a></li>
                                <li><a class="dropdown-item" href="/productlist?gender=2&p_type=2">하의</a></li>
                                <li><a class="dropdown-item" href="/productlist?gender=2&p_type=3">신발</a></li>
                            </ul>
                        </li>
                        
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">man</a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <li><a class="dropdown-item" href="/productlist?gender=1&p_type=1">상의</a></li>
                                <li><a class="dropdown-item" href="/productlist?gender=1&p_type=2">하의</a></li>
                                <li><a class="dropdown-item" href="/productlist?gender=1&p_type=3">신발</a></li>
                            </ul>
                        </li>
                        
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">ranking</a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <li><a class="dropdown-item" href="/rank?gender=1">남성 의류</a></li>
                                <li><a class="dropdown-item" href="/rank?gender=2">여성 의류</a></li>
                            </ul>
                        </li>
                        
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">customer service</a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <li><a class="dropdown-item" href="/customerService_inquiry">문의게시판</a></li>
                                <li><a class="dropdown-item" href="/customerService_notice">공지게시판</a></li>
                                <li><a class="dropdown-item" href="#!">비회원 주문조회</a></li>
                            </ul>
                        </li>
                        
                        
                    </ul>
                    
                    <button class="btn" onclick="location.href='/mypage_main'" type="submit" style="margin-top: 5px;">
                        <img src="/resources/test/icon/people.svg" style="width: 30px;">
                    </button>
                    <button class="btn position-relative" onclick="location.href='/cart_main'" type="submit" style="margin-top: 5px;">
                   
                        <img src="/resources/test/icon/cart.svg" style="width: 30px;">
                        <span class="position-absolute translate-middle badge rounded-pill bg-danger" style="margin-top: 8px;">
                            1
                            <span class="visually-hidden">unread messages</span>
                          </span>
                    </button>
                   <sec:authorize access="isAnonymous()">
<!--                    <form action="/customLogin" method='post'> -->
<%-- 				   <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" /> --%>
<!--  				   <button><img src="/resources/test/icon/login.svg" style="width: 30px;"></button> -->
                   </sec:authorize>
                   <sec:authorize access="isAuthenticated()">
                   <form action="/customLogout" method='post'>
				   <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
 				   <button><img src="/resources/test/icon/logout.svg" style="width: 30px;"></button>
                   </sec:authorize>
                </div>
            </div>
        </nav>


