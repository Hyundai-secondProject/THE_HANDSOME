<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- /**
 * @author 신기원
 * @since 2022.10.19
 * @version 1.0
 * 
 * <pre>
 * 수정일                    수정자               수정내용
 * 2022.10.19   신기원              최초 생성
 * </pre>
 */ -->

  <%@ include file="/WEB-INF/views/common/header.jsp"%>
  <form id="CSRFForm" action="/member/joinstart" method="post">
    <div>
      <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
    </div>
  </form>
  <script type="text/javascript">
    //<![CDATA[ 
    var csrfHeaderName = "${_csrf.headerName}";
    var csrfTokenValue = "${_csrf.token}";
    $(document).ajaxSend(function (e, xhr, options) {
      xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
    });
    $(document)
      .ready(
        function () {
        	
          $('#emailAuthBtn').click(function () {
                var vc = new ValidationCheck();
                
                vc.checkIdList = ['uid',
                  'uidDomain',
                  'uidDuplChk'
                ];

                if (vc.isValid() &&
                  $("#uidDuplChk").val() != 'N') {
                  $("#idDubChkBtn").attr(
                    "disabled", true);
                  $("#emailAuthBtn").attr(
                    "disabled", true);

                  var email = $("#uid").val() + "@" + $("#uidDomain") .val();
                  $.ajax({
                      type: "POST",
                      url: "/member/join/ok",
                      data: {
                        "email": email
                      },
                      success: function (
                        data) {
                        if (data == "Y") {
                          alert("이메일 인증이 완료되었습니다.");
                          location.href = "/member/joinprovision"
                        } else {
                          alert("이메일 인증에 실패하였습니다.");
                        }
                      },
                      error: function (
                        data) {
                        alert("이메일 인증 에러 발생!");
                        console.log(data);
                      }
                    });
                }
              });

          emailTypeDomainSelectController("#uidDomain",
            "#uidDomainSel");

          $("#id, #uidDomain, #uidDomainSel")
            .change(
              function () {

                var emailRegExp =
                  /^((([^<>()[\]\\.,;:\s@\"~`!@#$%^&*+={}|'/?]+(\.[^<>()[\]\\.,;:\s@\"~`!@#$%^&*+={}|'/?]+)*))|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
                var email = $("#uid").val() +
                  "@" +
                  $("#uidDomain").val();

                if ($("#uid").val() == "" &&
                  $("#uidDomain")
                  .val() == "") {
                  $("#idDubMsg").text('');
                  $("#uidDuplChk").val('');
                } else {

                  if (emailRegExp.test(email) != true) {

                    $("#idDubMsg")
                      .text(
                        "잘못된 E-mail 형식입니다.");
                    $("#uidDuplChk").val(
                      'N');
                    return;
                  } else {
                    $("#idDubMsg").text('');
                    $("#uidDuplChk")
                      .val('');
                  }
                }

              });

          $("#idDubChkBtn")
            .click(
              function () {
                console.log("sdf");
                var vc = new ValidationCheck();
                vc.checkIdList = ['uid',
                  'uidDomain'
                ];
                vc.msgFn = function (msg) {
                  $("#idDubMsg").text(msg);
                };
                if ($("#uidDuplChk").val() == 'N') {
                  return;
                }

                if (vc.isValid()) {
                  $.ajax({
                      type: "GET",
                      url: "/member/join/isdupluid?uid=" + $("#uid").val() +"@" + $( "#uidDomain").val(),
                      success: function (response) {
                        if (response == true) {
                          $("#idDubMsg").text('이미 사용중인 이메일입니다.');
                        } else {
                          $("#idDubMsg").text('사용 가능한 이메일입니다.');
                          $("#uidDuplChk").val('Y');
                        }
                      },
                      error: function (e) {
                        console.log(e);
                      }
                    });
                }
              });
          $(".email_auth_btn").click(
            function () {

              var email = $('#uid').val() + "@" +
                $('#uidDomain').val();

              if (email == '') {
                alert("이메일을 입력해주세요.");
                return false;
              }

              $.ajax({
                type: "POST",
                url: "/member/join/emailAuth",
                data: {
                  email: email
                },
                success: function (data) {
                  alert("인증번호가 발송되었습니다.");
                  email_auth_cd = data;
                },
                error: function (data) {
                  alert("메일 발송에 실패했습니다.");
                }
              });
            });
        });

    var authFailFn = function (msg) {
      layerAlert(msg);
    };
    //]]>
  </script>
  <form id="join_frm">
    <input type="hidden" name="uidDuplChk" id="uidDuplChk" value="" title="이메일 아이디 중복" /> <input type="hidden"
      name="emailDuplChk" id="emailDuplChk" value="" title="이메일 중복" />

    <div id="bodyWrap">
      <!--title-->
      <h3 class="cnts_title">
        <span>회원가입</span>
      </h3>
      <!--//title-->
      <!--email step-->
      <div class="email_step">
        <ul class="clearfix">
          <li class="step01 on">step01 이메일인증</li>
          <li class="step02">step02 회원약관동의</li>
          <li class="step03">step03 회원정보 입력</li>
          <li class="step04">step04 가입완료</li>
        </ul>
      </div>
      <!--/email  step-->
      <!--sub container-->
      <div class="sub_container">
        <div class="join_title">
          <p class="title">더한섬닷컴에 가입을 환영합니다.</p>
          <p class="s_title">
            <strong>본인인증 절차 없이, 더한섬닷컴에서 제공하는 서비스만 제한적으로 이용할 수 있습니다.</strong><br>더한섬닷컴에서
            사용 가능하며, <span style="color: #c69c6c; font-weight: normal; text-decoration: underline;">오프라인
              매장에서는 사용할 수 없습니다.<br>한섬마일리지와 현대백화점그룹 H.Point 혜택, 한섬의 온라인 멤버십
              서비스 ‘THE 클럽’의 혜택은 제공되지 않습니다.
            </span>
          </p>
        </div>
        <fieldset>
          <legend>본인인증</legend>
          <div class="box_type_1">
            <div class="email ">

              <p>
                <strong>이메일인증으로 회원가입</strong>
              </p>
              <p>정보입력은 입력한 메일을 통한 인증 후 가능합니다.</p>
              <!-- <p class="emailinput">
									<input type="text" id="email" name="email" style="width: 120px"
										title="이메일 아이디"> <input type="button"
										class="btn add_s" id="idDubChkBtn" value="중복확인"> <br>
									<span class="guide_comment" id="idDubMsg"></span>

									<button type="button" id="email_auth_btn"
										class="email_auth_btn btn add_s">인증번호 받기</button>
								</p> -->
              <p class="emailinput">
                <input type="text" id="uid" name="uid" style="width: 120px" title="이메일 아이디"> <span
                  class="andmail">@</span> <input type="text" id="uidDomain" name="uidDomain"
                  style="width: 120px; display: none;" title="이메일 계정"> <select id="uidDomainSel"
                  style="width: 120px; margin: 0 0 0 0;" title="이메일 아이디 도메인">
                  <option value="">직접입력</option>
                  <option value="naver.com">naver.com</option>
                  <option value="daum.net">daum.net</option>
                  <option value="gmail.com">gmail.com</option>
                  <option value="yahoo.co.kr">yahoo.co.kr</option>
                  <option value="lycos.co.kr">lycos.co.kr</option>
                  <option value="nate.com">nate.com</option>
                  <option value="empas.com">empas.com</option>
                  <option value="hotmail.com">hotmail.com</option>
                  <option value="msn.com">msn.com</option>
                  <option value="hanmir.com">hanmir.com</option>
                  <option value="chol.net">chol.net</option>
                  <option value="korea.com">korea.com</option>
                  <option value="netsgo.com">netsgo.com</option>
                  <option value="dreamwiz.com">dreamwiz.com</option>
                  <option value="hanafos.com">hanafos.com</option>
                  <option value="freechal.com">freechal.com</option>
                  <option value="hitel.net">hitel.net</option>
                </select> <input type="button" class="btn add_s" id="idDubChkBtn" value="중복확인"> <br> <span
                  class="guide_comment" id="idDubMsg"></span><br> <input type="text" placeholder="인증번호 입력"
                  id="email_auth_key"> <input type="button" id="email_auth_btn" class="email_auth_btn btn add_s"
                  value="인증 번호 받기">
              </p>
              <button type="button" id="emailAuthBtn" class="btn acc">가입하기</button>
            </div>
          </div>
        </fieldset>
        <div class="jo_bottom_banner">
          <div class="left_banner">
            <a href="http://www.thehandsome.com/ko/magazine/events/8802941687680" target="_blank">통합회원 가입 시 <br>가입 축하
              <span style="color: #c69c6c;">정상 15% &amp; 아울렛 5% 쿠폰</span> 증정<span class="dtil_viw">자세히 보기
                &gt;&gt;</span></a>
          </div>
          <div class="right_banner">
            <a href="/ko/svcenter/theClubInfo" target="_blank">통합회원을 위한<br>한섬
              온라인 멤버십 <span style="color: #c69c6c;">THE 클럽</span><span class="dtil_viw">자세히 보기 &gt;&gt;</span></a>
          </div>
        </div>
      </div>

    </div>
  </form>
  <%@ include file="/WEB-INF/views/common/footer.jsp"%>
</body>

</html>