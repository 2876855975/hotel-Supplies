<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:set  value="${pageContext.request.contextPath}" scope="page" var="ctx"></c:set>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

    <title>欢迎使用酒店管理系统</title>
    <meta name="description" content="概述及统计" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta charset="utf-8" />
    <link  href="/static/bootstrap/css/bootstrap.css" rel="stylesheet" >
    <link href="/static/bootstrap/css/bootstrap-responsive.css" rel="stylesheet">  <!-- start 响应式布局要添加的 -->
    <script src="/static/bootstrap/js/jquery-3.1.1.min.js"></script>
    <script src="/static/bootstrap/js/bootstrap.js"></script>

</head>

  <body>

  <div class="span12">
      <fieldset>
          <legend>酒店房态：</legend>
      </fieldset>
  </div>

  <div class="span12" style="margin-top:-17px;">
      <div class="row-fluid">
          <button class="btn btn-info btn-small" type="button" onclick="allroomfunction()">所有房间</button>
          <button class="btn btn-info btn-small" type="button" onclick="onefunction()">单人普通房</button>
          <button class="btn btn-info btn-small" type="button" onclick="twofunction()">单人标准间</button>
          <button class="btn btn-info btn-small" type="button" onclick="threefunction()">二人普通房</button>
          <button class="btn btn-info btn-small" type="button" onclick="fourfunction()">二人标准间</button>
          <button class="btn btn-info btn-small" type="button" onclick="fivefunction()">豪华间</button>
          <button class="btn btn-info btn-small" type="button" onclick="sixfunction()">会议室</button>
          <button class="btn btn-info btn-small" type="button" onclick="sevenfunction()">总统套房</button>
      </div>
  </div>

  <div class="span12" id="dynamicid" style="height:500px;overflow-x:auto;">
      <div class="row-fluid" id="div1">
          <c:forEach items="${list}" var="item">
              <c:if test="${item.roomStateID==1}">
                  <button onclick="suibian(this)" style="width:95px;;height:93px;border: 3px solid #666666;  float:left;margin:2px; background:#99FF99;">
                      <input style="display: none;" value="${item.roomId}" />
                      <input style="display: none;" value="${item.roomStateID}" />
                      <label>${item.roomNumber}</label>
                      <label style="margin-top:-5px;">${item.roomName}</label>
                      <label style="margin-top:-5px;">${item.guestRoomLevelName}</label>
                      <label style="margin-top:-5px;">￥${item.standardPriceDay}</label>
                      <input style="display: none;" value="${item.standardPrice}" />
                      <input style="display: none;" value="${item.firstPrice}" />
                      <input style="display: none;" value="${item.firstDuration}" />
                  </button>
              </c:if>
              <c:if test="${item.roomStateID==2}">
                  <button onclick="suibian(this)" style="width:95px;;height:93px;border: 3px solid #666666; float:left;margin:2px; background:#DDDDDD;">
                      <input style="display: none;" value="${item.roomId}" />
                      <input style="display: none;" value="${item.roomStateID}" />
                      <label>${item.roomNumber}</label>
                      <label style="margin-top:-5px;">${item.roomName}</label>
                      <label style="margin-top:-5px;">${item.guestRoomLevelName}</label>
                      <label style="margin-top:-5px;">￥${item.standardPriceDay}</label>
                      <input style="display: none;" value="${item.standardPrice}" />
                      <input style="display: none;" value="${item.firstPrice}" />
                      <input style="display: none;" value="${item.firstDuration}" />
                  </button>
              </c:if>
              <c:if test="${item.roomStateID==4}">
                  <button onclick="suibian(this)" style="width:95px;;height:93px;border: 3px solid #666666; float:left;margin:2px; background:#99FFFF;">
                      <input style="display: none;" value="${item.roomId}" />
                      <input style="display: none;" value="${item.roomStateID}" />
                      <label>${item.roomNumber}</label>
                      <label style="margin-top:-5px;">${item.roomName}</label>
                      <label style="margin-top:-5px;">${item.guestRoomLevelName}</label>
                      <label style="margin-top:-5px;">￥${item.standardPriceDay}</label>
                      <input style="display: none;" value="${item.standardPrice}" />
                      <input style="display: none;" value="${item.firstPrice}" />
                      <input style="display: none;" value="${item.firstDuration}" />
                  </button>
              </c:if>
              <c:if test="${item.roomStateID==5}">
                  <button onclick="suibian(this)" style="width:95px;;height:93px;border: 3px solid #666666; float:left;margin:2px; background:#BBBB00;">
                      <input style="display: none;" value="${item.roomId}" />
                      <input style="display: none;" value="${item.roomStateID}" />
                      <label>${item.roomNumber}</label>
                      <label style="margin-top:-5px;">${item.roomName}</label>
                      <label style="margin-top:-5px;">${item.guestRoomLevelName}</label>
                      <label style="margin-top:-5px;">￥${item.standardPriceDay}</label>
                      <input style="display: none;" value="${item.standardPrice}" />
                      <input style="display: none;" value="${item.firstPrice}" />
                      <input style="display: none;" value="${item.firstDuration}" />
                  </button>
              </c:if>
              <c:if test="${item.roomStateID==6}">
                  <button onclick="suibian(this)" style="width:95px;;height:93px;border: 3px solid #666666; float:left;margin:2px; background:#FF7744;">
                      <input style="display: none;" value="${item.roomId}" />
                      <input style="display: none;" value="${item.roomStateID}" />
                      <label>${item.roomNumber}</label>
                      <label style="margin-top:-5px;">${item.roomName}</label>
                      <label style="margin-top:-5px;">${item.guestRoomLevelName}</label>
                      <label style="margin-top:-5px;">￥${item.standardPriceDay}</label>
                      <input style="display: none;" value="${item.standardPrice}" />
                      <input style="display: none;" value="${item.firstPrice}" />
                      <input style="display: none;" value="${item.firstDuration}" />
                  </button>
              </c:if>
              <c:if test="${item.roomStateID==7}">
                  <button onclick="suibian(this)"  style="width:95px;;height:93px;border: 3px solid #666666; float:left;margin:2px; background:#FF0088;">
                      <input style="display: none;" value="${item.roomId}" />
                      <input style="display: none;" value="${item.roomStateID}" />
                      <label>${item.roomNumber}</label>
                      <label style="margin-top:-5px;">${item.roomName}</label>
                      <label style="margin-top:-5px;">${item.guestRoomLevelName}</label>
                      <label style="margin-top:-5px;">￥${item.standardPriceDay}</label>
                      <input style="display: none;" value="${item.standardPrice}" />
                      <input style="display: none;" value="${item.firstPrice}" />
                      <input style="display: none;" value="${item.firstDuration}" />
                  </button>
              </c:if>
              <c:if test="${item.roomStateID==65}">
                  <button onclick="suibian(this)" style="width:95px;;height:93px;border: 3px solid #666666; float:left;margin:2px; background:#FF00FF;">
                      <input style="display: none;" value="${item.roomId}" />
                      <input style="display: none;" value="${item.roomStateID}" />
                      <label>${item.roomNumber}</label>
                      <label style="margin-top:-5px;">${item.roomName}</label>
                      <label style="margin-top:-5px;">${item.guestRoomLevelName}</label>
                      <label style="margin-top:-5px;">￥${item.standardPriceDay}</label>
                      <input style="display: none;" value="${item.standardPrice}" />
                      <input style="display: none;" value="${item.firstPrice}" />
                      <input style="display: none;" value="${item.firstDuration}" />
                  </button>
              </c:if>
          </c:forEach>
      </div>
  </div>
  </div>

  <script type="text/javascript">


      function pickedFunc() {
          shijian = $dp.cal.getNewDateStr();
      }

      function allroomfunction(){
          guestRoomLevelID=0;
          tenfunction();
      }

      function onefunction(){
          guestRoomLevelID=8;
          tenfunction();
      }

      function twofunction(){
          guestRoomLevelID=9;
          tenfunction();
      }

      function threefunction(){
          guestRoomLevelID=10;
          tenfunction();
      }

      function fourfunction(){
          guestRoomLevelID=11;
          tenfunction();
      }

      function fivefunction(){
          guestRoomLevelID=12;
          tenfunction();
      }

      function sixfunction(){
          guestRoomLevelID=13;
          tenfunction();
      }

      function sevenfunction(){
          guestRoomLevelID=14;
          tenfunction();
      }
      //项目绝对路径
      function getRootPath(){
          //获取当前网址，如： http://localhost:8083/proj/meun.jsp
          var curWwwPath = window.document.location.href;
          //获取主机地址之后的目录，如： proj/meun.jsp
          var pathName = window.document.location.pathname;
          var pos = curWwwPath.indexOf(pathName);
          //获取主机地址，如： http://localhost:8083
          var localhostPath = curWwwPath.substring(0, pos);
          return(localhostPath );
      }

      function tenfunction(){
          $("#div1").empty();
          $.ajax({
              cache:false,                                             //是否使用缓存提交 如果为TRUE 会调用浏览器的缓存 而不会提交
              type: "POST",                                           //上面3行都是必须要的
              url: getRootPath()+'/StayRegister/guestRoomLevelSelectRoom.do',       //地址 type 带参数
              data:"guestRoomLevelID="+guestRoomLevelID,                         // IDCardValue 自定义的。相当于name把值赋予给 他可以在servlet 获取
              async:false,                                          // 是否 异步 提交
              dataType:"json",
              success: function (result) {                          // 不出现异常 进行立面方
                  if(result!=null){
                      for(var i=0,l=result.length;i<l;i++) {
                          var item = result[i];
                          if(item.roomStateID==1){
                              var btn=$("<button onclick='suibian(this)' style='width:95px;;height:93px;border: 3px solid #666666; float:left;margin:2px; background:#99FF99;'>"+
                                  "<input style='display: none;' value="+item.roomId+" />"+
                                  "<input style='display: none;' value="+item.roomStateID+" />"+
                                  "<label>"+item.roomNumber+"</label>"+
                                  "<label style='margin-top:-5px;'>"+item.roomName+"</label>"+
                                  "<label style='margin-top:-5px;'>"+item.guestRoomLevelName+"</label>"+
                                  "<label style='margin-top:-5px;'>"+"￥"+item.standardPriceDay+"</label>"+
                                  "<input style='display: none;' value="+item.standardPrice+" />"+
                                  "<input style='display: none;' value="+item.firstPrice+" />"+
                                  "<input style='display: none;' value="+item.firstDuration+" />"+
                                  "</button>")
                              $("#div1").append(btn);
                          }
                          if(item.roomStateID==2){
                              var btn=$("<button onclick='suibian(this)' style='width:95px;;height:93px;border: 3px solid #666666; float:left;margin:2px; background:#DDDDDD;'>"+
                                  "<input style='display: none;' value="+item.roomId+" />"+
                                  "<input style='display: none;' value="+item.roomStateID+" />"+
                                  "<label>"+item.roomNumber+"</label>"+
                                  "<label style='margin-top:-5px;'>"+item.roomName+"</label>"+
                                  "<label style='margin-top:-5px;'>"+item.guestRoomLevelName+"</label>"+
                                  "<label style='margin-top:-5px;'>"+"￥"+item.standardPriceDay+"</label>"+
                                  "<input style='display: none;' value="+item.standardPrice+" />"+
                                  "<input style='display: none;' value="+item.firstPrice+" />"+
                                  "<input style='display: none;' value="+item.firstDuration+" />"+
                                  "</button>")
                              $("#div1").append(btn);
                          }
                          if(item.roomStateID==4){
                              var btn=$("<button onclick='suibian(this)' style='width:95px;;height:93px;border: 3px solid #666666; float:left;margin:2px; background:#99FFFF;'>"+
                                  "<input style='display: none;' value="+item.roomId+" />"+
                                  "<input style='display: none;' value="+item.roomStateID+" />"+
                                  "<label>"+item.roomNumber+"</label>"+
                                  "<label style='margin-top:-5px;'>"+item.roomName+"</label>"+
                                  "<label style='margin-top:-5px;'>"+item.guestRoomLevelName+"</label>"+
                                  "<label style='margin-top:-5px;'>"+"￥"+item.standardPriceDay+"</label>"+
                                  "<input style='display: none;' value="+item.standardPrice+" />"+
                                  "<input style='display: none;' value="+item.firstPrice+" />"+
                                  "<input style='display: none;' value="+item.firstDuration+" />"+
                                  "</button>")
                              $("#div1").append(btn);
                          }
                          if(item.roomStateID==5){
                              var btn=$("<button onclick='suibian(this)' style='width:95px;;height:93px;border: 3px solid #666666; float:left;margin:2px; background:#BBBB00;'>"+
                                  "<input style='display: none;' value="+item.roomId+" />"+
                                  "<input style='display: none;' value="+item.roomStateID+" />"+
                                  "<label>"+item.roomNumber+"</label>"+
                                  "<label style='margin-top:-5px;'>"+item.roomName+"</label>"+
                                  "<label style='margin-top:-5px;'>"+item.guestRoomLevelName+"</label>"+
                                  "<label style='margin-top:-5px;'>"+"￥"+item.standardPriceDay+"</label>"+
                                  "<input style='display: none;' value="+item.standardPrice+" />"+
                                  "<input style='display: none;' value="+item.firstPrice+" />"+
                                  "<input style='display: none;' value="+item.firstDuration+" />"+
                                  "</button>")
                              $("#div1").append(btn);
                          }
                          if(item.roomStateID==6){
                              var btn=$("<button onclick='suibian(this)' style='width:95px;;height:93px;border: 3px solid #666666; float:left;margin:2px; background:#FF7744;'>"+
                                  "<input style='display: none;' value="+item.roomId+" />"+
                                  "<input style='display: none;' value="+item.roomStateID+" />"+
                                  "<label>"+item.roomNumber+"</label>"+
                                  "<label style='margin-top:-5px;'>"+item.roomName+"</label>"+
                                  "<label style='margin-top:-5px;'>"+item.guestRoomLevelName+"</label>"+
                                  "<label style='margin-top:-5px;'>"+"￥"+item.standardPriceDay+"</label>"+
                                  "<input style='display: none;' value="+item.standardPrice+" />"+
                                  "<input style='display: none;' value="+item.firstPrice+" />"+
                                  "<input style='display: none;' value="+item.firstDuration+" />"+
                                  "</button>")
                              $("#div1").append(btn);
                          }
                          if(item.roomStateID==7){
                              var btn=$("<button onclick='suibian(this)' style='width:95px;;height:93px;border: 3px solid #666666; float:left;margin:2px; background:#FF0088;'>"+
                                  "<input style='display: none;' value="+item.roomId+" />"+
                                  "<input style='display: none;' value="+item.roomStateID+" />"+
                                  "<label>"+item.roomNumber+"</label>"+
                                  "<label style='margin-top:-5px;'>"+item.roomName+"</label>"+
                                  "<label style='margin-top:-5px;'>"+item.guestRoomLevelName+"</label>"+
                                  "<label style='margin-top:-5px;'>"+"￥"+item.standardPriceDay+"</label>"+
                                  "<input style='display: none;' value="+item.standardPrice+" />"+
                                  "<input style='display: none;' value="+item.firstPrice+" />"+
                                  "<input style='display: none;' value="+item.firstDuration+" />"+
                                  "</button>")
                              $("#div1").append(btn);
                          }
                          if(item.roomStateID==65){
                              var btn=$("<button onclick='suibian(this)' style='width:95px;;height:93px;border: 3px solid #666666; float:left;margin:2px; background:#FF00FF;'>"+
                                  "<input style='display: none;' value="+item.roomId+" />"+
                                  "<input style='display: none;' value="+item.roomStateID+" />"+
                                  "<label>"+item.roomNumber+"</label>"+
                                  "<label style='margin-top:-5px;'>"+item.roomName+"</label>"+
                                  "<label style='margin-top:-5px;'>"+item.guestRoomLevelName+"</label>"+
                                  "<label style='margin-top:-5px;'>"+"￥"+item.standardPriceDay+"</label>"+
                                  "<input style='display: none;' value="+item.standardPrice+" />"+
                                  "<input style='display: none;' value="+item.firstPrice+" />"+
                                  "<input style='display: none;' value="+item.firstDuration+" />"+
                                  "</button>")
                              $("#div1").append(btn);
                          }
                      }
                  }

              },
              error: function(data) {

              }

          });
      }

  </script>

  </body>
</html>
