<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ page session="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="https://kit.fontawesome.com/594e2502af.js" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/sockjs-client/1.1.5/sockjs.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>

<div class="chatFrame">
    <!-- 새로운채팅출력 -->
    <div class="chatRecord"></div>

    <script id="temp" type="text/x-handlebars-template">
        {{#each .}}
        <div id="chatEach" class="{{printLeftRight sender}}">
            <div class="sender">{{sender}}</div>
            <div class="date">{{regdate}}</div>
            <div class="message">{{message}}
                <a id="delMsg" href="{{seq}}" style="display:{{printNone sender}}"><i class="fa-regular fa-trash-can"></i></a>
            </div>
        </div>
        {{/each}}
    </script>
    <script id="temp1" type="text/x-handlebars-template">
        <div id="chatEach2" class="{{printLeftRight sender}}">
            <div class="sender">{{sender}}</div>
            <div class="date">{{regdate}}</div>
            <div class="message">{{message}}</div>
        </div>
    </script>
    <div class="inputMsg">
        <input id="txtMessage" placeholder="입력 후 엔터!"/>
        <i style="cursor: pointer;" id="paperPlane" class="fa-regular fa-paper-plane"></i>
    </div>
</div>


<!-- 메시지 입력시 오른쪽 왼쪽으로 기입되는 방식 지정 -->
<!-- 메시지 입력시 오른쪽 왼쪽으로 기입되는 방식 지정 -->
<script>
    var uid = "${sessionId}";
    Handlebars.registerHelper("printLeftRight", function(sender) {
        if (uid != sender) {
            return "left";
        } else {
            return "right";
        }
    });
    Handlebars.registerHelper("printNone", function(sender) {
        if (uid != sender) {
            return "none";
        }
    });
</script>
<!-- 메시지 입력시 오른쪽 왼쪽으로 기입되는 방식 지정 -->
<!-- 메시지 입력시 오른쪽 왼쪽으로 기입되는 방식 지정 -->

<script>
    var uid = "${sessionId}"
    getList();



    //채팅삭제
    //채팅삭제
    $(".chatRecord").on('click','.message a',function(e){
        e.preventDefault();
        var seq=$(this).attr("href");
        if(!confirm(seq+"을(를) 삭제하시겠습니까?")) return;
        $.ajax({
            async:true,
            cache:false,
            type:'post',
            url:'/chat/delete',
            data:{seq:seq},
            success:function(){
                alert("삭제되었습니다.");
                getList();
            }
        })
    })

    function sendMessage(){
        var message = $("#txtMessage").val();
        if (message == "") {
            alert("메시지를 입력하세요.");
            $("#txtMessage").focus();
            return;
        }
        // 서버로 메시지 보내기
        sock.send(uid + "|" + message);
        $("#txtMessage").val("");

        // DB로 데이터 보내기
        $.ajax({
            async:"true",
            cache:"false",
            type:'post',
            url:'/chat/insert',
            data:{
                sender:uid,
                message:message,
            },
            success:function(data){
                sock.send(uid + "|" + message+"|"+data);
            }
        })//ajax
    }

    $("#paperPlane").on("click",function(){
        sendMessage();
    })

    $("#txtMessage").on("keypress", function(e) {
        if (e.keyCode == 13 && !e.shiftKey) {
            e.preventDefault();
            sendMessage();


        }
    })

    // 채팅 데이터 받아오기
    function getList() {
        $.ajax({
            async:"true",
            cache:"false",
            type : 'get',
            url : '/chat.json',
            dataType : 'json',
            success : function(data) {
                var temp = Handlebars.compile($("#temp").html());
                $(".chatRecord").append(temp(data));

                var chatRecord = $(".chatRecord")[0];
                chatRecord.scrollTo({
                    top: chatRecord.scrollHeight,
                    behavior: 'smooth' // Set behavior to 'smooth' for smooth scrolling
                });
            }
        });
    }
    // 웹소캣 생성
    // var sock = new SockJS("http://localhost:82/echo/");
    var sock = new SockJS("http:$//43.201.9.43/echo/");
    sock.onmessage = onMessage;
    console.log(sock);
    sock.onopen = function(event) {
        console.log("WebSocket connected");
    };
    sock.onclose = function(event) {
        console.log("WebSocket closed");
    };
    sock.onerror = function(event) {
        console.log("WebSocket error");
    };



    // 서버로부터 메시지 받기
    function onMessage(msg) {
        var items = msg.data.split("|");
        var sender = items[0];
        var message = items[1];
        var date = items[2];
        console.log("is this work? : " + items[2] );
        var data = {
            "message" : message,
            "sender" : sender,
            "regdate" : date
        }
        var temp = Handlebars.compile($("#temp1").html());
        $(".chatRecord").append(temp(data));
        var chatRecord = $(".chatRecord")[0];
        chatRecord.scrollTo({
            top: chatRecord.scrollHeight,
            behavior: 'smooth' // Set behavior to 'smooth' for smooth scrolling
        });
    }

</script>
