<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="include/header.jsp" %>

        <!-- Product section ------------------------------------------------------------------------------------------------------------>


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
        
        <!-- Product section ------------------------------------------------------------------------------------------------------------>

        <section class="pb-5 bg-light">
            <div class="container px-4 px-lg-5">
                <div class="row px-4 gx-4 gx-lg-5 align-items-center">
                
                    <table style="border-top: 1px solid grey; border-collapse: collapse; text-align: center;">
                        <tr style="border-bottom: 1px solid;">
                            <th style="width: 15%;">날짜</th>
                            <th colspan="2">상품 정보</th>
                            <th style="width: 20%;">구매 금액</th>
                        </tr>
                        <c:forEach items="${orderBreakdown_orderlist}" var="list">
                        <tr style="border-top: 1px solid rgb(220,220,220);">
                            <td>${list.pqd}</td>
                            <td rowspan="2" style="border-left: 1px solid; width: 13%; text-align: left; text-align: center;"><img src="${list.img_name}" style="max-height: 100px;"></td>
                            <td style="text-align: left; padding-left: 5%;">${list.p_name}</td>
                            <td rowspan="2" style="border-left: 1px solid;">${list.p_sale}</td>
                        </tr>
                        <tr>
                            <td style="vertical-align: middle;"><button onclick="location.href='/mypage_orderdetails?order_no=${list.order_no}'">주문상세보기</button></td>
                            <td style="text-align: left; padding-left: 5%;">수량 : ${list.p_count} </td>
                        </tr>
                        </c:forEach>
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
    </body>
</html>
