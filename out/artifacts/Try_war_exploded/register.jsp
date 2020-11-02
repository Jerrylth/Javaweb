<%--
  Created by IntelliJ IDEA.
  User: 11861
  Date: 2020/10/29
  Time: 20:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta charset="utf-8">
  <title>注册洛谷</title>
  <style type="text/css">
    span{
      color: crimson;
      font-size:  0.75rem;
    }
    .logo[data-v-a363f012] {
      width: 160px;
      display: block;
    }
    .motto[data-v-a363f012] {
      color: rgb(52, 152, 219);
      font-weight: 400;
      margin-bottom: 1.5em;
    }
  </style>
</head>
<body>
<script type = "text/javascript">
  window.onload = function(){//名字验证
    var usernameSpan = document.getElementById("usernameError");
    var usernameError = document.getElementById("username");
    usernameError.onblur = function(){
      var usernameValue = usernameError.value;
      usernameValue = usernameValue.trim();
      if(usernameValue===""){
        usernameSpan.innerText= "用户名不能为空 ";
      }else {
        if (usernameValue.length < 6 || usernameValue.length > 12) {
          usernameSpan.innerText = "用户名长度必须大于6小于12";
        } else {
          var regExp = /^[A-Za-z0-9]+$/;//正则表达式
          var sym = regExp.test(usernameValue);
          if (sym) {
          } else {
            usernameSpan.innerText = "用户名只能由数字和字符组成";
          }
        }
      }
    }
    usernameError.onfocus = function (){
      if(usernameSpan.innerText!=""){
        usernameError.value="";
      }
      usernameSpan.innerText="";
    }
    var password1 = document.getElementById("password1");
    var password1span = document.getElementById("passwordError1")
    password1.onblur = function(){
      var password1_value = password1.value;
      password1_value = password1_value.trim();
      if(password1_value===""){
        password1span.innerText= "密码不能为空 ";
      }else{
        if(password1_value.length<6||password1_value.length>12){
          password1span.innerText= "密码长度必须大于6小于12";
        }else{
          var regExp = /^[0-9]+$/;
          var sym = regExp.test(password1_value);
          if(!sym){}
          else{
            password1span.innerText= "密码至少且必须由数字和字符组成";
          }
        }
      }
    }
    password1.onfocus = function (){
      if(password1span.innerText!=""){
        password1.value="";
      }
      password1span.innerText="";
    }
    var password2span = document.getElementById("passwordError2");
    var password2 = document.getElementById("password2");
    password2.onblur = function(){
      var password1_value = password1.value;
      var password2_value = password2.value;
      if(password2_value===password1_value){
        password2span.innerText = "";
      }else{
        password2span.innerText = "二次密码不一致";
      }
    }
    password2.onfocus = function (){
      if(password2span.innerText!=""){
        password2.value="";
      }
      password2span.innerText="";
    }
    var email = document.getElementById("email");
    var emailspan = document.getElementById("emailError");
    email.onblur = function (){
      var email_value = email.value;
      var email_regExp  =/^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/;
      var sym = email_regExp.test(email_value);
      if(sym){
      }else{
        emailspan.innerText = "邮箱不符合规范";
      }
    }
    email.onfocus = function (){
      if(emailspan.innerText!= ""){
        email.value="";
      }
      emailspan.innerText="";
    }

    var Submit_btn = document.getElementById("submit_btn");
    Submit_btn.onclick = function (){
      usernameError.focus();
      usernameError.blur();
      password1.focus();
      password1.blur();
      password2.focus();
      password2.blur();
      email.focus();
      email.blur();
      if(usernameSpan.innerText==""&&password1span.innerText==""&&password2span.innerText==""&&emailspan.innerText==""){
//无红字
        alert("开始注册");
        var User_form = document.getElementById("User");
        //User_form.hidden;
        User_form.submit();
      }
    }
  }

</script>
<div align="center">
  <img data-v-a363f012="" data-v-796309f8="" src="https://cdn.luogu.com.cn/fe/logo.png?35e6d0796eab39c4bf304d03e6d332c0" class="logo"><br>
  <span data-v-a363f012="" data-v-796309f8="" class="motto">在洛谷，享受 Coding 的欢乐！</span>
<form id = "User" action="http://localhost:88/doRegister.jsp"  method="post">
  用户名<input type= "text" name = "username" id= "username" /><span id = "usernameError"></span><br>
  <span data-v-a363f012="" data-v-796309f8="" class="motto">使用 6 个或更多字符（字母、数字的组合）</span><br>
  密码 <input type="password" name = "password1" id = "password1" /><span id = "passwordError1"></span><br>
  确认密码<input type="password"  id = "password2" /><span id = "passwordError2"></span><br>
  <select id="sexValue" name="selectSex">
    <option value="">-->请选择性别<--</option>
    <option value="1">男性</option>
    <option value="0">女性</option>
  </select><br>
  电子邮箱<input type="text" name = "email" id = "email" /><span id = "emailError"></span><br>
  <input type="button" value=" 注册" id ="submit_btn"/>
  <input type="reset" value="重置"/>
</form>
</div>
</body>
</html>

