<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="include/header.jsp" %>

        <!-- 메뉴 버튼 ------------------------------------------------------------------------------------------------------------>


        <!--여기는 버튼 
        가운데 정렬 추가하자!!-->
        <section class="py-5 bg-light">
            <div class="container px-4 px-lg-5 my-5">
                <div class="row px-4 gx-4 gx-lg-5 align-items-center">
                <div style="text-align: center;">
                        <a href="/mypage_main"><button type="button" class="btn btn_lr" style="width: 150px;">주문 내역</button></a>
                        <a href="/mypage_deliverlist"><button type="button" class="btn btn_lr" style="width: 150px;">배송 조회</button></a>
                        <a href="/mypage_mywritelist"><button type="button" class="btn btn_lr" style="width: 150px;">내가 쓴 글</button></a>
                        <a href="/mypage_interProduct"><button type="button" class="btn btn_lr" style="width: 150px;">관심 상품</button></a>
                        <a href="/mypage_myinfo"><button type="button" class="btn btn_lr" style="width: 150px;">개인 정보 관리</button></a>
                        </div>
                </div>
            </div>
        </section>


        <!-- 회원정보 설정 ------------------------------------------------------------------------------------------------------------>


        <section class="pb-5 bg-light">
            <div class="container px-4 px-lg-5">
                <table style="width: 100%;">
                    <tr>
                        <td>
                            <h2 class="fw-bolder mb-4">회원정보 설정</h2>
                        </td>
                        <td style="text-align: right;">
                            <button class="btn" onclick="href='/remove?no='">회원탈퇴</button>
                        </td>    
                    </tr>
                </table>
                <div class="row px-4 gx-4 gx-lg-5 align-items-center">
                    <table style="border-top: 5px solid rgb(210, 209, 209); border-collapse: collapse; text-align: left;">
                        <tr style="border-bottom: 1px solid rgb(200, 200, 202); height: 40px;">
                            <td style="width: 20%; padding-left: 1%; background-color: rgb(229, 228, 228);">이름</td>
                            <td style="padding-left: 2%;">${signinlist.name}</td>
                        </tr>
                        <tr style="border-bottom: 1px solid rgb(200, 200, 202); height: 40px;">
                            <td style="width: 20%; padding-left: 1%; background-color: rgb(229, 228, 228);">사용자ID</td>
                            <td style="padding-left: 2%;">${signinlist.id}</td>
                        </tr>
                        <tr style="border-bottom: 1px solid rgb(200, 200, 202); height: 40px;">
                            <td style="width: 20%; padding-left: 1%; background-color: rgb(229, 228, 228);">생년월일</td>
                            <td style="padding-left: 2%;">${signinlist.birth}</td>
                        </tr>
                        <tr style="border-bottom: 1px solid rgb(200, 200, 202); height: 40px;">
                            <td style="width: 20%; padding-left: 1%; background-color: rgb(229, 228, 228);">비밀번호</td>
                            <td style="padding-left: 2%;">${signinlist.pw}</td>
                        </tr>
                        <tr style="border-bottom: 1px solid rgb(200, 200, 202); height: 40px;">
                            <td style="width: 20%; padding-left: 1%; background-color: rgb(229, 228, 228);">Email</td>
                            <td style="padding-left: 2%;">${signinlist.email}</td>
                        </tr>
                        <tr>
                            <td rowspan="2" style="width: 20%; padding-left: 1%; background-color: rgb(229, 228, 228);">휴대전화 및<br> 정보 수신 동의</td>
                            <td style="padding-left: 2%; padding-top : 5px;">${signinlist.tel}</td>
                        </tr>
                        <tr style="border-bottom: 1px solid rgb(200, 200, 202); height: 40px;">
                            <td style="padding-left: 2%; padding-bottom : 5px;">${signinlist.tel} </td>
                        </tr>
                        <tr>
                            <td rowspan="3" style="width: 20%; padding-left: 1%; background-color: rgb(229, 228, 228);">주소</td>
                            <td style="padding-left: 2%; padding-top : 5px;">${signinlist.address}</td>
                        </tr>
                        <tr>
                            <td style="padding-left: 2%;">도로명주소${signinlist.address}</td>
                        </tr>
                        <tr>
                            <td style="padding-left: 2%; padding-bottom : 5px;">뒷주소${signinlist.address}</td>
                        </tr>
                    </table>                    
                </div>                
            </div>
        </section>

        


        <!-- Footer ------------------------------------------------------------------------------------------------------------>


        <footer class="py-5 bg-dark">
            <div class="container"><p class="m-0 text-center text-white">Copyright &copy; NOTFOUND404</p></div>
        </footer>


        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
    </body>
</html>
