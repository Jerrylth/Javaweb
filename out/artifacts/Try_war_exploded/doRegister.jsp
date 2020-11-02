<%--
  Created by IntelliJ IDEA.
  User: 11861
  Date: 2020/11/2
  Time: 10:18
  To change this template use File | Settings | File Templates.
--%>

<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@ page  import="java.util.*" %>
<%@ page import="java.io.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>注册洛谷ing</title>
</head>
<body>
<script type="text/javascript">
var sym ="1";
<%
    String sym = "1";
    request.setCharacterEncoding("UTF-8");//设置统一字符编码
    String username = request.getParameter("username");
    String password = request.getParameter("password1");
    String sex = request.getParameter("selectSex");
    String email = request.getParameter("email");
    String input = "C:\\Users\\11861\\IdeaProjects\\Try\\web\\user.txt";
    String user = username+','+password+','+sex+','+email;
    FileInputStream fis = new FileInputStream(input);

    InputStreamReader reader = new InputStreamReader(fis,"UTF-8");

    BufferedReader br = new BufferedReader(reader);

   String str=null;
   while((str=br.readLine())!=null){
       if("UserData".equals(str)) continue;
           String []tem =str.split(",");
           String []tem1 = user.split(",");
        if(tem[0].equals(tem1[0])){
            sym="0";
            break;
        }
    }
   br.close();
   if("1".equals(sym)){
       BufferedWriter writer = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(input, true)));
       writer.newLine();
       writer.write(user);
       writer.flush();writer.close();
   }
%>
    sym ="<%=sym%>";
if(sym=="0"){
        alert("用户已经存在！");
        history.back();
    }
else{
    alert("注册成功！即将跳转登陆界面");

    window.location.href=("http://localhost:88/login.jsp");

}
</script>

</body>
</html>
