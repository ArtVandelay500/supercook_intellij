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
                            $(".accordion-item").prepend(div1_h2);
                            const div2 = $("<div>", {
                                class: "accordion-collapse collapse",
                                id : i + "a",
                                "data-bs-parent": "#accordionFlushExample",
                                "aria-labelledby": i + "a",
                                "aria-controls": i + "a",
                                text: "부대찌개" // Set the button text here
                            });



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
