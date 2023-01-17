<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="include/header.jsp" %>


        <!-- Product section ------------------------------------------------------------------------------------------------------------>


        <!--여기는 버튼 
        가운데 정렬 추가하자!!-->
        <section class="py-5 bg-light">
            <div class="container px-4 px-lg-5 my-5">
                <div class="row px-4 gx-4 gx-lg-5 align-items-center">
                    
                </div>
            </div>
        </section>


        <!-- 문의 소제목 + 리스트 ------------------------------------------------------------------------------------------------------------>


        <section class="pb-5 bg-light">
            <div class="container px-4 px-lg-5">
                <h2 class="fw-bolder mb-4">공지게시판</h2>
                <div class="row px-4 gx-4 gx-lg-5 align-items-center">
                    <table style="border-collapse: collapse; text-align: center;">
                        <tr>
                            <td class="py-2" style="width: 5%;">번호</td>
                            <td style="width: 68%;">제목</td>
                            <td style="width: 8%;">작성자</td>
                            <td style="width: 12%;">작성일</td>
                            <td style="width: 7%;">조회</td>
                        </tr>
       					<c:forEach items="${a_list }" var="a_list">
                            <tr style="border-top: 1px solid grey; ">
                                <td class="py-2">${a_list.a_no }</td>
                                <td class="px-3" style="text-align: left;">${a_list.a_title }</td>
                                <td >NF4</td>
                                <td>${a_list.a_date}</td>
                                <td>${a_list.a_view }</td>
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
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
    </body>
</html>
