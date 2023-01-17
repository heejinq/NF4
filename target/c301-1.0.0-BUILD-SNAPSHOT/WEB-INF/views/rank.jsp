<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="include/header.jsp" %> 

        <!-- Product section ------------------------------------------------------------------------------------------------------------>


        <section class="py-5">
            <div class="container px-4 px-lg-5 my-5">
                <div class="row gx-4 gx-lg-5 align-items-center">
                    <div class="card-group">
	                    <c:forEach items="${rank_productlist}" var="list">
	                        <div class="card">
	                          <img src="${list.img_name}" class="card-img-top" alt="...">
	                          <div class="card-body">
	                          
	                            <h5 class="card-title">${list.p_name}</h5>
	                            <p class="card-text">${list.p_content }</p>
	                            <p class="card-text"><small>${list.p_sale }</small></p>
	                          </div>
	                        </div>
						</c:forEach>                        
                    </div>
                </div>
            </div>
        </section>


        <!-- 첫번째 줄 ------------------------------------------------------------------------------------------------------------>

        <section class="py-5 bg-light">
            <div class="container px-4 px-lg-5 mt-5">
                <h2 class="fw-bolder mb-4">Related products</h2>
                
                
	                <c:forEach var="list" items="${product_productlist}" varStatus="status">
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
	                </c:forEach> 
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
