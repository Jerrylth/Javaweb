<%--
  Created by IntelliJ IDEA.
  User: 11861
  Date: 2020/11/2
  Time: 15:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8"  %>
<html>
<head>
    <title>登陆洛谷</title>
    <style type="text/css">
        span{
            color: #dc143c;
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
<script type="text/javascript">
    window.onload = function() {//名字验证
        var usernameSpan = document.getElementById("usernameError");
        var usernameError = document.getElementById("username");
        usernameError.onblur = function () {
            var usernameValue = usernameError.value;
            usernameValue = usernameValue.trim();
            if (usernameValue === "") {
                usernameSpan.innerText = "用户名不能为空 ";
            }
        }
        usernameError.onfocus = function () {
            if (usernameSpan.innerText != "") {
                usernameError.value = "";
            }
            usernameSpan.innerText = "";
        }
            var password1 = document.getElementById("password1");
            var password1span = document.getElementById("passwordError1")
            password1.onblur = function () {
                var password1_value = password1.value;
                if(password1_value===""){
                    password1span.innerText= "密码不能为空 ";
                }
            }
        password1.onfocus = function (){
            if(password1span.innerText!=""){
                password1.value="";
            }
            password1span.innerText="";
        }
        var Submit_btn = document.getElementById("submit_btn");
        Submit_btn.onclick = function (){
            usernameError.focus();
            usernameError.blur();
            password1.focus();
            password1.blur();

            if(usernameSpan.innerText==""&&password1span.innerText==""){
//无红字
                alert("开始登陆");
                var User_form = document.getElementById("User");
                //User_form.hidden;
                User_form.submit();
            }
        }
    }
</script>
<body>
<div align="center">
<img data-v-a363f012="" data-v-796309f8="" src="https://cdn.luogu.com.cn/fe/logo.png?35e6d0796eab39c4bf304d03e6d332c0" class="logo"><br>
    <span data-v-a363f012="" data-v-796309f8="" class="motto">在洛谷，享受 Coding 的欢乐！</span><br>
    <form id = "User" action="http://localhost:88/doLogin.jsp"  method="post">
        用户名<input type= "text" name = "username" id= "username" /><span id = "usernameError"></span><br>
         密码 <input type="password" name = "password1" id = "password1" /><span id = "passwordError1"></span><br>
    <input type="button" value="登陆" id ="submit_btn"/><br>
    </form>
</body>
</html>
