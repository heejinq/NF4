<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="include/header.jsp" %>

        <!-- 장바구니 테이블 ------------------------------------------------------------------------------------------------------------>


        <section class="bg-light py-5"">
            <div class="container px-4 px-lg-5">
                <h2 class="fw-bolder mb-4 py-5">장바구니</h2>
                <div class="row px-4 gx-4 gx-lg-5 align-items-center">
                    <table style="border-top: 1px solid grey; border-collapse: collapse; text-align: center;">
                        <tr style="border-bottom: 1px solid; height: 30px;">
                            <th style="width: 15%;">선택</th>
                            <th style="width: 20%;">상품명</th>
                            <th style="width: 20%;">가격</th>
                            <th style="width: 5%;">수량</th>
                            <th style="width: 15%;">합계</th>
                            <th style="width: 10%;">배송비</th>
                            <th style="width: 15%;">삭제</th>
                        </tr>
                        <form method="get" id="select">
	                        <c:forEach items="${cartlist_productlist}" var="list">
		                        <tr style="height: 30px;">
		                            <td>
                            			<input type="checkbox" name="p_no" value="${list.p_no}">
		                            </td>
		                            <td>${list.p_name}</td>
		                            <td>${list.p_sale} 원</td>
		                            <td>${list.p_count} 개</td>
		                            <td>${list.allsale} 원</td>
		                            <td>0 원</td>
		                            <td><button type="button" onclick="location.href='/cartDelete?p_no=${list.p_no}'">삭제하기</button></td>
		                        </tr>
	                        </c:forEach>
                        </form>
                    </table>                    
                </div>                
            </div>
        </section>

        
        <!-- 총 가격표 ------------------------------------------------------------------------------------------------------------>


        <section class="py-5 bg-light">
            <div class="container px-4 px-lg-5">
                <div class="row px-4 gx-4 gx-lg-5 align-items-center">
                    <table style="text-align: right; margin-left: auto; max-width: 500px; margin-right: 10%;">
                        <tr>
                            <th>총 구매금액</th>
                            <td>${allsum}</td>
                            <td style="width: 1%;">원</td>
                        </tr>
                        <tr>
                            <th>배송료</th>
                            <td>0</td>
                            <td style="width: 1%;">원</td>
                        </tr>
                        <tr>
                            <th>그룹할인</th>
                            <td>-${discount}</td>
                            <td style="width: 1%;">원</td>
                        </tr>
                        <tr>
                            <th>결제 예상 금액</th>
                            <td><h3>${price}</h3></td>
                            <td style="width: 1%;">원</td>
                        </tr>
                    </table>
                </div>                
            </div>
        </section>        


        <!-- 버튼 모음 ------------------------------------------------------------------------------------------------------------>


        <section class="pb-5 bg-light">
            <div class="container px-4 px-lg-5">
                <div class="row px-4 gx-4 gx-lg-5 align-items-center">

                    <table style="width: 100%;">
                        <tr>
                            <td style="text-align: left; width: 10%;">
		                        <input type="submit" value="선택삭제" formaction="/cartDelete" form="select">
                            </td>
                            <td style="text-align: left;"><input type="button" value="장바구니 비우기" onclick="location.href='/cartAllDelete?id=user0'"></td>
                            <td style="text-align: right;"><input type="button" value="쇼핑하기" onclick="location.href='/'"></td>
                            <td style="text-align: right; width: 10%;">
		                        <input type="submit" value="주문하기" formaction="/cart_buy" form="select">                          
                            </td>
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
    </body>
</html>
