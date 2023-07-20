/*1. 공백없는 숫자와 대소문자

/^[a-zA-Z0-9]*$/


2. 공백포함 숫자와 대소문자

/^[a-zA-Z0-9 ]*$/


3. 한글포함 특수문자와 공백

/[^?a-zA-Z0-9/]/


4. 한글제외 특수문자와 공백

/[^-가-?a-zA-Z0-9/ ]/


5. 영문자, 소문자, 숫자, "-","_" 로만 구성된 길이 2~10자리 사이의 문자열

/^[a-z0-9_-]{2,10}$/


6. 19자리 숫자와 "-"로 구성된 신용카드 번호

/^[0-9-]{19}$/


7. 숫자로 구성된 4자리-4자리-4자리-4자리 유형 체크 (ex. 신용카드 번호)

/^[0-9]{4}[-\s\.]?[0-9]{4}[-\s\.]?[0-9]{4}[-\s\.]?[0-9]{4}$/


8. 영문자 대소문자, 숫자로만 구성

/[a-zA-Z0-9]/


9. 3자리-3~4자리-4자리(사이에 문자 아무거나 가능)

/^\d[3]-\d[3,4]-\d[4]$/


10. 일반 전화번호

/^\d{2,3}-\d{3,4}-\d{4}$/;




11. 휴대폰 번호

/^\d{3}-\d{3,4}-\d{4}$/;


12. 맥어드레스 체크

/^[a-fA-F0-9]{2}(:[a-fA-F0-9]{2}){5}$/


13. IP 주소 (IPv4)

/^(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$/


14. 일반 이메일 주소 체크

/^([a-z0-9_\.-]+)@([\da-z\.-]+)\.([a-z\.]{2,6})$/


15. 정밀한 이메일 주소 체크

/(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))/
let regex = new RegExp("([!#-'*+/-9=?A-Z^-~-]+(\.[!#-'*+/-9=?A-Z^-~-]+)*|\"\(\[\]!#-[^-~ \t]|(\\[\t -~]))+\")@([!#-'*+/-9=?A-Z^-~-]+(\.[!#-'*+/-9=?A-Z^-~-]+)*|\[[\t -Z^-~]*])");


    16. 최소 8자리 이상 영문 대소문자, 숫자, 특수문자가 각각 1개 이상 (패스워드 체크시 활용)

    /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$ %^&*-]).{8,}$/


    17. 최소 8자리 이상 숫자, 특수문자가 각각 1개 이상 (패스워드 체크시 활용)

    /^(?=.*?[0-9])(?=.*?[#?!@$ %^&*-]).{8,}$/


    18. URL 체크 (프로토콜 포함, ex) http://www.naver.com )

    /https?:\/\/(www\.)?[-a-zA-Z0-9@:%._\+~#=]{2,256}\.[a-z]{2,6}\b([-a-zA-Z0-9@:%_\+.~#()?&//=]*)/


    19. URL 체크 (프로토콜 옵션, ex) http://www.naver.com, www.naver.com)

    /(https?:\/\/)?(www\.)?[-a-zA-Z0-9@:%._\+~#=]{2,256}\.[a-z]{2,6}\b([-a-zA-Z0-9@:%_\+.~#?&//=]*)/


    20. HTML 태그인지 체크

    /^<([a-z]+)([^<]+)*(?:>(.*)<\/\1>|\s+\/>)$/


    21. 하이퍼링크 체크

    /(?!<a\sname=\"([\w\s\d\-\.\#]+)\"><\/a>)<a\sname=\"([\w\s\d\-\.\#]+)\">(.*?)<\/a>/


    22. 숫자인지 체크

    ^(\(?\+?[0-9]*\)?)?[0-9_\- \(\)]*$


    23. 웹사이트 링크인지 체크

    <a\s+(?:[^>]*)href=\"((?:https:\/\/|http:\/\/)(?:.*?))">(?:.*?)<\/a>


    24. 년월일 (yyyy-mm-dd) 체크

    /^(19|20)\d\d([- /.])(0[1-9]|1[012])\2(0[1-9]|[12][0-9]|3[01])$/


    25. 주민등록번호 체크

    /^[-A-Za-z0-9_]+[-A-Za-z0-9_.]*[@]{1}[-A-Za-z0-9_]+[-A-Za-z0-9_.]*[.]{1}[A-Za-z]{1,5}$/*/



    checkKorean = function (obj){
        // 한글
        myRe = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;


        if(myRe.test($.trim(obj.val())) == false){
            return false;
        }else{
            true;
         }
    }



    checkEmail = function (obj){
       myRe = /(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))/;

        if(myRe.test($.trim(obj.val())) == false){
            return false;
        }else{
            true;
        }
    }


// FORM NULLCHECK
// FORM NULLCHECK
// FORM NULLCHECK

validationNull = function(form) {
    var inputs = form.find("input");
    var isValid = true;

    inputs.each(function() {
        var obj = $(this);

        if ($.trim(obj.val()) === "") {
            obj.addClass("redPlaceholder");
            obj.css({
                animation: "horizontal-shaking .2s 2 ease"
            });
            obj.focus();
            isValid = false;
            setTimeout(function() {
                obj.removeClass("redPlaceholder");
                obj.css({animation: ""});
            }, 700);
        } else {
            obj.removeClass("redPlaceholder");
            obj.css({
                animation: ""
            });
        }
    });

    return isValid;
}
// FORM NULLCHECK
// FORM NULLCHECK

//  IF THERE IS ONE INPUT IN THE FORM, TRYING USING validationNull would return TRUE under no circumstances.

// INPUT NULLCHECK
// INPUT NULLCHECK
    validationNullEach = function(obj) {
        // 실제 체킹하는 소스가 들어가는 부분
        if ($.trim(obj.val()) == "" || $.trim(obj.val()) == null) {
            obj.addClass("redPlaceholder");
            obj.css({
                animation: "horizontal-shaking .2s 2 ease"
            });
            obj.focus();

            // Remove the shaking effect after a delay
            setTimeout(function() {
                obj.removeClass("redPlaceholder");
                obj.css({
                    animation: ""
                });
            }, 400); // Adjust the delay time if needed

            return false;

        } else {

            return true;
        }
    }

    // INPUT NULLCHECK
    // INPUT NULLCHECK




    // DUPLICATE CHECK
    // DUPLICATE CHECK
        checkId = function(e) {
            var userId = $("#user-id").val().trim();

            if (userId === "") {
                $('.id_ok').css("display", 'none');
                $('.id_already').css("display", 'none');
                return;
            }

            var email = $("input[name=email]").val();
            $.ajax({
                async: true,
                cache: false,
                url: "/idCheck",
                type: 'post',
                data: {"email": email},
                success: function(response) {
                    if(response.rt == "available") {
                        $('.id_ok').css("display", 'inline-block');
                        $('.id_already').css("display", "none");
                    } else {
                        $('.id_ok').css("display", 'none');
                        $('.id_already').css("display", "inline-block");
                    }
                }, error: function() { $(email).focus(); }
            });
        }
    // DUPLICATE CHECK
    // DUPLICATE CHECK

    // LOGOUT
    // LOGOUT

        logOut = function(){
            $.ajax({
                async: true
                ,cache: false
                ,type: "post"
                /* ,dataType:"json" */
                ,url: "/member/logout"
                /* ,data : $("#formLogin").serialize() */
                ,success: function(response) {
                    alert("success");
                    if(response.rt == "success") {
                        alert("로그아웃 되었습니다");
                        location.href = "/indexAdminView";
                    } else {
                    }
                }

                ,error : function(jqXHR, textStatus, errorThrown){
                    alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
                }
            });
        }
    // LOGOUT
    // LOGOUT
