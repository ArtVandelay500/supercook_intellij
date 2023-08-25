$(function(){
    $("input[name=shKey]").keypress(function(e) {
        if(e.which == 13){
            e.preventDefault();

            // Show the loading circle while the AJAX request is loading
    $("#accordionFlushExample").empty();
            const shKey = $("input[name=shKey]").val();

            //검색 후 로딩창과 'searching' 띄워줌
            $(".resultCnt").empty();
            const resultCnt = $("<h2>").html("SEARCHING");
            $(".resultCnt").append(resultCnt);
            $(".loader").show();

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
                    //결과 레시피 리셋
                    $("#accordionFlushExample").empty();
                    if (response.rt == "success") {

                        if(response.resultCnt == 0){
                            const resultCnt = $("<h2>").html(shKey + "가 들어간 레시피는 없습니다");
                            $(".resultCnt").append(resultCnt);
                            $(".loader").hide();
                        }else if(response.resultCnt == 1) {
                            const resultCnt = $("<h2>").html(response.resultCnt + " Recipe Found :");
                            $(".resultCnt").append(resultCnt);
                        }else{
                            const resultCnt = $("<h2>").html(response.resultCnt + " Recipes Found :");
                            $(".resultCnt").append(resultCnt);
                        }
                        //결과 몇개나왔는지


                        //레시피 이름

                        list = response.listShKey;
                        listIng = response.listShKeyIng;
                        console.log(list.length);
                        for(let i in list){
                            console.log("지금은 "+i+"번째 레시피 차례입니다!!");
                            recipeName = list[i].recipeName;
                            recipeTitle =  list[i].recipeTitle;
                            recipeSource =  list[i].recipeSource;
                            likeCnt =  list[i].likeCnt;
                            src = list[i].path + list[i].uuidName;
                            recipeServing = list[i].recipeServing;
                            recipePrepTime = list[i].recipePrepTime;
                            recipeLevel = list[i].recipeLevel;
                            recipeUrl = list[i].recipeUrl;
                            //BOOTSTRAP ACCORDION ASSEMBLY STARTS
                            //BOOTSTRAP ACCORDION ASSEMBLY STARTS
                            div0 = $("<div>").attr("id","accordionFlushExample");
                            div1 = $("<div>").addClass("accordion-item");
                            div1_h2 = $("<h2>").addClass("accordion-header");
                            div1_h2 = $("<h2>").attr("id","flush-heading");
                            //좋아요 하트 시작
                            //좋아요 하트 시작
                            var spanEmoti = $("<span>").addClass("img_emoti").text("좋아요");
                            var spanHeart = $("<span>").addClass("ani_heart_m");
                            //안 채워진 하트일 시: class=btn_unlike spanClass: hi;
                            likeBtnBox = $("<div>").addClass("likeBtnBox");
                            likeBtn = $("<button>").attr("type", "button").addClass("btn_like");
                            if(likeCnt == "1"){
                                console.log("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@")
                                console.log("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@")
                                console.log(likeCnt)
                                console.log("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@")
                                console.log("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@")
                                likeBtn.addClass("btn_unlike");
                            }

                            likeBtn.append(spanEmoti, spanHeart);
                            likeBtnBox.append(likeBtn);
                            likeBtn .click(function() {
                                click4Luv(this);
                                likeUp();
                                function click4Luv(button) {
                                    if ($(button).hasClass('btn_unlike')) {
                                        $(button).removeClass('btn_unlike');
                                        $(button).find('.ani_heart_m').removeClass('hi');
                                        $(button).find('.ani_heart_m').addClass('bye');
                                    } else {
                                        $(button).addClass('btn_unlike');
                                        $(button).find('.ani_heart_m').addClass('hi');
                                        $(button).find('.ani_heart_m').removeClass('bye');
                                    }
                                }// Pass the clicked button as an argument
                            });
                            function likeUp(e){
                                $.ajax({
                                    async: true,
                                    cache: false,
                                    type: "post",
                                    url: "/likeUp",
                                    data: {
                                        "recipe_seq": list[i].seq,
                                    },
                                    success: function(response) {
                                    },
                                    error: function(jqXHR, textStatus, errorThrown) {
                                        alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
                                    }
                                });
                            }




                            //좋아요 하트 끝
                            //좋아요 하트 끝


                            //레시피 사이트 로고 시작
                            //레시피 사이트 로고 시작
                            sourceLogoBox = $("<div>").css({
                                width: "40px",
                                height: "40px",
                                borderRadius: "50%",
                                border:"2px solid white",
                                boxSizing:"border-box",
                                overflow:"hidden",
                                marginRight:"10px",
                                display:"flex",
                                alignItems:"center",
                                justifyContent:"center"
                            });
                            sourceLogoImg = $("<img>");
                            sourceLogoImg.css({
                                width: "120%",
                                objectFit: "cover"
                            });
                            //레시피 사이트 로고 끝
                            //레시피 사이트 로고 끝
                            if (recipeSource == 84){
                                sourceLogoImg.attr("src","/resources/img/prj_1/sourceLogo/tstory.png");
                            }else if(recipeSource == 85){
                                sourceLogoImg.attr("src","/resources/img/prj_1/sourceLogo/naver.png");
                            }else if(recipeSource == 86){
                                sourceLogoImg.attr("src","/resources/img/prj_1/sourceLogo/daum.png");
                            }else if(recipeSource == 87){
                                sourceLogoImg.attr("src","/resources/img/prj_1/sourceLogo/10000recipe.png");
                            }
                            sourceLogoBox.append(sourceLogoImg);
                            const recipeNameSpan = $("<span>").css({height:".75em", margin:"0",padding:"0"});
                            const div1_button = $("<button>", {
                                class: "accordion-button collapsed",
                                type: "button",
                                "data-bs-toggle": "collapse",
                                "data-bs-target": "#" + i + "a",
                                "aria-expanded": "false",
                                "aria-controls": i + "a",
                                // text: recipeName
                            });
                            div1_button.append(sourceLogoBox);
                            recipeNameSpan.text(recipeName);
                            div1_button.append(recipeNameSpan);

                            //Assembling div1
                            div1_h2.append(div1_button);

                            div1_h2.append(likeBtnBox);
                            //To the main div

                            // $(".accordion-item").append(div1_h2);

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
                            const div6_img = $("<img>").attr("src",src);
                            div6.append(div6_img);
                            const div5_h4 = $("<h4>").html(recipeTitle);
                            const div7 = $("<div>").addClass("recipeHeader_misc");
                            //몇인분?
                            const div7_1 = $("<div>").addClass("recipeHeader_misc-item recipeHeader_misc-serving");
                            const div7_1_span_1 = $("<span>").addClass("material-symbols-outlined").text("group");
                            const div7_1_span_2 = $("<span>").text(recipeServing);
                            div7_1.append(div7_1_span_1);
                            div7_1.append(div7_1_span_2);
                            //얼마나 걸려?
                            const div7_2 = $("<div>").addClass("recipeHeader_misc-item recipeHeader_misc-prepTime");
                            const div7_2_span_1 = $("<span>").addClass("material-symbols-outlined").text("alarm");
                            const div7_2_span_2 = $("<span>").text(recipePrepTime);
                            div7_2.append(div7_2_span_1);
                            div7_2.append(div7_2_span_2);
                            //난이도는?
                            const div7_3 = $("<div>").addClass("recipeHeader_misc-item recipeHeader_misc-difficulty");
                            const div7_3_span_1 = $("<span>").addClass("material-symbols-outlined").text("hotel_class");
                            const div7_3_span_2 = $("<span>").text(recipeLevel);
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

                            //RecipeBody
                            //RecipeBody
                            const div8 = $("<div>").addClass("recipeBody_body");
                            //for Loop for ingredients
                            //for Loop for ingredients
                            const div8_1 = $("<div>").addClass("ingredientList_head");
                            const div8_1_h4 = $("<h4>").text("- 재료");
                            div8_1.append(div8_1_h4);
                            const div8_2 = $("<div>").addClass("recipeBody_body-ingredientList");
                            const div8_2_1 = $("<div>").addClass("ingredientList_body");
                            const div8_2_2 = $("<div>").addClass("ingredientList_body");
                            const div8_2_1_h6_1 = $("<h6>").text("[ 기본재료 ]");
                            const div8_2_1_h6_2 = $("<h6>").text("[ 양념재료 ]");
                            //재료 넣기
                            //재료 넣기
                            //재료 넣기
                            //재료 넣기
                            for(ii in listIng){
                                console.log("이 구간은 " + list[i].seq + "의 "+ ii + "번째의 구간을 지나고 있습니다!");
                                console.log(listIng[ii].recipe_seq);
                                //여기다 ⬇︎⬇︎⬇︎⬇︎ 이걸 선언해야 들어감/ 아니면 한 li에 계속 들어감
                                const div8_2_1_ul = $("<ul>");
                                const div8_2_1_ul2 = $("<ul>");
                                const div8_2_1_li = $("<li>");
                                const div8_2_1_li2 = $("<li>");

                                if(listIng[ii].recipe_seq == list[i].seq){
                                    //양념재료만 따로 append
                                    if(listIng[ii].catName == '양념/오일'){
                                        const div8_2_3_span = $("<span>").text(listIng[ii].name);
                                        const div8_2_4_span = $("<span>").text(listIng[ii].ingredientAmount);
                                        div8_2_1_li2.append(div8_2_3_span);
                                        div8_2_1_li2.append(div8_2_4_span);
                                        div8_2_1_ul2.append(div8_2_1_li2);
                                        div8_2_2.append(div8_2_1_h6_2);
                                        div8_2_2.append(div8_2_1_ul2);

                                    }else{
                                        //나머지 재료 append
                                        console.log("ii의 값은: " + listIng[ii].recipe_seq);
                                        const div8_2_1_span = $("<span>").text(listIng[ii].name);
                                        const div8_2_2_span = $("<span>").text(listIng[ii].ingredientAmount);
                                        div8_2_1_li.append(div8_2_1_span);
                                        div8_2_1_li.append(div8_2_2_span);
                                        div8_2_1_ul.append(div8_2_1_li);
                                        div8_2_1.append(div8_2_1_h6_1);
                                        div8_2_1.append(div8_2_1_ul);

                                    }//else

                                }else{
                                    continue
                                }//else
                            }//재료 넣는 for문
                            //재료 넣기
                            //재료 넣기
                            //재료 넣기
                            //재료 넣기

                            div8_2.append(div8_2_1);
                            div8_2.append(div8_2_2);

                            //for Loop for ingredients
                            //for Loop for ingredients



                            const div8_3 = $("<div>").addClass("ingredientList_head");
                            const div8_3_h4 = $("<h4>").text("- 조리도구");
                            div8_3.append(div8_3_h4);
                            const div8_4 = $("<div>").addClass("recipeBody_body-cookingToolList");
                            const div8_4_1 = $("<div>").addClass("cookingToolList_body");
                            const div8_4_1_ul = $("<ul>");

                            //Cooking tools appends
                            //Cooking tools appends

                            //조리도구 문자열 -> 배열
                            const strTools = list[i].recipeTool;
                            const arrTools =  strTools.split(",");

                            $.each(arrTools, function(index,item){

                                const div8_2_1_span_tool = $("<span>").text(item);
                                const div8_4_1_li = $("<li>");
                                div8_4_1_li.append(div8_2_1_span_tool);
                                div8_4_1_ul.append(div8_4_1_li);
                                div8_4_1.append(div8_4_1_ul);
                                div8_4.append(div8_4_1);
                            });//end of cookingTools each function

                            //Final appends to recipeBody
                            //Final appends to recipeBody
                            div8.append(div8_1);
                            div8.append(div8_2);
                            div8.append(div8_3);
                            div8.append(div8_4);

                            //RecipeBody
                            //RecipeBody

                            //RecipeFooter
                            const div9 = $("<div>").addClass("recipeBody_footer");
                            const div9_1 = $("<div>").addClass("urlBtn");
                            const varRecipeUrl = recipeUrl;

                            const div9_1_button = $("<button>",{
                                type : "button",
                                class: "btn btn-dark btn-lg",
                                text : "레시피 보기",
                                id : i + "a",
                                click: function() {
                                    window.open(varRecipeUrl, "_blank");
                                }
                            });
                                console.log(div9_1_button.attr("id"));
                                console.log(recipeUrl);

                            div9_1.append(div9_1_button);
                            div9.append(div9_1);
                            //RecipeFooter1

                            div4.append(div5);//header
                            div4.append(div8);//body
                            div4.append(div9);//footer
                            div3.append(div4);//footer
                            div2.append(div3);//footer
                            div1.append(div1_h2);
                            div1.append(div2);
                            $("#accordionFlushExample").append(div1);





                            $(".loader").hide();

                            //BOOTSTRAP ACCORDION ASSEMBLY ENDS
                            //BOOTSTRAP ACCORDION ASSEMBLY ENDS

                        }

                    } else {
                        const resultCnt = $("<h2>").html("먼저 로그인을 해주세요!");
                        resultCnt.css({
                            animation : "horizontal-shaking .2s 2 ease",
                        });
                        $(".resultCnt").append(resultCnt);
                        $(".loader").hide();
                    }
                },
                error: function (jqXHR, textStatus, errorThrown) {
                    console.log("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
                    const resultCnt = $("<h2>").html("AJAX-related ERROR OCCURRED");
                    $(".resultCnt").append(resultCnt);
                    $(".loader").hide();
                }
            }); //AJAX tag
        }//if

    }); // EVENT tag
});// FUNCTION tag
