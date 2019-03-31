<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:set  value="${pageContext.request.contextPath}" scope="page" var="ctx"></c:set>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title></title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />

	
<!--   <link rel="stylesheet" href="/static/css/roomset/roomset.css" type="text/css"></link> -->
  <link rel="stylesheet" href="/static/bootstrap/css/bootstrap.css" type="text/css"></link>
  <link href="/static/bootstrap/css/bootstrap-responsive.css" rel="stylesheet">  <!-- start 响应式布局要添加的 -->
  <script src="/static/bootstrap/js/jquery-3.1.1.min.js"></script>
  <script src="/static/bootstrap/js/bootstrap.js"></script>
  <script type="text/javascript" src="/static/My97DatePicker/WdatePicker.js"></script>
   <style>
   
   .container{
     margin-top: 10px;
   }
   
   
   .labelroomnumber{
      position: relative;
      font-size: 17px;
      float: left;
      margin-top: 15px;
    }
    
    .marginrightone{
      margin-right: 33px;
    }
    
    .marginrighttwo{
      margin-right: 16.5px;
    }
    
    .marginrightthree{
      margin-right: 43px;
    }
    
   .textone{
    margin-top:12px;
    }
    
    .inputone{
    width:54.2%;
    float:left;
    }
    
    .inputtwo{
      width:46.8%;
    }
    
    .inputthree{
      width:46.8%;
    }
    
    .inputfour{
     width:50%;
    }
    
    .cboone{
      margin-top:10px;
      height: 27px;
    }
    
    .margin-top-one{
      margin-top: -10px;
    }
    
    .margin-top-two{
      margin-top: -20px;
    }
  
    .textwidth{
      width: 138px;
    }
    
    .radiusone{
     margin-left: -4px;
    }
    
     @media(min-width:731px) and (max-width:767px){
      .inputthree{
      width: 50.5%;
    }
    }
    
    @media(min-width:550px) and (max-width:730px){
      .inputtwo{
      width: 46.2%;
    }
        .inputthree{
      width: 49.2%;
    }
    }
    
    
     @media(min-width:431px) and (max-width:550px){
      .inputtwo{
      width: 43.2%;
    }
      .inputthree{
      width: 47.5%;
    }
    }
    
    @media(min-width:366px) and (max-width:430px){
      .inputtwo{
      width: 40.2%;
    }
      .inputthree{
      width: 46%;
    }
    }
    
     @media(min-width:285px) and (max-width:366px){
      .inputtwo{
      width: 37.2%;
    }
      .inputthree{
      width: 44%;
    }
    }
    
     @media(min-width:237px) and (max-width:285px){
      .inputtwo{
      width: 30%;
    }
      .inputthree{
      width: 40%;
    }
    }
    
    .yansered{
      color:red;
    }
  
  </style>
  
  </head>
  
 
  <body > 
  <div class="container">
  
    <div class="span11" style=" border: solid; border-color: #DDDDDD;">
    <div class="span9 margin-top-one">
      <div class="row-fluid">
        <h3 style="text-align: center;">接待对象修改</h3>
      </div>
    </div>
    
		<form <c:if test="${userSession.targetTypeID==55}">action="${ctx}/ReceiveTarget/update.do"</c:if>
			  <c:if test="${userSession.targetTypeID==56}">action="${ctx}/user/update.do"</c:if>
			method="post" id="userForm">
        <input name="receiveTargetId" value="${list.receiveTargetId}" type="hidden">
	    <div class="span12">
	      <div class="row-fluid">
			  <div class="span4">
				  <label class="labelroomnumber">用户名：</label>
				  <input readonly id="yonhming" class="textone inputone"
						 style="height:26px;" type="text" value="${list.receiveTargetId}">
			  </div>
			  <div class="span4">
			   	  <label class="labelroomnumber" style="margin-right:16px;">员工姓名：</label>
			      <input id="principalId" name="principal" class="textone inputone" 
			      style="height:26px;" type="text" onchange="onchangeOne()"  value="${list.principal}">
			      <div id="divOne" hidden>
			         <label class="yansered" style="margin-top:18px;">*</label>
			      </div>
			  </div>
			  <div class="span3">
				  <label class="labelroomnumber">密码：</label>
				  <input id="teamCodeId" name="teamCode" class="textone inputone" value="${list.teamCode}"
						 style="height:26px;" type="text" onchange="onchangeOne()" onblur="YZ(this.value)">
				  <div id="divThree" hidden>
					  <label class="yansered" style="margin-top:18px;">*</label>
				  </div>
			  </div>
		  </div>
	    </div>

	    <div class="span12">
	      <div class="row-fluid">
	        <div class="span4">
	           <label class="labelroomnumber">登记时间：</label>
		       <input id="registerTimeId" name="registerTime" class="textone inputone" style="height:26px;" id="date" class="Wdate" type="text"
					  value="<fmt:formatDate value="${list.registerTime}" pattern="yyyy-MM-dd"/>"
		       onFocus="WdatePicker({skin:'whyGreen',dateFmt:'yyyy-MM-dd',maxDate:'#F{\'%y-%M-%d\'}',onpicked:pickedFunc})" onchange="onchangeOne()"/>
		       <div id="divFour" hidden>
			         <label class="yansered" style="margin-top:18px;">*</label>
			   </div>
		    </div>
		    <div class="span4">
			   	<label class="labelroomnumber">联系电话：</label>
                <input id="contactPhoneNUmberId" name="contactPhoneNUmber" class="textone inputone" 
                style="height:26px;" type="text" onchange="onchangeOne()" value="${list.contactPhoneNUmber}">
		        <div id="divFive" hidden>
			         <label class="yansered" style="margin-top:18px;">*</label>
			    </div>
		    </div>
<c:if test="${userSession.targetTypeID==55}">
			  <div class="span3 ">
				  <label class="labelroomnumber">员工类别：</label>
				  <select name="targetTypeID" class="cboone inputone">
					  <c:forEach items="${listOne}" var="item">
						  <option value="${item.attributeDetailsId}" <c:if test="${item.attributeDetailsId==list.targetTypeID}" >selected="selected"</c:if>>
								  ${item.attributeDetailsName}
						  </option>
					  </c:forEach>
				  </select>
			  </div>
</c:if>
		  </div>
	    </div>
	    
	
		  <div class="span6" style="text-align:center;">
		      <div class="row-fluid">
			      <div class="span12" style="margin-top: 10px;margin-bottom: 8px;">
				   	 <button class="btn btn-primary" type="button" onclick="verify()">
				   	 <li class="icon-check icon-white"></li>修改</button>
				  </div> 
				 
			  </div>
	      </div>
      </form>
      
      <div class="span4" style="text-align:center;">
      <div class="row-fluid">
		   <div class="span4"  style="margin-top: 10px;margin-bottom: 8px;"> 
		   	 <button class="btn btn-warning" type="button" onclick="deletefunction()">
		   	  <li class="icon-remove icon-white"></li>取消</button>
		   </div>
	     </div>
      </div>
       
    </div>


  </div>



  <script type="text/javascript">
   var Name=document.getElementById("teamCodeId").value;

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

   var flag2=false;
   var typeC=$("#contactPhoneNUmberId");
   $(function(){
       typeC.on("blur",function() {
           if (typeC.val() != null && typeC.val() != "") {
               jQuery.ajax({
                   type: "POST",//请求类型
                   url: getRootPath() + "/ReceiveTarget/validationPhone.do",//请求的url
                   data: {contactPhoneNUmber: typeC.val()},//请求参数
                   dataType: "json",//ajax接口（请求url）返回的数据类型
                   success: function (data) {//data：返回数据（json对象）
                       if (data.phoneCode == "exist") {//账号已存在，错误提示
                           alert("手机号码已经存在");
                           flag2=false;
                       }else{
                           flag2=true;
                       }
                   },
                   error: function (data) {//当访问时候，404，500 等非200的错误状态码
                       alert("访问错误!")
                       flag2=false;
                   }
               });
           }else{
               flag2=false;
               return;
           }
       });
   });
   
   function verify(){
    if(document.getElementById("principalId").value==""){
	     alert("员工姓名  是必填项，不能为空哦！");
	     document.getElementById("principalId").focus();
	     return false;
      }else if(document.getElementById("contactPhoneNUmberId").value==""){
	     alert("联系电话  是必填项，不能为空哦！");
	     document.getElementById("contactPhoneNUmberId").focus();
	     return false;
      }else if(document.getElementById("principalId").value.length>10){
	     alert("你输入的    员工姓名   太过长了  请不要超出  10 位长度 ");
	     document.getElementById("principalId").focus();
	     return false;
      }else if(document.getElementById("contactPhoneNUmberId").value.length>20){
	     alert("你输入的    联系电话     太过长了  请不要超出  20 位长度");
	     document.getElementById("contactPhoneNUmberId").focus();
	     return false;
      }else{
          $("#userForm").submit();
         return true;
      }
   }
   
    function deletefunction(){
     parent.document.getElementById('Mainid').src='${ctx}/ReceiveTarget/tolist.do';
   }
   
   var shijian="";
   function pickedFunc() {
            shijian = $dp.cal.getNewDateStr();
        }
        
        
        
   function onchangeOne(){
     //负责人
     if(document.getElementById("principalId").value!=""){
       document.getElementById("divOne").style.display="none";
     }else{
       document.getElementById("divOne").style.display="block"; //显示
     }

     //登记时间
     if(document.getElementById("registerTimeId").value!=""){
       document.getElementById("divFour").style.display="none";
     }else{
       document.getElementById("divFour").style.display="block"; //显示
     }
      //联系电话 
     if(document.getElementById("contactPhoneNUmberId").value!=""){
        document.getElementById("divFive").style.display="none";
        if(!document.getElementById("contactPhoneNUmberId").value.trim().match("^[1][0-9]{10}$"))
	       {
	          document.getElementById("contactPhoneNUmberId").focus();
	          document.getElementById("contactPhoneNUmberId").value="";
	          alert("你输入的手机号码有误，请重新输入！");
	       }
     }else{
       document.getElementById("divFive").style.display="block"; //显示
     }
   }

 </script>
  </body>

</html>
