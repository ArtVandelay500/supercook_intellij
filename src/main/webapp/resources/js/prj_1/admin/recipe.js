$(function(){
    $("#modal").hide();
    $(".modalWindow").hide();
//Modal for Ingredient
//Modal for Ingredient
    $("#modalBtn").on("click",function(){
        $("#modal").fadeIn();
        setTimeout(function() {
            $(".modalBuild").fadeIn(); // FadeIn the #modalWindow w/ .2 delay
        }, 200);
    });

    $(".modalClose,.modalOk").on("click",function(e){
        console.log(e);
        setTimeout(function() {
            $("#modal").fadeOut(); // FadeOut the #modal w/ .2 delay
        }, 200);
        $(".modalBuild").fadeOut();
    });

//Modal for Ingredient
//Modal for Ingredient







// search ingredient and append it to the divBox
// search ingredient and append it to the divBox
// search ingredient and append it to the divBox
    // removing clicked div from the divs
    $(".closeBox").click(function(e){
        $(e.target.parentNode.offsetParent).remove();
    });
    $("input[name=shKey]").change(function(e) {
        if (e.keyCode === 13) {
            e.preventDefault();
        }
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

                    const list = response.listShKey;
                    $("#recipeIngRt").empty();
                    console.log("드디어 뭔가가 찍혀요!");
                    for(let i in list){

                        const basketItem = $("<div>").addClass("basketItem");
                        const input = $("<input class=\"searchInput_form\">");
                        const span = $("<span>").text(list[i].name);
                        const qty = $("<input>");
                        qty.attr({
                            name:"ingredientAmount",
                            type:"hidden"
                        });
                        input.on("input", function() {
                            span.text(list[i].name + "  " + input.val());
                            qty.val(input.val());
                        });
                        const seq = $("<input>");
                        seq.attr({
                            name:"ingredient_seq",
                            type:"hidden",
                            value:list[i].seq
                        });

                        const closeBox = $("<div>").addClass("closeBox");
                        const closeItem = $("<span>").addClass("material-symbols-outlined").text("close");
                        const addButton = $("<button>").attr("id", "basketDunk").addClass("detailBtn").text("추가");
                        closeBox.append(closeItem);
                        basketItem.append(span);
                        basketItem.append(seq);
                        // basketItem.append(ingBigCat);
                        basketItem.append(qty);
                        basketItem.append(closeBox);


                        // removing clicked div from the divs
                        closeBox.click(function(e){
                            $(e.target.parentNode.offsetParent).remove();
                        });
                        // append clicked div to the divs
                        addButton.click(function(e){
                            $(".basket ,.recipeBox").append(basketItem);
                        });


                        $("#recipeIngRt").append(
                            $("<tr>").append(
                                $("<td id=hasName>").text(list[i].name),
                                $("<td id=hasAmount>").append(input),
                                $("<td>").append(addButton)
                            )
                        );
                    }



                } else {
                    $('.login_no').css("opacity", "1");
                }
            },
            error: function (jqXHR, textStatus, errorThrown) {
                console.log("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
            }
        }); //AJAX tag
    }); // EVENT tag


//     테마@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
//     테마@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
//     $("input[name=shKey]").keyup(function() {
//         const shKey = $("input[name=shKey]").val();
//
//         $.ajax({
//             async: true,
//             cache: false,
//             type: "post",
//             url: "/searchTheme",
//             data: {
//                 "shKey": shKey
//             },
//             success: function (response) {
//                 if (response.rt == "success") {
//
//
//                     console.log("드디어 뭔가가 찍혀요!");
//                     const basketItem = $("<div>").addClass("basketItem");
//                     const input = $("<input class=\"searchInput_form\">");
//                     const span = $("<span>").text(response.listShKey[0].name);
//                     const seq = $("<input>");
//                     seq.attr({
//                         name:"ingredient_seq",
//                         type:"hidden",
//                         value:response.listShKey[0].seq
//                     });
//
//
//                     const closeBox = $("<div>").addClass("closeBox");
//                     const closeItem = $("<span>").addClass("material-symbols-outlined").text("close");
//                     const addButton = $("<button>").attr("id", "basketDunk").addClass("detailBtn").text("추가");
//                     closeBox.append(closeItem);
//                     basketItem.append(span);
//                     basketItem.append(seq);
//                     basketItem.append(closeBox);
//
//
//                     // removing clicked div from the divs
//                     closeBox.click(function(e){
//                         $(e.target.parentNode.offsetParent).remove();
//                     });
//                     // append clicked div to the divs
//                     addButton.click(function(e){
//                         $(".basket ,.recipeBox").append(basketItem);
//                     });
//
//                     $("#recipeThemeRt").empty();
//                     $("#recipeThemeRt").empty().append(
//                         $("<tr>").append(
//                             $("<td id=hasName>").text(response.listShKey[0].name),
//                             $("<td>").append(addButton)
//                         )
//                     );
//
//                 } else {
//                     $('.login_no').css("opacity", "1");
//                 }
//             },
//             error: function (jqXHR, textStatus, errorThrown) {
//                 console.log("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
//             }
//         }); //AJAX tag
//     }); // EVENT tag
// //     테마@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
// //     테마@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
//
// //     조리도구@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
// //     조리도구@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
//     $("input[name=shKey]").keyup(function() {
//         const shKey = $("input[name=shKey]").val();
//
//         $.ajax({
//             async: true,
//             cache: false,
//             type: "post",
//             url: "/searchTool",
//             data: {
//                 "shKey": shKey
//             },
//             success: function (response) {
//                 if (response.rt == "success") {
//
//
//                     console.log("드디어 뭔가가 찍혀요!");
//                     const basketItem = $("<div>").addClass("basketItem");
//                     const input = $("<input class=\"searchInput_form\">");
//                     const span = $("<span>").text(response.listShKey[0].name);
//
//                     const closeBox = $("<div>").addClass("closeBox");
//                     const closeItem = $("<span>").addClass("material-symbols-outlined").text("close");
//                     const addButton = $("<button>").attr("id", "basketDunk").addClass("detailBtn").text("추가");
//                     closeBox.append(closeItem);
//                     basketItem.append(span);
//                     basketItem.append(closeBox);
//
//
//                     // removing clicked div from the divs
//                     closeBox.click(function(e){
//                         $(e.target.parentNode.offsetParent).remove();
//                     });
//                     // append clicked div to the divs
//                     addButton.click(function(e){
//                         $(".basket ,.recipeBox").append(basketItem);
//                     });
//
//                     $("#recipeToolRt").empty();
//                     $("#recipeToolRt").empty().append(
//                         $("<tr>").append(
//                             $("<td id=hasName>").text(response.listShKey[0].name),
//                             $("<td>").append(addButton)
//                         )
//                     );
//
//                 } else {
//                     $('.login_no').css("opacity", "1");
//                 }
//             },
//             error: function (jqXHR, textStatus, errorThrown) {
//                 console.log("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
//             }
//         }); //AJAX tag
//     }); // EVENT tag
//     조리도구@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
//     조리도구@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

// search ingredient and append it to the divBox
// search ingredient and append it to the divBox
// search ingredient and append it to the divBox

});