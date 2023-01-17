<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="include/header.jsp" %>

        <!-- 입력창 section ------------------------------------------------------------------------------------------------------------>


        <section class="py-5">
            <div class="container px-4 px-lg-5 my-5">
                <div class="row gx-5 justify-content-center">
                    
                    <div class="text-center mb-5" style="text-align: center;">
                        <h2 class="fw-bolder">랜덤 코디</h2>
                        <p class="lead mb-0">기회는 하루에 3번 ~.~ 지금이 기회~</p>
                    </div>
                    
                    <div class="row gx-5 justify-content-center">
                        <div class="col-lg-6">

                            <form id="contactForm" action="/random_info" method="post">
                                
                                <div class="form-floating mb-3" style="text-align: center;">
                                    성별을 선택해 주세요. <br><br>
                                    <input type="radio" name="gender" value='1'/> 남자
                                    <input type="radio" name="gender" value='2'/> 여자 <br><br>
                                    <input type="submit" class="btn btn-outline-dark btn-lg" value="추천받기">
                                </div>
<input type='hidden' name="${_csrf.parameterName}" value="${_csrf.token}" />
                            </form>
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
        <script src="/resources/test/js/scripts.js"></script>
    </body>
</html>

