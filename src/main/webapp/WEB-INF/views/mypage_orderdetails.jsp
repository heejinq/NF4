<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="include/header.jsp" %>

        <!-- Product section ------------------------------------------------------------------------------------------------------------>


        <section class="py-5">
            <div class="container px-4 px-lg-5 my-5">
                <div class="row gx-4 gx-lg-5 align-items-center">
                    <div class="mb-5 text-center ">
                        
                        <h2 class="fw-bolder">주문 상세 보기</h2>
                   
                    </div>
                    <div class="row gx-5">
                        <div class="text-center">
                            <table style="width: 700px; margin: auto;">
                                <tr style="width: 100%; text-align: left;">
                                    <td colspan="12" class="py-2" stlye="margin-left: 5px;">주문자 정보</td>
                                </tr>
                                <tr class="bd-t">
                                    <td colspan="1" class="py-2 bd-r" style="width: 12%;"> 주문번호</td>
                                    <td colspan="6" class="bd-r" style="width: 50%; text-align: left; padding-left: 2%;">${order_info.order_no}</td>
                                    <td colspan="2" class="bd-r" style="width: 17%;"> 주문일자</td>
                                    <td colspan="3" style="width: 21%;">${order_info.pqd}</td>
                                </tr>
                                <tr class="bd-b">
                                    <td colspan="1" class="py-2 bd-r" style="width: 12%;">주문자</td>
                                    <td colspan="11" style=" text-align: left; padding-left: 2%;">${signin.name}</td>
                                </tr>
                            </table>
                            <table style="width: 700px; margin: auto;">
                                <tr style="width: 100%; text-align: left; ">
                                    <td colspan="12"stlye="margin-left: 5px;" class="py-2">배송지 정보</td>
                                </tr>
                                <tr class="bd-t">
                                    <td colspan="1" class="py-2 bd-r" style="width: 12%;"> 송장번호</td>
                                    <td colspan="11" style=" text-align: left; padding-left: 2%;">${order_info.deliverno}</td>
                                </tr>
                            
                                <tr class="bd-m">
                                    <td colspan="2" class="py-2 bd-r" style="width: 12%;"> 수취인</td>
                                    <td colspan="5" class="bd-r" style="width: 50%;">${order_info.c_name}</td>
                                    <td colspan="2" class="bd-r" style="width: 17%;"> 연락처</td>
                                    <td colspan="3" style="width: 21%;">${order_info.tel}</td>
                                </tr>
                                <tr class="bd-m">
                                    <td colspan="1" class="py-2 bd-r" style="width: 12%;"> 주소</td>
                                    <td colspan="11" style=" text-align: left; padding-left: 2%;">${order_info.address}</td>
                                </tr>
                                <tr class="bd-b">
                                    <td colspan="1" class="py-2 bd-r" style="width: 12%;"> 배송메세지</td>
                                    <td colspan="11" style=" text-align: left; padding-left: 2%;">${order_info.message}</td>
                                </tr>
                            </table>
                            <table style="width: 700px; margin: auto;">
                            
                                <tr style="width: 100%; text-align: left;">
                                    <td colspan="12"stlye="margin-left: 5px;" class="py-2">주문상품정보</td>
                                </tr>
                                <tr class="bd-t">
                                    <td colspan="4" class="py-2 bd-r" style="width: 33%;"> 주문상품정보</td>
                                    <td colspan="4" class="bd-r" style="width: 33%;"> 상품별주문번호</td>
                                    <td colspan="1" class="bd-r" style="width: 17%;"> 수량</td>
                                    <td colspan="3" style="width: 17%;"> 가격</td>
                                </tr>
                                <c:forEach items="${orderdetailslist}" var="list">
                                <tr class="bd-f">
                                    <td colspan="2" class="py-2" style="width: 12%;"> <img src="${list.img_name}" style="max-height: 100px;"></td>
                                    <td colspan="2" class="bd-r" style="width: 21%;"> ${list.p_name}</td>
                                    <td colspan="4" class="bd-r" style="width: 33%;"> ${list.pr_no}</td>
                                    <td colspan="1" class="bd-r" style="width: 17%;"> ${list.p_count}</td>
                                    <td colspan="3" style="width: 17%;"> ${list.cost}</td>
                                </tr>
                                </c:forEach>
                                <tr style="border-top: 1px solid;">
                                </tr>
                            </table>
                            <table style="width: 700px; margin: auto;">
                                <tr style="width: 100%; text-align: left;">
                                    <td colspan="12" class="py-2" stlye="margin-left: 5px;">결제정보</td>
                                </tr>
                                <tr class="bd-t">
                                    <td colspan="6" class="py-2 bd-r" style="width: 50%;"> 결제방법</td>
                                    <td colspan="6"> 결제금액</td>
                                </tr>
                            
                                <tr class="bd-b">
                                    <td colspan="6" class="py-2 bd-r" style="width: 50%;"> 카드</td>
                                    <td colspan="6"> ~~원</td>
                                </tr>
                            </table>
                            <table style="width: 700px; margin: auto;">
                                <tr style="width: 100%; text-align: left;">
                                    <td colspan="12" class="py-2" stlye="margin-left: 5px;">할인내역</td>
                                </tr>
                                <tr class="bd-t">
                                    <td colspan="6" class="py-2 bd-r" style="width: 50%;"></td>
                                    <td colspan="6" class="py-2"> 금액</td>
                                </tr>
                                <tr class="bd-b">
                                    <td colspan="6" class="py-2 bd-r" style="width: 50%;"> (등급)할인</td>
                                    <td colspan="6">${order_info.discount}</td>
                                </tr>
                            </table>
                        </div>
                    </div>
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
