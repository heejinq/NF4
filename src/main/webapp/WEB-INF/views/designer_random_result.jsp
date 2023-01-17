<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="include/header.jsp" %>

        <!-- 입력창 section ------------------------------------------------------------------------------------------------------------>


        <section class="py-5 bg-light">
            <div class="container px-4 px-lg-5 mt-5">
                <h2 class="fw-bolder mb-4 pb-5" style="text-align: center;">코디 결과를 보여드리겠습니다.</h2>

                    <c:forEach var="list" items="${random_info}" varStatus="status">
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
		                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">View options</a></div>
		                            </div>
		                        </div>
	                    	</div>
	                    <c:if test="${status.count%4 eq 3}">
	                	</div>
	                	</c:if>
	                </c:forEach> 

                <!-- 구매버튼 -->

	                <div style="text-align: center;">
	                    <form action="" method="">
	                        <input type="hidden" name="code1">
	                        <input type="hidden" name="code2">
	                        <input type="hidden" name="code3">
	                        <input type="submit" class="btn btn-outline-dark btn-lg" value="결제하기">
	                        
	                  <input type='hidden' name="${_csrf.parameterName}" value="${_csrf.token}" />
	                    </form>
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

