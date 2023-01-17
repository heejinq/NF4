<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="include/header.jsp" %>



        <!-- 장바구니 테이블 ------------------------------------------------------------------------------------------------------------>


        <section class="bg-light py-5">
            <div class="container px-4 px-lg-5">
                <h2 class="fw-bolder mb-4 py-5">장바구니</h2>
                <div class="row px-4 gx-4 gx-lg-5 align-items-center">
                    <table style="border-top: 1px solid grey; border-collapse: collapse; text-align: center;">
                        <tr style="border-bottom: 1px solid; height: 30px;">
                            <th style="width: 50%;">상품명</th>
                            <th style="width: 20%;">가격</th>
                            <th style="width: 10%;">수량</th>
                            <th style="width: 20%;">합계</th>
                        </tr>
                        <c:forEach items="${selectCart_productlist }" var="list">
	                        <tr style="height: 30px;">
	                            <td>${list.p_name}</td>
	                            <td>${list.p_sale} 원</td>
	                            <td>${list.p_count} 개</td>
	                            <td>${list.allsale} 원</td>
	                        </tr>
                        </c:forEach>
                    </table>                    
                </div>                
            </div>
        </section>

        
        <!-- 주문자 정보 ------------------------------------------------------------------------------------------------------------>


        <section class="py-5 bg-light">
            <div class="container px-4 px-lg-5">
                <h4 class="mb-4">주문자 정보</h4>
                <div class="row px-4 gx-4 gx-lg-5 align-items-center">
                    <table style="border-top: 1px solid rgb(200, 200, 202); border-collapse: collapse; text-align: left;">
                        <tr style="border-bottom: 1px solid rgb(200, 200, 202); height: 40px;">
                            <td style="width: 20%; padding-left: 2%; background-color: rgb(229, 228, 228);">이름</td>
                            <td style="padding-left: 2%; padding-right: 1%;">
                                <input type="text" name="name" value="${userinfo_userlist.name}" style="width: 100%; border: none;" class="bg-light" disabled>
                            </td>
                        </tr>
                        <tr style="border-bottom: 1px solid rgb(200, 200, 202); height: 40px;">
                            <td style="width: 20%; padding-left: 2%; background-color: rgb(229, 228, 228);">이메일</td>
                            <td style="padding-left: 2%; padding-right: 1%;">
                                <input type="email" name="email" value="${userinfo_userlist.email}" style="width: 100%; border: none; background-color: rgb(227, 227, 227);">
                            </td>
                        </tr>
                        <tr style="border-bottom: 1px solid rgb(200, 200, 202); height: 40px;">
                            <td style="width: 20%; padding-left: 2%; background-color: rgb(229, 228, 228);">연락처</td>
                            <td style="padding-left: 2%; padding-right: 1%;">
                                <input type="text" name="tel" value="${userinfo_userlist.tel}" style="width: 30%; border: none; background-color: rgb(227, 227, 227);"> 
                                <!-- <input type="text" name="tel" style="width: 10%; border: none; background-color: rgb(227, 227, 227);"> -
                                <input type="text" name="tel" style="width: 10%; border: none; background-color: rgb(227, 227, 227);"> -->
                            </td>
                        </tr>
                    </table>
                </div>          
            </div>
        </section>


        <!-- 배송 정보 ------------------------------------------------------------------------------------------------------------>


        <section class="py-5 bg-light">
            <div class="container px-4 px-lg-5">
                <h4 class="mb-4">배송 정보</h4>
                <div class="row px-4 gx-4 gx-lg-5 align-items-center">
                    <table style="border-top: 5px solid rgb(210, 209, 209); border-collapse: collapse; text-align: left;">
                        <tr style="border-bottom: 1px solid rgb(200, 200, 202); height: 40px;">
                            <td style="width: 20%; padding-left: 2%; background-color: rgb(229, 228, 228);">이름</td>
                            <td style="padding-left: 2%; padding-right: 1%;">
                                <input type="text" name="name" value="${userinfo_userlist.name }" style="width: 46%; border: none; background-color: rgb(227, 227, 227);">
                            </td>
                        </tr>
                        <tr style="border-bottom: 1px solid rgb(200, 200, 202); height: 40px;">
                            <td style="width: 20%; padding-left: 2%; background-color: rgb(229, 228, 228);">연락처</td>
                            <td style="padding-left: 2%; padding-right: 1%;">
                                <input type="text" name="tel" value="${userinfo_userlist.tel }" style="width: 30%; border: none; background-color: rgb(227, 227, 227);">
                                <!-- <input type="text" name="tel" style="width: 13%; border: none; background-color: rgb(227, 227, 227);"> -
                                <input type="text" name="tel" style="width: 13%; border: none; background-color: rgb(227, 227, 227);"> -->
                            </td>
                        </tr>
                        <tr style=" height: 40px;">
                            <td style="width: 20%; padding-left: 2%; background-color: rgb(229, 228, 228);" rowspan="3">주소</td>
                            <td style="padding-left: 2%; padding-right: 1%;">
                                <input type="text" name="address" style="width: 20%; border: none; background-color: rgb(227, 227, 227); margin-right: 1%;">
                                <input type="button" name="address" style="width: 20%; border: none; background-color: rgb(0, 0, 0); color: aliceblue;" value="우편번호">
                            </td>
                        </tr>
                        <tr>
                            <td style="padding-left: 2%; padding-right: 1%; padding-bottom: 1%;">
                                <input type="text" name="address" style="width: 100%; border: none; background-color: rgb(227, 227, 227); margin-right: 1%;" disabled>
                            </td>
                        </tr>
                        <tr style="border-bottom: 1px solid rgb(200, 200, 202);">
                            <td style="padding-left: 2%; padding-right: 1%; padding-bottom: 1%;">
                                <input type="text" name="address" style="width: 100%; border: none; background-color: rgb(227, 227, 227); margin-right: 1%;">
                            </td>
                        </tr>
                        <tr style="border-bottom: 1px solid rgb(200, 200, 202); height: 40px;">
                            <td style="width: 20%; padding-left: 2%; background-color: rgb(229, 228, 228);">배송메세지</td>
                            <td style="padding-left: 2%; padding-right: 1%;">
                                <textarea type="text" name="name" style="width: 100%; border: none; background-color: rgb(227, 227, 227); margin-top: 1%;"></textarea>
                            </td>
                        </tr>
                    </table>
                </div>               
            </div>
        </section>        


        <!-- 주문상품 할인정용 ------------------------------------------------------------------------------------------------------------>


        <section class="bg-light py-5">
            <div class="container px-4 px-lg-5">
                <h4 class="mb-4">주문상품 할인적용</h4>
                <div class="row px-4 gx-4 gx-lg-5 align-items-center">
                    <table style="border-top: 1px solid grey; border-collapse: collapse; text-align: center;">
                        <tr style="border-bottom: 1px solid; height: 30px; background-color: rgb(240, 239, 239);">
                            <th style="width: 25%;">상품금액</th>
                            <th style="width: 5%;"></th>
                            <th style="width: 15%;">배송비</th>
                            <th style="width: 5%;"></th>
                            <th style="width: 22%;">할인금액</th>
                            <th style="width: 5%;"></th>
                            <th style="width: 23%;">결제 예정금액</th>
                        </tr>
                        <tr style="height: 30px;">
                            <td>${allsum}</td>
                            <td>+</td>
                            <td>0</td>
                            <td>-</td>
                            <td>${discount}</td>
                            <td>=</td>
                            <td>${price}</td>
                        </tr>
                    </table>                    
                </div>                
            </div>
        </section>

        
        <!-- 주문상품 할인정용 ------------------------------------------------------------------------------------------------------------>


        <section class="bg-light py-5">
            <div class="container px-4 px-lg-5">
                <h4 class="mb-4">결제 정보</h4>
                <div class="row px-4 gx-4 gx-lg-5 align-items-center">
                    카카오 페이
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
