<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ include file="include/header.jsp" %>

        <!-- 메뉴 버튼 ------------------------------------------------------------------------------------------------------------>


        <!--여기는 버튼 
        가운데 정렬 추가하자!!-->
        <section class="py-5 bg-light">
            <div class="container px-4 px-lg-5 my-5">
            </div>
        </section>


        <!-- 로그인 ------------------------------------------------------------------------------------------------------------>
		custom login page
<c:out value="${error}"/>
<c:out value="${logout}"/>

        <section class="py-5 bg-light">
            <div class="container px-4 px-lg-5">
                <h2 class="fw-bolder mb-4" style="text-align: center;">로그인</h2>
                <div class="row pt-5 px-4 gx-4 gx-lg-5 align-items-center">
                	<form method='post' action="/login" >
	                    <table style="border-top: 5px solid rgb(210, 209, 209); width: auto; margin: auto;">
	                        <tr style="height: 40px;">
	                            <td style="padding-right: 2%; text-align: right;">아이디</td>
	                            <td style="padding-left: 2%;"><input type="text" name="username"></td>
	                            <td rowspan="2" style="text-align: center; padding: auto;"><input type="submit" value="로그인"></td>
	                        </tr>
	                        <tr style="border-bottom: 1px solid rgb(200, 200, 202); height: 40px;">
	                            <td style="padding-right: 2%; text-align: right;">비밀번호</td>
	                            <td style="padding-left: 2%;"><input type="password" name="password"></td>
	                        </tr>
	                        <tr>
	                        	<td colspan="3"><input type='checkbox' name='remember-me'>Remember Me
	                        	<input type='hidden' name="${_csrf.parameterName}" value="${_csrf.token}" /></td>
	                        </tr>
	                        
	                        <tr style="border-bottom: 1px solid rgb(200, 200, 202); height: 40px; text-align: center;">
	                            <td style="width: 33%; padding-left: 1%; min-width: 100px;"><a href="/Signup">회원가입</a></td>
	                            <td style="width: 33%; padding-left: 2%; min-width: 100;">아이디 찾기</td>
	                            <td style="width: 33%; padding-left: 2%; min-width: 150px;">비밀번호 찾기</td>
	                        </tr>	                        
	                    </table>   
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
        <script src="js/scripts.js"></script>
    </body>
</html>