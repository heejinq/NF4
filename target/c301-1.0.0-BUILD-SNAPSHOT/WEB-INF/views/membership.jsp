<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="include/header.jsp" %>



        <!-- Product section ------------------------------------------------------------------------------------------------------------>


        <section class="py-5">
            <div class="container px-4 px-lg-5 my-5">

                		<h2 class="fw-bolder">멤버쉽 목록</h2>

               			<a onclick="location.href='/product_info?id=${id}&p_no${p_no}'"><img src="/resources/test/icon/backbutton.svg"></a>
               		
                <div class="row gx-4 gx-lg-5 align-items-center">

                    <div class="col"></div>
                    
                    <div class="col" style="text-align: center;"><img src="icon/people.svg" style="width: 150px; align-items: center;"></div>

                    <div class="col" style="text-align: center;"><img src="icon/people.svg" style="width: 150px; align-items: center;"></div>

                    <div class="col" style="text-align: center;"><img src="icon/people.svg" style="width: 150px; align-items: center;"></div>
                    
                </div>




                <div class="row gx-4 gx-lg-5 align-items-center">

                    <div class="col mb-4">
                        <!-- 공백 -->
                    </div>

                    <div class="col mb-4">
                        <H2 class="fw-bolder" style="text-align: center;">VIP</H2>
                    </div>

                    <div class="col mb-4">
                        <H2 class="fw-bolder" style="text-align: center;">FAMILY</H2>
                    </div>

                    <div class="col mb-4">
                        <H2 class="fw-bolder" style="text-align: center;">BASIC</H2>
                    </div>
                </div>

                <div class="row gx-4 gx-lg-5 align-items-center mt-5">
                    <!-- 공백 -->
                </div>

                <div class="row gx-4 gx-lg-5 align-items-center mt-5">

                    <div class="col mb-4">
                        <H4 class="fw-bolder" style="text-align: center;">등급 조건</H4>
                    </div>

                    <div class="col mb-4">
                        <H4 style="text-align: center;">50만원 이상</H4>
                    </div>

                    <div class="col mb-4">
                        <H4 style="text-align: center;">10만원 이상</H4>
                        <H4 style="text-align: center;">50만원 미만</H4>
                    </div>

                    <div class="col mb-4">
                        <H4 style="text-align: center;">10만원 미만</H4>
                    </div>
                </div>

                <div class="row gx-4 gx-lg-5 align-items-center mt-5">
                    <!-- 공백 -->
                </div>

                <div class="row gx-4 gx-lg-5 align-items-center mt-5">

                    <div class="col mb-4">
                        <H4 class="fw-bolder" style="text-align: center;">등급 혜택</H4>
                    </div>

                    <div class="col mb-4">
                        <H4 style="text-align: center;">10% 할인</H4>
                    </div>

                    <div class="col mb-4">
                        <H4 style="text-align: center;">5% 할인</H4>
                    </div>

                    <div class="col mb-4">
                        <H4 style="text-align: center;">2% 할인</H4>
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

    </body>
</html>
