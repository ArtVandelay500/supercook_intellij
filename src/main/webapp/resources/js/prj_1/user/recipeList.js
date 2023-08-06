$(function(){
    $("input[name=shKey]").keypress(function(e) {
        if(e.which == 13){
            e.preventDefault();
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
                            console.log(i);
                            recipeName = list[i].recipeName;
                            recipeTitle =  list[i].recipeTitle;
                            //BOOTSTRAP ACCORDION ASSEMBLY STARTS
                            //BOOTSTRAP ACCORDION ASSEMBLY STARTS
                            div1 = $("<div>").addClass("accordion-item");
                            div1_h2 = $("<h2>").addClass("accordion-header");
                            div1_h2 = $("<h2>").attr("id","flush-heading");
                            const div1_button = $("<button>", {
                                class: "accordion-button collapsed",
                                type: "button",
                                "data-bs-toggle": "collapse",
                                "data-bs-target": "#" + i + "a",
                                "aria-expanded": "false",
                                "aria-controls": i + "a",
                                text: "부대찌개" // Set the button text here
                            });
                            //Assembling div1
                            div1_h2.append(div1_button);
                            //To the main div
                            // div1.append(div1_h2);
                            $(".accordion-item").append(div1_h2);

                            //div2
                            const div2 = $("<div>", {
                                class: "accordion-collapse collapse",
                                id : i + "a",
                                "data-bs-parent": "#accordionFlushExample",
                                "aria-labelledby": i + "a"
                            });
                            const div3 = $("<div>").addClass("accordion-body");
                            const div4 = $("<div>").addClass("recipeBody");

                            //RecipeHeader
                            //RecipeHeader
                                const div5 = $("<div>").addClass("recipeBody_header");
                                const div6 = $("<div>").addClass("recipeHeader_imgBox");
                                const div6_img = $("<img>").attr("src","");
                                div6.append(div6_img);
                                const div5_h4 = $("<h4>").html();
                                const div7 = $("<div>").addClass("recipeHeader_misc");
                                //몇인분?
                                const div7_1 = $("<div>").addClass("recipeHeader_misc-item recipeHeader_misc-serving");
                                const div7_1_span_1 = $("<span>").addClass("material-symbols-outlined").text("group");
                                const div7_1_span_2 = $("<span>").text("");
                                div7_1.append(div7_1_span_1);
                                div7_1.append(div7_1_span_2);
                                //얼마나 걸려?
                                const div7_2 = $("<div>").addClass("recipeHeader_misc-item recipeHeader_misc-prepTime");
                                const div7_2_span_1 = $("<span>").addClass("material-symbols-outlined").text("alarm");
                                const div7_2_span_2 = $("<span>").text("");
                                div7_2.append(div7_2_span_1);
                                div7_2.append(div7_2_span_2);
                                //난이도는?
                                const div7_3 = $("<div>").addClass("recipeHeader_misc-item recipeHeader_misc-difficulty");
                                const div7_3_span_1 = $("<span>").addClass("material-symbols-outlined").text("hotel_class");
                                const div7_3_span_2 = $("<span>").text("");
                                div7_3.append(div7_3_span_1);
                                div7_3.append(div7_3_span_2);
                                div7.append(div7_1);
                                div7.append(div7_2);
                                div7.append(div7_3);
                                div5.append(div6);
                                div5.append(div5_h4);
                                div5.append(div7);
                            //RecipeHeader
                            //RecipeHeader
                                const div8 = $("<div>").addClass("recipeBody_body");
                                const div8_1 = $("<div>").addClass("ingredientList_head");
                                const div8_1_h4 = $("<h4>").text("- 재료");
                                div8_1.append(div8_1_h4);
                                const div8_2 = $("<div>").addClass("recipeBody_body-ingredientList");
                                const div8_2_1 = $("<div>").addClass("ingredientList_body");
                            //RecipeBody
                            //RecipeBody


                            //RecipeBody
                            //RecipeBody




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
        }//if

    }); // EVENT tag
});// FUNCTION tag
