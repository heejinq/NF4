<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="include/header.jsp" %>


        <!-- 날짜 및 조회하기 버튼 ----------------------------------------------------------------------------------------------------------


        <section class="pt-5 pb-2 bg-light">
            <div class="container px-4 px-lg-5 mt-5">
                <h2 class="fw-bolder mb-4">주문내역</h2>
                <div class="row px-4 gx-4 gx-lg-5 align-items-center">
                    <div class="" style="border: solid 1px grey; text-align: center;">
                        <div class="btn-group" role="group" aria-label="Basic outlined example">
                            <a href=""><button type="button" class="btn btn_lr" style="width: 150px;">주문 내역</button></a>
                            <a href=""><button type="button" class="btn btn_lr" style="width: 150px;">배송 조회</button></a>
                            <a href=""><button type="button" class="btn btn_lr" style="width: 150px;">내가 쓴 글</button></a>
                            <a href=""><button type="button" class="btn btn_lr" style="width: 150px;">관심 상품</button></a>
                            <a href=""><button type="button" class="btn btn_lr" style="width: 150px;">개인 정보 관리</button></a>
                        </div>
                    </div>
                </div>                
            </div>
        </section> -->


        <!-- 날짜 및 조회하기 버튼 ------------------------------------------------------------------------------------------------------------>


        <section class="pb-5 bg-light py-5" style="min-height: 700px;">
            <div class="container px-4 px-lg-5">
                <h2 class="fw-bolder mb-4 py-5">주문내역</h2>
                <div class="row px-4 gx-4 gx-lg-5 align-items-center">
                    <table style="border-top: 1px solid grey; border-collapse: collapse; text-align: center;">
                        <tr style="border-bottom: 1px solid;">
                            <th style="width: 15%;">날짜</th>
                            <th colspan="2">상품 정보</th>
                            <th style="width: 20%;">구매 금액</th>
                        </tr>
                        <tr>
                            <td>2222-22-22</td>
                            <td rowspan="2" style="border-left: 1px solid; width: 13%; text-align: left; text-align: center;">상품이미지</td>
                            <td style="text-align: left; padding-left: 5%;">상품이름</td>
                            <td rowspan="2" style="border-left: 1px solid;">50000만원</td>
                        </tr>
                        <tr>
                            <td><button onclikc="href=''">주문상세보기</button></td>
                            <td style="text-align: left; padding-left: 5%;">수량 : 1개 </td>
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
