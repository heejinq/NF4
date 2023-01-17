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




        <!-- 날짜 및 조회하기 버튼 ------------------------------------------------------------------------------------------------------------>


        <section class="py-5 bg-light">
            <div class="container px-4 px-lg-5">
                <h2 class="fw-bolder mb-4 row gx-lg-5 align-items-center">배송조회</h2>
                <div class="row gx-4 gx-lg-5 align-items-center">
                    <table style="border: 1px solid grey; border-collapse: collapse; text-align: center;">
                        <tr>
                            <td style="width: 7%;">번호</td>
                            <td style="width: 12%;">주문일자</td>
                            <td style="width: 51%;">상품명</td>
                            <td style="width: 15%;">결제금액</td>
                            <td style="width: 15%;">배송현황</td>
                        </tr>
                        <c:forEach items="${ShippingCheck_ShippingChecklist}" var="list">
                            <tr style="border-top: 1px solid grey; ">
                                <td style="width: 7%;">${list.order_no}</td>
                                <td style="width: 12%;">${list.pqd}</td>
                                <td style="width: 51%; text-align: left;">${list.p_name}</td>
                                <td style="width: 15%;">${list.sale}</td>
                                <td style="width: 15%;">배송현황</td>
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
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
    </body>
</html>
