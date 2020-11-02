<%@ page  import="java.util.*" %>
<%@ page import="java.io.*" %>
  Created by IntelliJ IDEA.
  User: 11861
  Date: 2020/11/2
  Time: 15:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登陆洛谷ing</title>
    <style type="text/css">
        span{
            color: crimson;
            font-size:  0.75rem;
        }
    </style>
</head>
<body>
<script type="text/javascript">
    var sym ="1";
    <%
        String sym = "1";
        request.setCharacterEncoding("UTF-8");//设置统一字符编码
        String username = request.getParameter("username");
        String password = request.getParameter("password1");
        String input = "C:\\Users\\11861\\IdeaProjects\\Try\\web\\user.txt";
        String user = username+','+password;
        FileInputStream fis = new FileInputStream(input);

        InputStreamReader reader = new InputStreamReader(fis,"UTF-8");

        BufferedReader br = new BufferedReader(reader);

       String str=null;
       while((str=br.readLine())!=null){
           if("UserData".equals(str)) continue;
           String []tem =str.split(",");
           String tem1= tem[0]+','+tem[1];
            if(tem1.equals(user)){
                sym="0";
                break;
            }
        }
       br.close();
    %>
    sym ="<%=sym%>";
    if(sym=="0"){
        alert("登陆成功");
        window.location.href=("https://www.luogu.com.cn/");
    }
    else{
        alert("用户不存在！");
        history.back();
    }
</script>
</body>
</html>
