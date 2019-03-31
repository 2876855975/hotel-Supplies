<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>生亦酒店登录 </title>

    <link rel="stylesheet" href="/static/bootstrap/css/bootstrap.css" type="text/css"></link>
    <link rel="stylesheet" href="/static/bootstrap/custom.min.css" type="text/css"></link>
    <link rel="stylesheet" href="/static/bootstrap/animate.min.css" type="text/css"></link>


    <style>
        .wrap2{
            margin-left: 78px;
        }

        .box2 {
            position: relative;
            width: 200px;
            height: 30px;
            border-radius: 20px;
            background: #686B69;
            line-height: 30px;
            overflow: hidden;
            margin-bottom: 20px;
            font-size: 12px;
        }

        .btn2 {
            cursor: pointer;
            position: absolute;
            top: 0;
            left: 0;
            height: 30px;
            width: 30px;
            background: #0c7;
            border-radius: 20px;
            text-align: center;
        }

        .tips2 {
            color: #fff;

            text-align: center;
            position: absolute;
            top: 0;
            left: 0;
            margin-left: 50px;
        }

    </style>
</head>

<body class="login">
<div>
    <input type="hidden" id="path" value="${path}" >
    <a class="hiddenanchor" id="signup"></a>
    <a class="hiddenanchor" id="signin"></a>

    <div class="login_wrapper">
        <div class="animate form login_form">
            <section class="login_content">
                <form id="form22" method="post" action="${path}/user/login.do">
                    <h1>登录</h1>
                    <h1 style="color: red">${error}</h1>
                    <div>
                        <input style="height: 30px;width: 270px;" type="text" name="contactPhoneNUmber" value="15508181557" class="form-control" placeholder="用户名/手机号" required="" />
                    </div>
                    <div>
                        <input style="height: 30px;width: 270px;" type="password" name="teamCode" value="55555" class="form-control" placeholder="密码" required="" />
                    </div>
                    <div class="wrap2">
                        　　<div class="box2">
                        　　　　<div class="btn2" id="dragEle"></div>
                        　　　　<div class="tips2">>>拖动滑块验证<<</div>
                        　　</div>
                    </div>
                    <div>
                        <input type="button" id="submit2" class="btn btn-default submit" value="登录"/>
                        <a class="reset_pass" href="#">忘记密码?</a>
                    </div>

                    <div class="clearfix"></div>

                    <div class="separator">
                        <div class="clearfix"></div>
                        <br />
                        <div>
                            <h1><i class="fa fa-paw"></i> 生亦酒店系统</h1>
                            <p>©2017 All Rights Reserved. Zeliang's supermarket order system USES Bootstrap</p>
                        </div>
                    </div>
                </form>
            </section>
        </div>
    </div>
</div>
<script src="/static/bootstrap/js/jquery-3.1.1.min.js"></script>
<script type="text/javascript">
    function DragValidate (dargEle,msgEle){
        var dragging = false;//滑块拖动标识
        var iX;
        dargEle.mousedown(function(e) {
            msgEle.text(">>拖动滑块验证<<");
            dragging = true;
            iX = e.clientX; //获取初始坐标
        });
        $(document).mousemove(function(e) {
            if (dragging) {
                var e = e || window.event;
                var oX = e.clientX - iX;
                if(oX < 30){
                    return false;
                };
                if(oX >= 210){//容器宽度+10
                    oX = 200;
                    return false;
                };
                dargEle.width(oX + "px");
                //console.log(oX);
                return false;
            };
        });
        $(document).mouseup(function(e) {
            var width = dargEle.width();
            if(width < 200){
                //console.log(width);
                dargEle.width("30px");
                $(".tips2").text(">>拖动滑块验证<<");
            }else{
                $(".tips2").text("");
                dargEle.attr("validate","true").text("验证成功！").unbind("mousedown");
//                $(".btn2").style("cursor:default")
            };
            dragging = false;
        });
    };




        DragValidate($("#dragEle"),$(".tips2"));
    $("#submit2").click(function(){
        if(!$("#dragEle").attr("validate")){
            alert("请先拖动滑块验证！");
        }else{
            $("#form22").submit();
        };
    })


</script>
</body>
</html>