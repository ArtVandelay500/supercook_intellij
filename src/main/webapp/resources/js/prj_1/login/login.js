$(function(){
    $("#login").on("click", function(e) {
        var form = $("#loginForm");

        if (validationNull(form)) {
            $.ajax({
                async: true,
                cache: false,
                type: "post",
                url: "/member/login",
                data: {
                    "email": form.find("input[name=email]").val(),
                    "pwd": form.find("input[name=pwd]").val()
                },
                success: function(response) {
                    if (response.rt == "success") {
                        location.href = "/indexUserView";
                    } else {
                        $('.login_no').css("opacity", "1");
                    }
                },
                error: function(jqXHR, textStatus, errorThrown) {
                    alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
                }
            }); //AJAX tag
        }
    });


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
                if(response.rt == "success") {
                    location.href = "/loginAdmin";
                } else {
                }
            }

            ,error : function(jqXHR, textStatus, errorThrown){
                alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
            }
        });
    }

    logOutUser = function(){
        $.ajax({
            async: true
            ,cache: false
            ,type: "post"
            /* ,dataType:"json" */
            ,url: "/member/logout"
            /* ,data : $("#formLogin").serialize() */
            ,success: function(response) {
                if(response.rt == "success") {
                    location.href = "/login";
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




});

