<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="include/header.jsp" %>    
    
<!DOCTYPE html>


        <!-- Product section ------------------------------------------------------------------------------------------------------------>


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




        <!-- 공백칸 ------------------------------------------------------------------------------------------------------------>


        <section class="pt-4 bg-light">
            <div class="container px-4 px-lg-5">
                <h2 class="fw-bolder mb-4">내가 쓴글</h2>
                <div class="row gx-4 gx-lg-5 align-items-center">
                
                </div>                
            </div>
        </section>

        <!-- 문의 소제목 + 리스트 ------------------------------------------------------------------------------------------------------------>


        <section class="pb-5 bg-light">
            <div class="container px-4 px-lg-5">
                <h3 class="mb-4">전체문의</h3>
                <div class="row px-4 gx-4 gx-lg-5 align-items-center">
                    <table style="border-collapse: collapse; text-align: center;">
                        <tr>
                            <td class="py-2" style="width: 5%;">번호</td>
                            <td style="width: 75%;">내용</td>
                            <td style="width: 8%;">이름</td>
                            <td style="width: 12%;">날짜</td>
                        </tr>
                        <c:forEach items="${mywrite_All_Questionlist}" var="list">
                            <tr style="border-top: 1px solid grey; ">
                                <td class="py-2">${list.all_no}</td>
                                <td class="px-3" style="text-align: left;">${list.all_content}</td>
                                <td>${list.name}</td>
                                <td>${list.pqd}</td>
                            </tr>
                        </c:forEach>
                    </table>                    
                </div>                
            </div>
        </section>


        <!-- 문의 소제목 + 리스트 ------------------------------------------------------------------------------------------------------------>


        <section class="pb-5 bg-light">
            <div class="container px-4 px-lg-5">
                <h3 class="mb-4">제품문의</h3>
                <div class="row px-4 gx-4 gx-lg-5 align-items-center">
                    <table style="border-collapse: collapse; text-align: center;">
                        <tr>
                            <td class="py-2" style="width: 5%;">번호</td>
                            <td style="width: 75%;">내용</td>
                            <td style="width: 8%;">이름</td>
                            <td style="width: 12%;">날짜</td>
                        </tr>
                        <c:forEach items="${mywrite_P_questionlist}" var="list">
                            <tr style="border-top: 1px solid grey; ">
                                <td class="py-2">${list.p_no}</td>
                                <td class="px-3" style="text-align: left;">${list.p_content}</td>
                                <td>${list.name}</td>
                                <td>${list.pqd}</td>
                            </tr>
                        </c:forEach>
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
                        <tr>
                            <td class="py-2" style="width: 5%;">번호</td>
                            <td style="width: 75%;">내용</td>
                            <td style="width: 8%;">이름</td>
                            <td style="width: 12%;">날짜</td>
                        </tr>
                        <c:forEach items="${mywrite_Reviewlist}" var="list">
                            <tr style="border-top: 1px solid grey; ">
                                <td class="py-2">${list.r_no}</td>
                                <td class="px-3" style="text-align: left;">${list.r_content}</td>
                                <td>${list.name}</td>
                                <td>${list.pqd}</td>
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

    </body>
</html>
