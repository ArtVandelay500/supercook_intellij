$(function(){
    $("#modal").hide();
    $(".modalWindow").hide();

    $("#modalBtn").on("click",function(){
        $("#modal").fadeIn();
        setTimeout(function() {
            $(".modalBuild").fadeIn(); // FadeIn the #modalWindow w/ .2 delay
        }, 200);
    });

    $(".modalClose").on("click",function(e){
        console.log(e);
        setTimeout(function() {
            $("#modal").fadeOut(); // FadeOut the #modal w/ .2 delay
        }, 200);
        $(".modalBuild").fadeOut();
    });


// search ingredient and append it to the divBox
// search ingredient and append it to the divBox
// search ingredient and append it to the divBox

    $("input[name=shKey]").keyup(function() {
        const shKey = $("input[name=shKey]").val();

        $.ajax({
            async: true,
            cache: false,
            type: "post",
            url: "/searchIng",
            data: {
                "shKey": shKey
            },
            success: function (response) {
                if (response.rt == "success") {



                    console.log("드디어 뭔가가 찍혀요!");
                    const basketItem = $("<div>").addClass("basketItem");
                    const span = $("<span>").text(response.listShKey[0].name);
                    const seq = $("<input>");
                    seq.attr({
                        name:"ingredient_seq",
                        type:"hidden",
                        value:response.listShKey[0].seq
                    });
                    const closeBox = $("<div>").addClass("closeBox");
                    const closeItem = $("<span>").addClass("material-symbols-outlined").text("close");
                    const addButton = $("<button>").attr("id", "basketDunk").addClass("detailBtn").text("추가");
                    closeBox.append(closeItem);
                    basketItem.append(span);
                    basketItem.append(seq);
                    basketItem.append(closeBox);


                    // removing clicked div from the divs
                    closeBox.click(function(e){
                        $(e.target.parentNode.offsetParent).remove();
                        alert("delete");
                    });
                    // append clicked div to the divs
                    addButton.click(function(e){
                        $(".basket ,.recipeBox").append(basketItem);
                    });



                    $("#recipeIngRt").empty();
                    $("#recipeIngRt").empty().append(
                        $("<tr>").append(
                            $("<td id=hasName>").text(response.listShKey[0].name),
                            $("<td>").append(addButton)
                        )
                    );

                } else {
                    $('.login_no').css("opacity", "1");
                }
            },
            error: function (jqXHR, textStatus, errorThrown) {
                console.log("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
            }
        }); //AJAX tag
    }); // EVENT tag

// search ingredient and append it to the divBox
// search ingredient and append it to the divBox
// search ingredient and append it to the divBox

});