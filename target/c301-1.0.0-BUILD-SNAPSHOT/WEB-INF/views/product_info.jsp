<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="include/header.jsp" %>


        
        <!-- 주문자 정보 ------------------------------------------------------------------------------------------------------------>


        <section class="py-5 bg-light">
            <div class="container px-4 px-lg-5">
                <div class="row px-4 gx-4 gx-lg-5 align-items-center">
                    <table style="text-align: center;">
                        <tr>
                            <td rowspan="7" style="width: 70%;"><img src="${productone_productinfo.img_name}"></td>
                            <td colspan="6">${productone_productinfo.p_name}</td>
                        </tr>
                        <tr>
                            <td colspan="2">사이즈</td>
                            <td colspan="4" style="text-align: left;">
                                <select>
                                    <c:forEach items="${size_sizelist}" var="list">
                                        <option value="${list.size}">${list.size}</option>
                                    </c:forEach>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="6"><a href="/membership?p_no=${productone_productinfo.p_no}">등급별 혜택</a></td>
                        </tr>
                        <tr>
                            <td colspan="6"><hr></td>
                        </tr>
                        <tr>
                            <td colspan="6">합계</td>
                        </tr>
                        <tr>
                            <td colspan="6">${productone_productinfo.p_sale} 원</td>
                        </tr>
                        <tr style="text-align: center; margin: auto;">
                            <td colspan="2"><button type="button" onclick="location.href='/p_like?p_no=${productone_productinfo.p_no}'">찜하기</button></td>
                            <td colspan="2"><button type="button" onclick="location.href='/cart_add?p_no=${productone_productinfo.p_no}'">장바구니</button></td>
                            <td colspan="2"><button type="button" onclick="location.href='/cart_buy?p_no=${productone_productinfo.p_no}'">구매하기</button></td>
                        </tr>
                    </table>
                </div>          
            </div>
        </section>       


        <!-- 리뷰 소제목 + 리스트 ------------------------------------------------------------------------------------------------------------>


        <section class="pb-5 bg-light">
            <div class="container px-4 px-lg-5">
                <h3 class="mb-4">리뷰</h3>
                <div class="row px-4 gx-4 gx-lg-5 align-items-center">
                    <table style="border-collapse: collapse; text-align: center;">
                        <tr style="border-bottom: 1px solid grey">
                            <td class="py-2" style="width: 7%;">번호</td>
                            <td style="width: 68%;">내 용</td>
                            <td style="width: 10%;">이름</td>
                            <td style="width: 15%;">작성일</td>
                        </tr>
                        <c:forEach items="${review_writelist}" var="list">
                            <tr style="border-top: 1px solid grey; ">
                                <td class="py-2">${list.r_no}</td>
                                <td class="px-3" style="text-align: left;">${list.r_content }</td>
                                <td >${list.id }</td>
                                <td>${list.pqd }</td>
                            </tr>
                        </c:forEach>
                        <tr>
                        	<form action="/writereview" method="get"> 
                        		<input type="hidden" name="p_no" value="${productone_productinfo.p_no}">
	                        	<td colspan="3" class="py-2"><input type="text" name="r_content" style="width: 100%;"></td>
	                        	<td><input type="submit" value="작성하기" style="width: 100%;"></td>
                        	</form>
                        </tr>
                    </table>                    
                </div>                
            </div>
        </section>


        <!-- 문의 소제목 + 리스트 ------------------------------------------------------------------------------------------------------------>


        <section class="pb-5 bg-light">
            <div class="container px-4 px-lg-5">
                <h3 class="mb-4">문의</h3>
                <div class="row px-4 gx-4 gx-lg-5 align-items-center">
                    <table style="border-collapse: collapse; text-align: center;">
                        <tr style="border-bottom: 1px solid grey">
                            <td class="py-2" style="width: 7%;">번호</td>
                            <td style="width: 68%;">내 용</td>
                            <td style="width: 10%;">이름</td>
                            <td style="width: 15%;">작성일</td>
                        </tr>
                        
						<c:forEach items="${pqestion_writelist}" var="list" varStatus="num">
                            <tr style="border-top: 1px solid rgb(206, 206, 206);">
                                <td class="py-2" rowspan="2" style="vertical-align: text-top;">번호</td>
                                <td class="px-2 pt-2" style="text-align: left;">
                                    <div>
                                        <input class="bg-light" type='button' value='${list.p_title}' id='titlebtn' onclick='toggleBtn${num.count}()' style="border: none;"/>
                                    </div>
                                </td>
                                <td rowspan="2" style="vertical-align: text-top;">${list.signin_id}</td>
                                <td rowspan="2" style="vertical-align: text-top;">${list.pqd }</td>
                            </tr>
                            <tr>
                                <td class="px-3 py-1" style="text-align: left;">
                                    <div id='content${num.count }' >
                                        <p>
                                        	${list.p_content }
                                        </p>
                                        <form action="/setreply" method="get">
                                        	<input type="hidden" name="p_no" value="${list.p_no}">
                                        	<input type="hidden" name="product_p_no" value="${list.product_p_no}">
                                            <input type="text" name="reply" style="width: 70%;" value="${list.reply}">
                                            <input type="submit" value="답변등록" style="min-width: 50px; white-space: inherit;">
                                        </form>
                                    </div>
                                </td>
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

        <c:forEach items="${pqestion_writelist}" var="list" varStatus="num">
	        <script>
	            function toggleBtn${num.count}() {
	    			
	                // 토글 할 버튼 선택 (btn1)
	                const btn1 = document.getElementById('content'+${num.count});
	                
	                // btn1 숨기기 (display: none)
	                if(btn1.style.display !== 'none') {
	                btn1.style.display = 'none';
	                }
	                // btn` 보이기 (display: block)
	                else {
	                btn1.style.display = 'block';
	                }
	            }
	        </script>
        </c:forEach>
    </body>
</html>

