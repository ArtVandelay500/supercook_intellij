$(function(){
    $("input[name=shKey]").keyup(function() {
        const shKey = $("input[name=shKey]").val();

        $.ajax({
            async: true,
            cache: false,
            type: "post",
            url: "/searchRecipe",
            data: {
                "shKey": shKey
            },
            success: function (response) {
                //결과창 리셋
                $(".resultCnt").empty();
                if (response.rt == "success") {
                    //결과 몇개나왔는지
                    const resultCnt = $("<h2>").html(response.resultCnt + " Recipes Found :");
                    $(".resultCnt").append(resultCnt);

                    //레시피 이름

                    list = response.listShKey;
                    console.log(list.length);
                    for(let i in list){
                       recipeName = list[i].recipeName;
                       recipeTitle =  list[i].recipeTitle;
                       //BOOTSTRAP ACCORDION ASSEMBLY STARTS
                       //BOOTSTRAP ACCORDION ASSEMBLY STARTS
                        div0 = $("<div>").addClass("ccordion-item");
                        div1 = $("<div>").addClass("accordion-item");
                        div1_h2 = $("<h2>").addClass("accordion-header");
                        div1_h2 = $("<h2>").attr("id","flush-headingOne");
                        div1_button = $("button").addClass("accordion-button collapsed");
                        div1_button = $("button").prop("type","button");
                        div1_button = $("button").data("bs-toggle","collapse");
                        div1_button = $("button").data("bs-target","#flush-collapseOne");
                        div1_button = $("button").attr("aria-expanded","false");
                        div1_button = $("button").attr("aria-controls","flush-collapseOne");
                        div1_button = $("button").text(recipeName);
                        //Assembling div1
                        div1_h2.append(div1_button);
                        div1.append(div1_h2);
                        //To the main div
                        div0.append(div1);

                        div2 = $("<div>").attr("id","flush-collapseOne")



                       //BOOTSTRAP ACCORDION ASSEMBLY ENDS
                       //BOOTSTRAP ACCORDION ASSEMBLY ENDS

                    }

                } else {
                }
            },
            error: function (jqXHR, textStatus, errorThrown) {
                console.log("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
            }
        }); //AJAX tag
    }); // EVENT tag
});// FUNCTION tag
