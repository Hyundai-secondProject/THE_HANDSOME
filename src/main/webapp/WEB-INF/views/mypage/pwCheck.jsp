<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%@ include file="/WEB-INF/views/common/header.jsp"%>
<div id="bodyWrap">
  <h3 class="cnts_title">
    <span id="menuTitle"></span>
  </h3>
  <div class="sub_container">
    <!-- lnb -->
    <%@ include file="/WEB-INF/views/common/nav.jsp"%>
    <!-- cnts -->
    <div class="sub_cnts">


      <script type="text/javascript" src="/resources/js/jquery-1.11.2.min.js"></script>

      <script type="text/javascript">
        var csrfHeaderName = "${_csrf.headerName}";
        var csrfTokenValue = "${_csrf.token}";
        $(document).ajaxSend(function (e, xhr, options) {
          xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
        });
        //<![CDATA[ 
        $(document)
          .ready(
            function () {

              $("#menuTitle").text("개인정보 변경 / 탈퇴");

              capsLockCheck('j_password');

              $("#login_btn")
                .click(
                  function () {
                    var vc = new ValidationCheck();
                    vc.checkIdList = [
                      'j_username',
                      'j_password'
                    ];
                    if (vc.isValid()) {

                      var pw = $(
                          "#j_password")
                        .val();
                      pw = pw.replace(
                        /#/g,
                        "[({})]");
                      pw = pw.replace(
                        />/g,
                        "{[()]}");
                      pw = pw.replace(
                        /</g,
                        "({[]})");

                      $.ajax({
                          type: "post",
                          url: "/mypage/passwordrecheck" + "?callPage=mypage",
                          data: {
                            "uid": $("#j_username").val(),
                            "pw": pw
                          },
                          success: function (
                            response) {
                            if (response == true) {
                              $("#personInfomationChangePage").attr("action","/mypage/memberInfomationChange");
                              $("#personInfomationChangePage").submit();
                            } else {
                              location.href = "/mypage/personInfomationChangePWCheck?error=true";
                            }
                          },
                          error: function (e) {
                            console.log(e);
                          }
                        });
                    }

                  });

              $("#cancle_btn")
                .click(
                  function () {
                    location.href = "/";
                  });

              $("#j_password").keypress(function (event) {
                if (event.which == 13) {
                  event.preventDefault();
                  $("#login_btn").click();
                  $(this).blur();
                }
              });

            });
        //]]>
      </script>
      <form id="personInfomationChangePage" name="manToManInquiryForm" action="/mypage/personInfomationChangePWCheck"
        method="Get">
        <%-- <input type="hidden" name="directInto" value="NO">
				<div>
					<input type="hidden" name="${_csrf.parameterName}"
						value="${_csrf.token}" />
				</div> --%>
      </form>
      <div class="title_wrap mt30">
        <h4 class="float_left">비밀번호 재확인</h4>
        <p class="txt_line">고객님의 정보보호를 위하여 비밀번호를 다시 한번 확인합니다.</p>
      </div>

      <!-- pw reaffirm -->
      <div class="pw_reaffirm">
        <form>
          <fieldset>
            <legend>입력항목</legend>
            <div class="login_section">

              <div>
                <div>
                  <label for="j_username">아이디</label> <input type="text" id="j_username" name="j_username"
                    value=<sec:authentication property="principal.Username" />
                  disabled="disabled" />
                </div>
                <div>
                  <label for="j_password">비밀번호</label> <input type="password" id="j_password" name="j_password"
                    title="비밀번호" />
                </div>

              </div>
              <p class="guide_comment ml50">
                <!-- 입력하신 아이디 혹은 비밀번호가 일치하지 않습니다. -->
              </p>
            </div>
          </fieldset>
        </form>
      </div>
      <!-- //pw reaffirm -->

      <!-- btn_btwrap -->
      <div class="btnwrap mypage2">
        <a href="javascript:void(0);" class="btn wt" id="cancle_btn">취소</a>
        <a href="javascript:void(0);" class="btn gray" id="login_btn">확인</a>
      </div>

    </div>
    <!-- //cnts -->
  </div>
</div>
<%@ include file="/WEB-INF/views/common/footer.jsp"%>