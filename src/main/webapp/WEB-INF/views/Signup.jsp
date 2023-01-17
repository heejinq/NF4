<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="include/header.jsp" %>


        <!-- 회원정보설정 ------------------------------------------------------------------------------------------------------------>


        <section class="py-5 bg-light">
            <div class="container px-4 px-lg-5">
                    <h2 class="fw-bolder mb-4 pb-5" style="text-align: center;">회원정보 설정</h2>
                    <form method="post" id="signn">
                        <div class="row px-4 gx-4 gx-lg-5 align-items-center">
                            <table style="border-top: 5px solid rgb(210, 209, 209); border-collapse: collapse; text-align: left;">
                                <tr style="border-bottom: 1px solid rgb(200, 200, 202); height: 40px;">
                                    <td style="width: 20%; padding-left: 1%; background-color: rgb(229, 228, 228);">사용자ID</td>
                                    <td style="padding-left: 2%; padding-right: 1%;">
                                        <input type="text" name="id" style="width: 30%; border: none; background-color: rgb(227, 227, 227);" value="${vo.id}">
                                        <input type="submit" value="id중복체크" formaction="/idCheck" form="signn">
                                        <p>${check}</p>
                                    </td>
                                </tr>
                                <tr style="border-bottom: 1px solid rgb(200, 200, 202); height: 40px;">
                                    <td style="width: 20%; padding-left: 1%; background-color: rgb(229, 228, 228);">이름</td>
                                    <td style="padding-left: 2%; padding-right: 1%;">
                                        <input type="text" name="name" style="width: 100%; border: none; background-color: rgb(227, 227, 227);" value="${vo.name}">
                                    </td>
                                </tr>
                                <tr style="border-bottom: 1px solid rgb(200, 200, 202); height: 40px;">
                                    <td style="width: 20%; padding-left: 1%; background-color: rgb(229, 228, 228);">비밀번호</td>
                                    <td style="padding-left: 2%; padding-right: 1%;">
                                        <input type="password" name="pw" style="width: 100%; border: none; background-color: rgb(227, 227, 227);" value="${vo.pw}">
                                    </td>
                                </tr>
                                <tr style="border-bottom: 1px solid rgb(200, 200, 202); height: 40px;">
                                    <td style="width: 20%; padding-left: 1%; background-color: rgb(229, 228, 228);">Email</td>
                                    <td style="padding-left: 2%; padding-right: 1%;">
                                        <input type="text" name="email" style="width: 100%; border: none; background-color: rgb(227, 227, 227);" value="${vo.email}">
                                    </td>
                                </tr>
                                <tr style="border-bottom: 1px solid rgb(200, 200, 202); height: 40px;">
                                    <td style="width: 20%; padding-left: 1%; background-color: rgb(229, 228, 228);">생일</td>
                                    <td style="padding-left: 2%; padding-right: 1%;">
                                        <input type="date" name="birth" style="width: 100%; border: none; background-color: rgb(227, 227, 227);" value="${vo.birth}">
                                    </td>
                                </tr>
                                <tr style="border-bottom: 1px solid rgb(200, 200, 202); height: 40px;">
                                    <td style="width: 20%; padding-left: 1%; background-color: rgb(229, 228, 228);">성별(남자는 1/ 여자는 2)</td>
                                    <td style="padding-left: 2%; padding-right: 1%;">
                                        <input type="number" name="gender" style="width: 100%; border: none; background-color: rgb(227, 227, 227);" value="${vo.gender}">
                                    </td>
                                </tr>
                                <tr style="border-bottom: 1px solid rgb(200, 200, 202); height: 40px;">
                                    <td style="width: 20%; padding-left: 1%; background-color: rgb(229, 228, 228);">휴대폰 번호</td>
                                    <td style="padding-left: 2%; padding-right: 1%;">
                                        <input type="text" name="tel" style="width: 100%; border: none; background-color: rgb(227, 227, 227);" value="${vo.tel}">
                                    </td>
                                </tr>
                                <tr style="border-bottom: 1px solid rgb(200, 200, 202); height: 40px;">
                                    <td style="width: 20%; padding-left: 1%; background-color: rgb(229, 228, 228);">주소</td>
                                    <td style="padding-left: 2%; padding-right: 1%;">
                                        <input type="text" id="sample4_postcode" name="sample4_postcode" placeholder="우편번호">
										<input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기"><br>
										<input type="text" id="sample4_roadAddress" name="sample4_roadAddress" placeholder="도로명주소">
										<input type="text" id="sample4_jibunAddress" name="sample4_jibunAddress" placeholder="지번주소">
										<span id="guide" style="color:#999;display:none"></span>
										<input type="text" id="sample4_detailAddress" name="sample4_detailAddress" placeholder="상세주소">
										<input type="text" id="sample4_extraAddress" name="sample4_extraAddress" placeholder="참고항목">
			
										<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
										<script>
										    function sample4_execDaumPostcode() {
										        new daum.Postcode({
										            oncomplete: function(data) {
										                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
										
										                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
										                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
										                var roadAddr = data.roadAddress; // 도로명 주소 변수
										                var extraRoadAddr = ''; // 참고 항목 변수
										
										                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
										                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
										                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
										                    extraRoadAddr += data.bname;
										                }
										                // 건물명이 있고, 공동주택일 경우 추가한다.
										                if(data.buildingName !== '' && data.apartment === 'Y'){
										                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
										                }
										                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
										                if(extraRoadAddr !== ''){
										                    extraRoadAddr = ' (' + extraRoadAddr + ')';
										                }
										
										                // 우편번호와 주소 정보를 해당 필드에 넣는다.
										                document.getElementById('sample4_postcode').value = data.zonecode; //우편 번호
										                document.getElementById("sample4_roadAddress").value = roadAddr; // 도로명주소
										                document.getElementById("sample4_jibunAddress").value = data.jibunAddress; // 지번주소
										                
										                // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
										                if(roadAddr !== ''){
										                    document.getElementById("sample4_extraAddress").value = extraRoadAddr; // 참고항목
										                } else {
										                    document.getElementById("sample4_extraAddress").value = '';
										                }
										
										                var guideTextBox = document.getElementById("guide");
										                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
										                if(data.autoRoadAddress) {
										                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
										                    guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
										                    guideTextBox.style.display = 'block';
										
										                } else if(data.autoJibunAddress) {
										                    var expJibunAddr = data.autoJibunAddress;
										                    guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
										                    guideTextBox.style.display = 'block';
										                } else {
										                    guideTextBox.innerHTML = '';
										                    guideTextBox.style.display = 'none';
										                }
										            }
										        }).open();
										    }
										</script>
										<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
										<script>
										window.onload = function(){
										    document.getElementById("address_kakao").addEventListener("click", function(){ //주소입력칸을 클릭하면
										        //카카오 지도 발생
										        new daum.Postcode({
										            oncomplete: function(data) { //선택시 입력값 세팅
										                document.getElementById("address_kakao").value = data.address; // 주소 넣기
										                document.querySelector("input[name=address_detail]").focus(); //상세입력 포커싱
										            }
										        }).open();
										    });
										}
										</script>
										
										    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
										<script>
										    new daum.Postcode({
										        oncomplete: function(data) {
										        }
										    }).open();
										</script>
                                    </td>
                                </tr>
                                <tr style="border-bottom: 1px solid rgb(200, 200, 202); height: 40px;">
                                    <td style="width: 20%; padding-left: 1%; background-color: rgb(229, 228, 228);">나만의 힌트(비밀번호 찾을 때 쓸 키워드를 입력해주세요.)</td>
                                    <td style="padding-left: 2%; padding-right: 1%;">
                                        <input type="text" name="h_answer" style="width: 100%; border: none; background-color: rgb(227, 227, 227);" value="${vo.h_answer}">
                                    </td>
                                </tr>
                            </table>
                            <div class="pt-3" style="padding-left: auto; text-align: right;">
                            	<input type='hidden' name="${_csrf.parameterName}" value="${_csrf.token}" />                                
                                <input type="submit" value="완료" formaction="/signProcess" form="signn">
                            </div>                           
                        </div>
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
    </body>
</html>
