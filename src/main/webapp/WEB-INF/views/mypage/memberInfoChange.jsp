<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

  <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
    <%@ include file="/WEB-INF/views/common/header.jsp" %>
      <div id="bodyWrap">
        <h3 class="cnts_title">
          <span id="menuTitle">개인정보 변경</span>
        </h3>
        <div class="sub_container">
          <!-- lnb -->
          <%@ include file="/WEB-INF/views/common/nav.jsp" %>
            <!-- cnts -->
            <div class="sub_cnts">


              <script type="text/javascript">
                //<![CDATA[ 
                $(document).ready(function () {

                  $(".our_privacy_info_btn").click(function () {
                    $(".pop_pinfo_agree").show();
                    $("#layerPinfoAgree").show();
                  });
                  $(".pop_pinfo_agree .btn_close").click(function () {
                    $("#layerPinfoAgree").hide();
                  });

                  $("#agree_our_privacy").change(function () {

                    if ($('#agree_our_privacy').is(":checked")) {
                      $("#checkYN").val("1");
                    } else {
                      $("#checkYN").val("0");
                    }
                  });





                  $("#menuTitle").text("개인정보 변경"); //개인정보 변경



                  //easyMember != Y 
                  //일반
                  emailTypeDomainSelectController("#emailDomain", "#emailDomainSel");

                  $("#hp1").val("${sessionScope.member.mphone}".substr(0, 3));
                  $("#ph1").val("");

                  $("#emailDomainSel").val("${sessionScope.member.memail}".split('@')[1]);
                  if ($("#emailDomainSel option").index($("#emailDomainSel option:selected")) != -1) $("#emailDomainSel")
                    .change();
                  else $("#emailDomainSel option:eq(0)").attr("selected", "selected");

                  $('input[name="emailReceiveYN"]:radio:input[value="false"]').attr('checked', 'checked');
                  $('input[name="smsReceiveYN"]:radio:input[value="false"]').attr('checked', 'checked');

                  if ($("#hp2").val() == "" || $("#hp2").val() == "")
                    $("#hpMsg").text("필수항목을 입력하시길 바랍니다.");


                  //우편번호 검색
                  $('#addrSearchBtn').click(function () {
                    console.log();
                    new daum.Postcode({
                      oncomplete: function (data) {
                        var roadAddr = data.roadAddress; // 도로명 주소 변수
                        var jibunAddr = data.jibunAddress; // 지번 주소 변수
                        // 우편번호와 주소 정보를 해당 필드에 넣는다.
                        document.getElementById('zipCode').value = data.zonecode;
                        if (roadAddr !== '') {
                          document.getElementById("address1").value = roadAddr;
                        } else if (jibunAddr !== '') {
                          document.getElementById("address2").value = jibunAddr;
                        }
                      }
                    }).open();
                  });

                  $('#zipCode').click(function () {
                    $('#addrSearchBtn').click();
                  });

                  //이메일 중복 확인
                  $('#emailDubChkBtn').click(function () {

                    var vc = new ValidationCheck();
                    vc.checkIdList = ['email', 'emailDomain'];
                    vc.msgFn = function (msg) {
                      $("#emailMsg").text(msg);
                    };

                    var email = $("#email").val() + "@" + $("#emailDomain").val();

                    if ("sks*********" + "@" + "naver.com" == email) {
                      $("#emailMsg").text('이미 사용중인 이메일입니다.');
                      $("#emailDuplChk").val('Y');
                      return;
                    }

                    if (email.indexOf("*") > -1) {
                      $("#emailMsg").text('이미 사용중인 이메일입니다.');
                      $("#emailDuplChk").val('');
                      return;
                    }

                    if (vc.isValid() && $("#emailDuplChk").val() != 'N') {
                      $.ajax({
                        type: "GET",
                        url: "/member/isduplemail?email=" + email,
                        success: function (response) {
                          if (response == true) {
                            $("#emailMsg").text('이미 사용중인 이메일입니다.');
                            $("#emailDuplChk").val('');
                          } else {
                            $("#emailMsg").text('사용 가능한 이메일입니다.');
                            $("#emailDuplChk").val('Y');

                          }
                        },
                        error: function (e) {
                          console.log(e);
                        }
                      });
                    }

                  });


                  $("#email, #emailDomain, #emailDomainSel").change(function () {

                    var emailRegExp =
                      /^((([^<>()[\]\\.,;:\s@\"~`!@#$%^&+={}|'/?]+(\.[^<>()[\]\\.,;:\s@\"~`!@#$%^&+={}|'/?]+)*))|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
                    var email = $("#email").val() + "@" + $("#emailDomain").val();

                    if (emailRegExp.test(email) != true) {

                      $("#emailMsg").text("잘못된 E-mail 형식입니다.");
                      $("#emailDuplChk").val('N');
                      return;
                    } else {
                      $("#emailDuplChk").val('');
                    }


                    if ("sks*********" + "@" + "naver.com" == email) {
                      $("#emailMsg").text('');
                      $("#emailDuplChk").val('Y');
                    } else {
                      $("#emailMsg").text('');
                      $("#emailDuplChk").val('');
                    }
                  });


                  $("#cancleBtn").click(function () {
                    var lc = new layerConfirm('개인정보 변경을 취소하시겠습니까?', '확인', '취소');
                    lc.confirmAction = function () {
                      location.href = "/mypage/order/myorders";
                    };
                  });

                  $("#saveBtn").click(function () {
                    var vc = new ValidationCheck();
                    vc.checkIdList = ['hp1', 'hp2', 'hp3', 'email', 'emailDomain', 'emailDuplChk'];
                    if ($("#emailDuplChk").val() == 'N') {
                      return;
                    }
                    if (vc.isValid()) {
                      $("#emailAddress").val($("#email").val() + "@" + $("#emailDomain").val());
                      $("#mobilePhoneNumber").val($("#hp1").val() + "-" + $("#hp2").val() + "-" + $("#hp3").val());

                      if ($("#ph1").val() == "")
                        $("#telephoneNumber").val("");
                      else if ($("#ph2").val() == "")
                        $("#telephoneNumber").val("");
                      else if ($("#ph3").val() == "")
                        $("#telephoneNumber").val("");
                      else
                        $("#telephoneNumber").val($("#ph1").val() + "-" + $("#ph2").val() + "-" + $("#ph3").val());

                      // 2017-03-08, 이현승, 전화번호데이터검증 ===>>>
                      var hpCheckResult = phoneNumbericCheck();
                      if (hpCheckResult != "SUCCESS") {
                        var lc = new layerAlert("전화번호는 숫자만 입력가능 합니다.");
                        lc.confirmAction = function () {
                          $('#' + hpCheckResult).focus();
                        };
                        return;
                      }

                      if ($("#emailAddress").val().length > 50) {
                        layerAlert("E-mail은 최대 50자입니다.");
                        return;
                      }

                      var paramDatas = $("#updateProfileForm").serialize();
                      var csrfHeaderName = "${_csrf.headerName}";
                      var csrfTokenValue = "${_csrf.token}";
                      $(document).ajaxSend(function (e, xhr, options) {
                        xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
                      });
                      $.ajax({
                        type: "POST",
                        url: "/mypage/updatecomplete",
                        datatype: "json",
                        data: {
                          mid: $("#mid").val(),
                          mpassword: $("#newPassword").val(),
                          mzipcode: $("#zipCode").val(),
                          maddress1: $("#address1").val(),
                          maddress2: $("#address2").val(),
                          mphone: $("#mobilePhoneNumber").val(),
                          mtel: $("#telephoneNumber").val(),
                          memail: $("#emailAddress").val(),
                          mtosno: $("#checkYN").val()

                        },
                        error: function (request, status, error) {
                          layerAlert("예상치 못한 오류가 발생하였습니다.</br>" + "다시 시도해 주시기 바랍니다.");
                          console.log($("#checkYN").val());
                          console.log("code:" + request.status + "\n\n\n\n" + "message:" + request.responseText +
                            "\n\n\n\n" + "error:" + error);
                        },
                        success: function (result) {
                          if (result == "SUCCESS") {
                            console.log("아니지2");
                            var lc = new layerAlert('입력하신 정보가 변경완료 되었습니다.');

                            lc.confirmAction = function () {
                              location.href = "/mypage/myorders2";
                            };
                          } else {
                            console.log("아니지");
                            layerAlert("예상치 못한 오류가 발생하였습니다.</br>" + "다시 시도해 주시기 바랍니다.");
                          }
                        }
                      });
                    }
                  });

                  $("#memberSecessionBtn").click(function () {
                    $.ajax({
                      type: "POST",
                      url: "/mypage/setSessionAuth",
                      dataType: "json",
                      async: false,
                      cache: false,
                      data: $("#sessionAuthForm").serialize(),
                      success: function (data) {
                        if (data == "true") {
                          var selectTypeYn = "Y";
                          if (selectTypeYn == 'Y') {
                            location.href = "/mypage/memberSecessionType";
                          } else {
                            location.href = "/mypage/memberSecession";
                          }
                        }
                      },
                      error: function (xhr, Status, error) {
                        alert('sendRequest error : ' + xhr.status + " ( " + error + " ) ");
                      }
                    });
                  });


                  $("#email,#emailDomain").keypress(function (event) {
                    if (event.which == 32) {
                      return false;
                    }

                  });


                  /*
                   *	비밀번호 변경 Layer Popup관련 Script	
                   */
                  var $t = null;


                  $("#hpPwChangeBtn").click(function () {
                    $t = layerChangPopup('hpPwSearchPop');
                    $t.find('#hpConfirmBtn').click(function () {
                      $t.find('.btn_close').click();
                      var newWindow = window.open("about:blank");
                      newWindow.location.href = "https://www.h-point.co.kr/cu/mem/showCustInfo.shd";
                    });
                  });


                  $("#newPassword")
                    .keypress(
                      function (event) {

                        if (capsLock(event)) {
                          $("#newPasswordDubMsg")
                            .text(
                              "<Caps Lock>이 켜져 있습니다.");
                        } else {
                          $("#pwcapsLockMsg")
                            .text("");
                        }
                        if ($("#newPassword").val().length > 0)
                          $("#newPasswordDubMsg")
                            .text(
                              "비밀번호는 8~15자리 이하로 영문/숫자/특수문자를 혼합해주세요");
                      });

                  $("#newPassword")
                    .focus(
                      function (event) {
                        $("#newPasswordDubMsg")
                          .text(
                            "비밀번호는 8~15자리 이하로 영문/숫자/특수문자를 혼합해주세요");
                      });

                  $("#newPassword")
                    .blur(
                      function () {
                        if ($(this).val().length > 0) {
                          var pwRegExp =
                            /^(?=.*[a-zA-Z])(?=.*[\?\<\>\;\:\'\"\`\(\)\{\}\[\]\|\\\~\,\.!@#$%^*+=-])(?=.*[0-9]).{8,15}$/;
                          if (!pwRegExp.test($(this)
                            .val())) {
                            $("#newPasswordDubMsg")
                              .text(
                                "비밀번호는 8~15자리 이하로 영문/숫자/특수문자를 혼합해주세요");
                            $("#pwTypeChk").val("");
                            return true;
                          }
                          $("#pwTypeChk").val("Y");
                          $("#newPasswordDubMsg").text("");
                          $("#newPasswordDubMsg").text("");
                          $("#passWordConfirmCheck").val("");
                        }
                      });

                  $("#newPasswordConfirm")
                    .keypress(
                      function (event) {

                        if (capsLock(event)) {
                          $("#pwcCapsLockMsg")
                            .text(
                              "<Caps Lock>이 켜져 있습니다.");
                        } else {
                          $("#pwcCapsLockMsg").text(
                            "");
                        }

                        if ($("#newPasswordConfirm").val().length > 0)
                          $("#newPasswordConfirmDubMsg")
                            .text(
                              "비밀번호는 8~15자리 이하로 영문/숫자/특수문자를 혼합해주세요");

                      });

                  $("#newPasswordConfirm")
                    .focus(
                      function (event) {
                        $("#newPasswordConfirmDubMsg")
                          .text(
                            "비밀번호는 8~15자리 이하로 영문/숫자/특수문자를 혼합해주세요");

                      });

                  $("#newPasswordConfirm").blur(function () {
                    if ($("#newPassword").val() != $("#newPasswordConfirm").val()) {
                      $("#newPasswordConfirmDubMsg").text("비밀번호가 일치하지 않습니다");
                      //$("#passWordConfirmCheck").val("");
                      //$("#pwc").val("");
                      return true;
                    }
                    if ($("#newPassword").val() != "") {
                      $("#passWordConfirmCheck").val("Y");
                      $("#newPasswordConfirmDubMsg").text("비밀번호가 확인되었습니다.");
                    }
                  });

                  $('#newPasswordConfirm').keyup(function () {
                    var newPwVal = $t.find('#newPassword').val();
                    var newPwConfVal = $t.find('#newPasswordConfirm').val();

                    if (newPwConfVal.length >= newPwVal.length) {
                      if (newPwVal == newPwConfVal && newPwVal != "") {
                        $t.find("#passWordConfirmCheck").val("Y");
                        $t.find("#newPasswordConfirmDubMsg").text("비밀번호가 확인되었습니다."); //다국어 : 비밀번호가 확인되었습니다.
                        $t.find('#newPasswordConfirm').blur();
                      } else {
                        $t.find("#passWordConfirmCheck").val("N");
                        if (newPwVal == "") {
                          $t.find("#newPasswordDubMsg").text("필수항목을 입력하시길 바랍니다."); //다국어 : 필수항목을 입력하시길 바랍니다.
                          $t.find('#newPassword').focus();
                        } else if (newPwConfVal == "") {
                          $t.find("#newPasswordConfirmDubMsg").text("필수항목을 입력하시길 바랍니다."); //다국어 : 필수항목을 입력하시길 바랍니다.
                          $t.find('#newPasswordConfirm').focus();
                        } else {
                          $t.find("#newPasswordConfirmDubMsg").text("비밀번호가 일치하지 않습니다."); //다국어 : 비밀번호가 일치하지 않습니다.
                          $t.find('#newPasswordConfirm').val("");
                          $t.find('#newPasswordConfirm').focus();
                        }
                      }
                    }
                  });


                  $("#pwChangeBtn").click(function () {
                    $t = layerChangPopup('pwSearchPop');
                    $t.find("#newPasswordDubMsg, #newPasswordConfirmDubMsg").text(
                      "비밀번호는 8~15자리 이하로 영문/숫자/특수문자를 혼합해주세요."); //다국어 : 비밀번호는 8~15자리 이하로 영문/숫자/특수문자를 혼합해주세요.
                    $t.find("#oldPassword").focus();
                    passwordDataValidationCheck('newPassword', 'newPasswordDubMsg');
                    passwordDataValidationCheck('newPasswordConfirm', 'newPasswordConfirmDubMsg');



                    $t.find('#newPassword').change(function () {
                      if ($t.find("#newPassword").val() == "") {
                        $t.find("#newPasswordDubMsg").text("필수항목을 입력하시길 바랍니다."); //다국어 : 필수항목을 입력하시길 바랍니다.
                        $t.find("#newPassword").focus();
                      } else if (!pwRegExp.test($(this).val())) {
                        $t.find('#newPasswordDubMsg').text(
                          "비밀번호는 8~15자리 이하로 영문/숫자/특수문자를 혼합해주세요."); //다국어 : 비밀번호는 8~15자리 이하로 영문/숫자/특수문자를 혼합해주세요.
                        $t.find('#newPassword').focus();
                      }
                    });

                    $t.find('#newPasswordConfirm').keyup(function () {
                      var newPwVal = $t.find('#newPassword').val();
                      var newPwConfVal = $t.find('#newPasswordConfirm').val();

                      if (newPwConfVal.length >= newPwVal.length) {
                        if (newPwVal == newPwConfVal && newPwVal != "") {
                          $t.find("#passWordConfirmCheck").val("Y");
                          $t.find("#newPasswordConfirmDubMsg").text("비밀번호가 확인되었습니다."); //다국어 : 비밀번호가 확인되었습니다.
                          $t.find('#newPasswordConfirm').blur();
                        } else {
                          $t.find("#passWordConfirmCheck").val("N");
                          if (newPwVal == "") {
                            $t.find("#newPasswordDubMsg").text("필수항목을 입력하시길 바랍니다."); //다국어 : 필수항목을 입력하시길 바랍니다.
                            $t.find('#newPassword').focus();
                          } else if (newPwConfVal == "") {
                            $t.find("#newPasswordConfirmDubMsg").text(
                              "필수항목을 입력하시길 바랍니다."); //다국어 : 필수항목을 입력하시길 바랍니다.
                            $t.find('#newPasswordConfirm').focus();
                          } else {
                            $t.find("#newPasswordConfirmDubMsg").text("비밀번호가 일치하지 않습니다."); //다국어 : 비밀번호가 일치하지 않습니다.
                            $t.find('#newPasswordConfirm').val("");
                            $t.find('#newPasswordConfirm').focus();
                          }
                        }
                      }
                    });

                    $t.find('#cancelBtn').click(function () {

                      $t.find('.btn_close').click();
                    });


                    $t.find('#confirmBtn').click(function () {


                      var newPassword = $t.find('#newPassword').val();
                      var newPasswordLength = parseInt(newPassword.length);


                      var newPasswordDubMsg = $t.find('#newPasswordDubMsg').text();


                      if (newPasswordDubMsg != "비밀번호는 8~15자리 이하로 영문/숫자/특수문자를 혼합해주세요.") {
                        $t.find("#newPassword").focus();
                        $t.find("#newPasswordConfirm").val("");
                        return;
                      }


                      if ($t.find("#newPasswordConfirm").val() == "") {
                        $t.find("#newPasswordConfirmDubMsg").text("필수항목을 입력하시길 바랍니다."); //다국어 : 필수항목을 입력하시길 바랍니다.
                        $t.find("#newPasswordConfirm").focus();
                      } else if ($t.find("#passWordConfirmCheck").val() != "Y") {
                        $t.find("#newPasswordConfirmDubMsg").text("비밀번호가 일치하지 않습니다."); //다국어 : 비밀번호가 일치하지 않습니다.
                        $t.find('#newPasswordConfirm').val("");
                        $t.find('#newPasswordConfirm').focus();
                      }
                      // 새비밀번호 길이체크 (TRUE: 8<=newPassword<=15) [2017.01.06 - 이현승]
                      else if (newPasswordLength < 8 || newPasswordLength > 15) {
                        $t.find('#newPasswordDubMsg').text(
                          "비밀번호는 8~15자리 이하로 영문/숫자/특수문자를 혼합해주세요."); //다국어 : 비밀번호는 8~15자리 이하로 영문/숫자/특수문자를 혼합해주세요.
                        $t.find('#newPassword').focus();
                        $t.find("#newPasswordConfirm").val("");
                      }
                      // 영문/숫자/특수문자 혼합문자열 확인. [2017.01.06 - 이현승]
                      else if (!pwRegExp.test(newPassword)) {
                        $t.find('#newPasswordDubMsg').text(
                          "비밀번호는 8~15자리 이하로 영문/숫자/특수문자를 혼합해주세요."); //다국어 : 비밀번호는 8~15자리 이하로 영문/숫자/특수문자를 혼합해주세요.
                        $t.find('#newPassword').focus();
                        $t.find("#newPasswordConfirm").val("");
                      } else {
                        // 새비밀번호 연속/동일 문자열 체크
                        var concatechk = parseInt(newPasswordConcateCheck(newPassword));

                        if (concatechk == -1) {
                          $t.find('#newPasswordDubMsg').text(
                            "동일문자를 3번 이상 사용할 수 없습니다."); //다국어 : 동일문자를 3번 이상 사용할 수 없습니다.
                          $t.find('#newPassword').focus();
                          $t.find("#newPasswordConfirm").val("");
                          return;
                        } else if (concatechk == -2) {
                          $t.find('#newPasswordDubMsg').text(
                            "연속된 문자열(123 또는 321, abc, cba 등) 3자리이상 올 수 없습니다."
                          ); //다국어 : 연속된 문자열(123 또는 321, abc, cba 등)을 3자리이상 올 수 없습니다.
                          $t.find('#newPassword').focus();
                          $t.find("#newPasswordConfirm").val("");
                          return;
                        }

                        $.ajax({
                          type: "GET",
                          url: "/mypage/passwordControll",
                          dataType: "json",
                          data: {
                            "inputPW": $t.find("#newPasswordConfirm").val(),
                            "prk": prk
                          },
                          success: function (response) {
                            if (response == true) {
                              var la = new layerAlert("비밀번호 변경이 완료 되었습니다. "); //다국어 : 비밀번호 변경이 완료되었습니다.
                              la.confirmAction = function () {
                                $t.find('.btn_close').click();
                              };
                            } else {
                              layerAlert("비밀번호 변경에 실패하였습니다."); //다국어 : 비밀번호 변경에 실패하였습니다.
                            }
                          },
                          error: function (e) {
                            alert(e);
                          }
                        });
                        /* var pwc = new passwordControll("save", $t.find("#newPasswordConfirm").val(), "8943255912452");
                          pwc.trueAction = function()
                          {	
                            var la = new layerAlert("비밀번호 변경이 완료 되었습니다. ");		//다국어 : 비밀번호 변경이 완료되었습니다.
                          la.confirmAction = function()
                          {	
                            $t.find('.btn_close').click();
                          };
                          };
                          pwc.falseAction = function()
                          {	
                            layerAlert("비밀번호 변경에 실패하였습니다.");		//다국어 : 비밀번호 변경에 실패하였습니다.
                          }; */
                      }
                    });
                  });

                  var passwordDataValidationCheck = function (fid, msgid) {
                    var t = this;

                    this.notLockFn = function () {
                      //default do nothing. but you can do something!
                    };

                    $t.find('#' + fid).keypress(function (event) {

                      if (capsLock(event)) {
                        $t.find('#' + msgid).text("Caps Lock 이 켜져 있습니다."); //다국어 : <Caps Lock>이 켜져 있습니다.
                        return false;
                      }
                      $t.find('#' + msgid).text(
                        "비밀번호는 8~15자리 이하로 영문/숫자/특수문자를 혼합해주세요."); //다국어 : 비밀번호는 8~15자리 이하로 영문/숫자/특수문자를 혼합해주세요.

                    });

                    $t.find('#' + fid).keyup(function (event) {

                      var inputdata = $t.find('#' + fid).val()

                      if (inputdata > 0) {
                        $t.find('#' + msgid).text(
                          "비밀번호는 8~15자리 이하로 영문/숫자/특수문자를 혼합해주세요."); //다국어 : 비밀번호는 8~15자리 이하로 영문/숫자/특수문자를 혼합해주세요.
                      }

                      var concatechk = parseInt(newPasswordConcateCheck(inputdata));

                      if (concatechk == -1) {
                        $t.find('#' + msgid).text("동일문자를 3번 이상 사용할 수 없습니다."); //다국어 : 동일문자를 3번 이상 사용할 수 없습니다.
                        return false;
                      } else if (concatechk == -2) {
                        $t.find('#' + msgid).text(
                          "연속된 문자열(123 또는 321, abc, cba 등) 3자리이상 올 수 없습니다."
                        ); //다국어 : 연속된 문자열(123 또는 321, abc, cba 등)을 3자리이상 올 수 없습니다.
                        return false;
                      } else {
                        t.notLockFn();
                      }
                    });
                  };

                  $("#selDay option:eq(0)").prop("selected", true);
                });

                //회원변경시에만 사용되는 블라인드 영역을 클릭해도 팝업이 안닫히도록 수정
                var layerChangPopup = function (layerId) {

                  var PARAMS = {};
                  PARAMS.layerId = layerId;
                  PARAMS.layer = $("#" + PARAMS.layerId);


                  this.openNewLayer = function () {

                    var tp = getMarginTop(PARAMS.layer.height());
                    if (tp < 0) tp = 0;

                    PARAMS.layer.css("top", tp).css("position", "absolute").css("z-index", 101);

                    var layerTag = '<div class="layerArea">';
                    layerTag += '<div class="layerBg"></div> ';
                    layerTag += '</div>';

                    var thisLayer = $(layerTag).appendTo($('body')).append(PARAMS.layer.clone().show());
                    var existedStyle = $('body').attr('style') || '';
                    if (existedStyle) {
                      existedStyle += ';';
                    }
                    $('body').attr('style', existedStyle + 'overflow:hidden !important');


                    thisLayer.find('.btn_close, .okBtn').click(function () {
                      //$('body').css('overflow', '');
                      $('body').attr('style', existedStyle);
                      thisLayer.remove();
                      return false;
                    });

                    return thisLayer;
                  };

                  return this.openNewLayer();
                };


                /*
                 * [2017.01.06 - 이현승] 연속문자열 검사
                 */
                function newPasswordConcateCheck(inputdata) {

                  var returnVal = 0;

                  var SamePass_0 = 0; // 동일문자 카운트
                  var SamePass_1 = 0; // 연속성(+) 카운드
                  var SamePass_2 = 0; // 연속성(-) 카운드

                  for (var i = 0; i < inputdata.length; i++) { // 4자리
                    var chr_pass_0 = inputdata.charCodeAt(i - 2); //3);
                    var chr_pass_1 = inputdata.charCodeAt(i - 1); //2);
                    var chr_pass_2 = inputdata.charCodeAt(i); // - 1);

                    if (i > 1) {
                      // 동일문자 카운트
                      if ((chr_pass_0 == chr_pass_1) && (chr_pass_1 == chr_pass_2)) {
                        SamePass_0++;
                      } else {
                        SamePass_0 = 0;
                      }

                      // 연속성(+) 카운드
                      if (chr_pass_0 - chr_pass_1 == 1 && chr_pass_1 - chr_pass_2 == 1) {
                        SamePass_1++;
                      } else {
                        SamePass_1 = 0;
                      }

                      // 연속성(-) 카운드
                      if (chr_pass_0 - chr_pass_1 == -1 && chr_pass_1 - chr_pass_2 == -1) {
                        SamePass_2++;
                      } else {
                        SamePass_2 = 0;
                      }
                    }

                    if (SamePass_0 > 0) {
                      // 다국어 : 동일문자를 3번 이상 사용할 수 없습니다.
                      returnVal = -1;
                    } else if (SamePass_1 > 0 || SamePass_2 > 0) {
                      // 다국어 : 연속된 문자열(123 또는 321, abc, cba 등)을 3자리이상 올 수 없습니다. 
                      returnVal = -2;
                    }
                  }
                  return returnVal;
                }
        //]]>
              </script>
              <form id="updateProfileForm" action="/mypage/personInfomationChange" method="post"><input type="hidden"
                  name="prk" id="prk" value="8943255912452">
                <input type="hidden" name="emailDuplChk" id="emailDuplChk" value="Y" title="이메일 중복">
                <input type="hidden" id="emailAddress" name="emailAddress" value="">
                <input type="hidden" id="mobilePhoneNumber" name="mobilePhoneNumber" value="">
                <input type="hidden" id="telephoneNumber" name="telephoneNumber" value="">
                <input type="hidden" id="checkYN" name="checkYN" value="0">
                <input type="hidden" id="mid" name="mid" value="${sessionScope.member.mid}">


                <!-- //lnbWrap -->
                <div>
                  <div class="title_wrap mt30">
                    <h4 class="float_left">개인정보 변경</h4>
                    <p class="txt_line">회원정보를 확인하고, 변경할 수 있습니다. </p>
                    <p class="reqd_txt"><strong class="reqd">*</strong> 표시는 필수항목입니다.</p>
                  </div>

                  <fieldset>
                    <legend>회원정보입력</legend>
                    <div class="tblwrap">
                      <table class="tbl_wtype1">
                        <caption>회원가입 입력항목</caption>
                        <colgroup>
                          <col style="width:140px">
                          <col>
                        </colgroup>
                        <tbody>
                          <tr>
                            <th scope="row" class="th_space">이름</th>
                            <td>${sessionScope.member.mname}</td>
                          </tr>
                          <tr>
                            <th scope="row" class="th_space">생년월일</th>
                            <td>${sessionScope.member.mbirth}</td>
                          </tr>
                          <tr>
                            <th scope="row" class="th_space">성별</th>
                            <td>
                              <c:if test="${sessionScope.member.mgender == 0}">남자</c:if>
                              <c:if test="${sessionScope.member.mgender == 1}">여자</c:if>
                            </td>
                          </tr>
                          <tr>
                            <th scope="row" class="th_space">아이디</th>
                            <td>
                              ${sessionScope.member.mid}</td>
                          </tr>
                          <tr>
                            <th scope="row"><strong class="reqd">*</strong><label for="oldPassword">기존 비밀번호 입력</label>
                            </th>
                            <td>
                              <input type="password" id="oldPassword" style="width:187px" title="기존 비밀번호 입력">
                              <span class="guide_comment" id="oldPasswordCheckMsg"></span>
                              <!-- <span class="guide_comment">기존 비밀번호가 일치 하지 않습니다.</span> -->
                            </td>
                          </tr>
                          <tr>
                            <th scope="row"><strong class="reqd">*</strong> <label for="newPassword">새 비밀번호 입력</label>
                            </th>
                            <td>
                              <input type="password" id="newPassword" style="width:187px" title="새 비밀번호 입력">
                              <span class="guide_comment" id="newPasswordDubMsg"></span>
                              <!-- <span class="guide_comment">비밀번호는 8~15자리 이하로 영문/숫자/특수문자를 혼합해주세요.</span> -->
                            </td>
                          </tr>
                          <tr>
                            <th scope="row"><strong class="reqd">*</strong> <label for="newPasswordConfirm">새 비밀번호
                                확인</label></th>
                            <td>
                              <input type="password" id="newPasswordConfirm" style="width:187px" title="새 비밀번호 확인">
                              <span class="guide_comment" id="newPasswordConfirmDubMsg"></span>
                              <!-- <span class="guide_comment">&lt;Caps Lock&gt;이 켜져 있습니다.</span> -->
                            </td>
                          </tr>
                          <tr>
                            <th scope="row" class="th_space"><label for="address">주소</label></th>
                            <td>
                              <input type="text" id="zipCode" name="zipCode" style="width:75px" value="" title="우편번호"
                                readonly=""><input type="button" value="우편번호 조회" class="btn add_s"
                                id="addrSearchBtn"><br>
                              <input type="text" id="address1" name="address1" style="width:100%;margin:5px 0" value=""
                                title="주소1" readonly="">
                              <input type="text" id="address2" name="address2" style="width:100%" value="" title="주소2">
                            </td>
                          </tr>
                          <tr>
                            <th scope="row"><strong class="reqd">*</strong> <label for="hp">휴대폰 번호</label></th>
                            <td>
                              <c:set var="mphone" value="${sessionScope.member.mphone}" />
                              <select style="width:80px" title="휴대폰 번호 앞자리" id="hp1">
                                <option value="010">010</option>
                                <option value="011">011</option>
                                <option value="016">016</option>
                                <option value="017">017</option>
                                <option value="018">018</option>
                                <option value="019">019</option>
                              </select>

                              <div class="form_hyphen">-</div>
                              <input type="text" id="hp2" class="hp_num1" value="${fn:substring(mphone,3,7) }"
                                title="휴대폰 번호 가운데자리" maxlength="4">
                              <div class="form_hyphen">-</div>
                              <input type="text" id="hp3" class="hp_num2" value="${fn:substring(mphone,7,12) }"
                                title="휴대폰 번호 뒷자리" numberonly="true" maxlength="4">
                              <span class="guide_comment" id="hpMsg"></span>
                            </td>
                          </tr>
                          <tr>
                            <th scope="row" class="th_space"><label for="ph">전화번호</label></th>
                            <td>
                              <select id="ph1" style="width:80px" title="전화번호 앞자리">
                                <option value="">선택</option>

                                <option value="02">02</option>
                                <option value="031">031</option>
                                <option value="032">032</option>
                                <option value="033">033</option>
                                <option value="041">041</option>
                                <option value="042">042</option>
                                <option value="043">043</option>
                                <option value="044">044</option>
                                <option value="051">051</option>
                                <option value="052">052</option>
                                <option value="053">053</option>
                                <option value="054">054</option>
                                <option value="055">055</option>
                                <option value="061">061</option>
                                <option value="062">062</option>
                                <option value="063">063</option>
                                <option value="064">064</option>
                              </select>
                              <div class="form_hyphen">-</div>
                              <input type="text" id="ph2" class="hp_num1" value="" title="전화번호 가운데" maxlength="4">
                              <div class="form_hyphen">-</div>
                              <input type="text" id="ph3" class="hp_num2" value="" title="전화번호 뒷자리" numberonly="true"
                                maxlength="4">
                            </td>
                          </tr>
                          <tr>
                            <th scope="row"><strong class="reqd">*</strong><label for="inforcvemail">정보
                                수신용<br>이메일</label></th>
                            <td>
                              <c:set var="email" value="${sessionScope.member.memail}" />
                              <input type="text" style="width:120px" title="이메일아이디" id="email"
                                value="${fn:split(email, '@')[0]}" />
                              <span class="andmail">@</span>
                              <select id="emailDomainSel" style="width:120px" title="이메일계정">
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
                              </select>
                              <input type="text" id="emailDomain" style="width: 120px; display: none;"
                                value="${fn:split(email, '@')[1]}" title="이메일 도메인">
                              <input type="button" class="btn add_s" id="emailDubChkBtn" value="중복확인">
                              <span class="guide_comment" id="emailMsg"></span>
                              <div class="wtype_comment pt10">
                                <span>정확한 이메일 정보를 입력하셔야 주문/배송 및 서비스정보를 받아 보실 수 있습니다.</span>
                              </div>
                            </td>
                          </tr>
                          <tr>
                            <th scope="row" class="th_space" style="line-height:20px;">개인정보 제3자<br>제공동의</th>
                            <td>
                              <div class="wtype_comment" style="padding-top:7px">
                                <input type="checkbox" id="agree_our_privacy">
                                <label for="agree_our_privacy">OUR LEGACY의 개인정보 제3자 제공에 동의합니다.</label>
                              </div>
                            </td>
                          </tr>

                        </tbody>
                      </table>
                    </div>
                  </fieldset>

                  <!-- btn_btwrap -->
                  <div class="btn_btwrap">
                    <input type="button" class="btn wt_ss" value="회원탈퇴" id="memberSecessionBtn">
                  </div>
                  <div class="btnwrap mypage2">
                    <input type="button" class="btn wt" value="취소" id="cancleBtn">
                    <input type="button" class="btn gray" value="변경사항 저장" id="saveBtn">
                  </div>
                  <!-- //btn_btwrap -->
                </div>
                <div>
                  <input type="hidden" name="CSRFToken" value="7c8df219-db35-4b57-9f12-3e2a690b0be8">
                </div>
              </form><!-- 다국어 한국 이외의 언어에서 사용 -->

            </div>
        </div>
      </div>
      <div class="layerArea" id="layerPinfoAgree" style="display:none; z-index:10000; position:fixed;">
        <div class="layerBg"></div>

        <div class="popwrap pop_pinfo_agree">
          <!-- Title1 -->
          <div class="pop_tltwrap2">
            <h1 style="padding-top: 15px;font-size: 19px;font-weight: 700;text-align: center;">개인정보 제3자 제공 동의
            </h1>
          </div>
          <!-- //Title1 -->
          <div class="pop_cnt ">
            ‘아워레가시’ 브랜드 정보 공유 및 마케팅 활용 목적으로 동의하신 고객님에 한하여 최소한의 개인정보가 제 3자에게 제공됩니다. <br>
            고객님께서는 개인정보 제 3자 제공에 대해 ‘동의’ 또는 ‘거부’를 선택할 수 있으며, 선택에 관계없이 제품 구매가 가능합니다. <br>
            개인정보 제공 관련 구체적인 내용은 아래와 같습니다.
            <ol class="">
              <li><strong>제공받는 자</strong> : 국내 소재 OUR LEGACY의 대리인<br>(한섬과 OUR LEGACY 독점 계약 종료 시 사업을 이어받을 국내 신규
                사업자)</li>
              <li><strong>제공 항목</strong> : 성명 및 이메일 주소</li>
              <li><strong>이용 목적</strong> : 마케팅 활용 및 브랜드 정보 공유</li>
              <li><strong>보유 및 이용기간</strong> : 회원탈퇴시 또는 동의 철회시까지</li>
            </ol>
            <div class="btnwrap">
              <input type="button" class="btn gray mr0" value="확인" onclick="$('.btn_close').click();">
            </div>
          </div>
          <!-- btn_close -->
          <a href="#;" class="btn_close">
            <img src="/_ui/desktop/common/images/popup/ico_close.png" alt="닫기">
          </a>
          <!-- //btn_close -->
        </div>
      </div>
      <div class="popwrap w_type_5" id="pwSearchPop"
        style="display: none; top: 341px; position: absolute; z-index: 101;">
        <input type="hidden" id="passWordConfirmCheck" name="passWordConfirmCheck" value="N">
        <!-- Title1 -->
        <div class="pop_tltwrap2">
          <h3>비밀번호 변경</h3>
        </div>
        <!-- //Title1 -->
        <div class="pop_cnt">
          <form id="pwChangeForm" action="#" method="post">
            <fieldset>
              <legend>비밀번호 변경 입력항목</legend>
              <div class="tblwrap">
                <table class="tbl_wtype1">
                  <caption>비밀번호 입력항목</caption>
                  <colgroup>
                    <col style="width:160px">
                    <col>
                  </colgroup>
                  <tbody>
                    <tr>
                      <th scope="row"><strong class="reqd">*</strong><label for="oldPassword">기존 비밀번호 입력</label>
                      </th>
                      <td>
                        <input type="password" id="oldPassword" style="width:187px" title="기존 비밀번호 입력">
                        <span class="guide_comment" id="oldPasswordCheckMsg"></span>
                        <!-- <span class="guide_comment">기존 비밀번호가 일치 하지 않습니다.</span> -->
                      </td>
                    </tr>
                    <tr>
                      <th scope="row"><strong class="reqd">*</strong> <label for="newPassword">새 비밀번호 입력</label>
                      </th>
                      <td>
                        <input type="password" id="newPassword" style="width:187px" title="새 비밀번호 입력">
                        <span class="guide_comment" id="newPasswordDubMsg"></span>
                        <!-- <span class="guide_comment">비밀번호는 8~15자리 이하로 영문/숫자/특수문자를 혼합해주세요.</span> -->
                      </td>
                    </tr>
                    <tr>
                      <th scope="row"><strong class="reqd">*</strong> <label for="newPasswordConfirm">새 비밀번호
                          확인</label></th>
                      <td>
                        <input type="password" id="newPasswordConfirm" style="width:187px" title="새 비밀번호 확인">
                        <span class="guide_comment" id="newPasswordConfirmDubMsg"></span>
                        <!-- <span class="guide_comment">&lt;Caps Lock&gt;이 켜져 있습니다.</span> -->
                      </td>
                    </tr>
                  </tbody>
                </table>
              </div>
              <div class="btnwrap">
                <input type="button" class="btn wt_s" id="cancelBtn" value="취소">
                <input type="button" class="btn gray_s" id="confirmBtn" value="확인">
              </div>
            </fieldset>
          </form>
        </div>
        <!-- btn_close -->
        <a href="#" class="btn_close" id="closeLayerPop"><img src="/_ui/desktop/common/images/popup/ico_close.png"
            alt="memberInfoChange.lang.change.password.close"></a>
        <!-- //btn_close -->
      </div>
      <div class="popwrap w_type_6" id="hpPwSearchPop" style="display:none;">
        <!-- Title1 -->
        <div class="pop_tltwrap2">
          <h3>비밀번호 변경</h3>
        </div>
        <!-- //Title1 -->
        <div class="pop_cnt">
          <div class="hpointPw">
            <p class="tit">회원님은 <span>H.Point</span> 멤버십 통합 회원입니다.</p>
            <ul>
              <li>• H.Point 멤버십 통합 회원님은 H.Point 사이트를 통하여 비밀번호 변경이 가능합니다.</li>
              <li>• 하단의 비밀번호 변경 신청 버튼을 클릭하시면 해당 사이트로 이동합니다.</li>
            </ul>
          </div>
          <div class="btnwrap">
            <input type="button" class="btn gray" id="hpConfirmBtn" value="비밀번호 변경 신청">
          </div>
        </div>
        <!-- btn_close -->
        <a href="#" class="btn_close" id="closeLayerPop"><img src="/_ui/desktop/common/images/popup/ico_close.png"
            alt="닫기"></a>
        <!-- //btn_close -->
      </div>
      <%@ include file="/WEB-INF/views/common/footer.jsp" %>