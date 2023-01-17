
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="include/header.jsp" %>
        <!-- Product section ------------------------------------------------------------------------------------------------------------>


        <!--여기는 버튼 
        가운데 정렬 추가하자!! 그리고 크기 키원기-->
        <section class="py-5 bg-light">
            <div class="container px-4 px-lg-5 mt-5">
            	
            	<div class="row px-4 gx-4 gx-lg-5 align-items-center">
	                <div style="text-align: center;">
                       <a href="/productlist?gender=${gender}&p_type=1"><button type="button" class="btn btn_lr" style="width: 150px;">상 의</button></a>
                       <a href="/productlist?gender=${gender}&p_type=2"><button type="button" class="btn btn_lr" style="width: 150px;">하 의</button></a>
                       <a href="/productlist?gender=${gender}&p_type=3"><button type="button" class="btn btn_lr" style="width: 150px;">신 발</button></a>
                    </div>
                </div>

            </div>
        </section>


        <!-- 카드  ------------------------------------------------------------------------------------------------------------>


        <section class="py-5 bg-light">
            <div class="container px-4 px-lg-5 mt-5">
                <h2 class="fw-bolder mb-4">Related products</h2>
                
                
	                <c:forEach var="list" items="${productdetailslist}" varStatus="status">
	                	<c:if test="${status.count%4 eq 1}">
	                	<div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
	                	</c:if>
		                    <div class="col mb-5">
		                        <div class="card h-100">
		                            <!-- Product image                                인기상품1-->
		                            <img class="card-img-top" src="${list.img_name}" alt="..." style="height: 300px;"/>
		                            <!-- Product details-->
		                            <div class="card-body p-4">
		                                <div class="text-center">
		                                    <!-- Product name-->
		                                    <h5 class="fw-bolder">${list.p_name}</h5>
		                                    <!-- Product price-->
											${list.p_sale}원
		                                </div>
		                            </div>
		                            <!-- Product actions-->
		                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
		                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="/product_info?p_no=${list.p_no}">상세 보기</a></div>
		                            </div>
		                        </div>
	                    	</div>
	                    <c:if test="${status.count%4 eq 0}">
                		</div>
	                	</c:if>
	                	
	                	<c:if test="${pagingVO.nowPage eq pagingVO.endScreenPage}">
	                		<c:if test="${status.count%4 ne 0}">
	                			<c:if test="${status.count eq pagingVO.ifNum}">
	                				</div>
	                			</c:if>
	                		</c:if>
	                	</c:if>
	                	
	                </c:forEach> 
	                
	                <!-- 페이징 처리 -->
	                <div style="text-align: center;">
	                	<c:if test="${pagingVO.nowPage ne 1}">
	                		<a href="/productlist?gender=${gender}&p_type=${p_type}&nowPage=${pagingVO.nowPage-1}&pageNum=${pagingVO.pageNum}">
	                			pre
	                		</a>
	                	</c:if>&nbsp;
	                
		                <c:forEach begin="${pagingVO.startScreenPage}" end="${pagingVO.endScreenPage}" var="num">
		                	
		                	<a href="/productlist?gender=${gender}&p_type=${p_type}&nowPage=${num}&pageNum=${pagingVO.pageNum}">
		                		<c:if test="${pagingVO.nowPage eq num}"><b></c:if>
		                			[${num}]
		                		<c:if test="${pagingVO.nowPage eq num}"></b></c:if>
		                	</a>&nbsp;
		                	
		                </c:forEach>
		                
		                <c:if test="${pagingVO.nowPage ne pagingVO.endPage}">
	                		<a href="/productlist?gender=${gender}&p_type=${p_type}&nowPage=${pagingVO.nowPage+1}&pageNum=${pagingVO.pageNum}">
	                			next
	                		</a>
	                	</c:if>&nbsp;
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
        <script src="/resources/test/js/scripts.js"></script>
    </body>
</html>

