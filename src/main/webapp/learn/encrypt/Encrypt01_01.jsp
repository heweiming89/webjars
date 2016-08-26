<%--
  Created by IntelliJ IDEA.
  User: heweiming
  Date: 2016/8/17
  Time: 20:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx_path" value="${pageContext.request.contextPath }"/>
<!doctype html>
<html class="no-js" lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Bootstrap 101 Template</title>
    <link rel="apple-touch-icon" href="apple-touch-icon.png">
    <!-- Place favicon.ico in the root directory -->
    <meta name="description" content="">
    <script src="${ctx_path}/webjars/jquery/1.12.4/jquery.min.js"></script>
    <script src="${ctx_path}/webjars/jsencrypt/2.3.0/bin/jsencrypt.min.js"></script>
</head>
<body>
<!--[if lt IE 8]>

<![endif]-->

<!-- Add your site or application content here -->
<p>Hello world! This is HTML5 Boilerplate.</p>
<form id="encrypt_form"  action="${ctx_path}/cncrypt">
    <input type="text" name="username" id="username">
    <br/>
    <input type="password" name="password" id="password">
    <br/>
    <button type="submit">提交表单</button>
</form>


<script>
    function encryptText(plaintext){
        var public_key = "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCtdFAsGlWX9b3tgQ0nC3Z0047cU3j7jFhMkSE2YP2h59BRcrqcZ9EyP3K3ecAcI7yNRu6SSjxwt9KbBmVrQ+6Dl5ew/t/MhrEsbrmGh5hAuJBAyb1u+/Lk/uG2pFP8LwBzrojR9TA4CK6e8kUPLwdVCTaTZ0rhQ++1MsEkJbG6twIDAQAB";
        var encrypt = new JSEncrypt();
        encrypt.setPublicKey(public_key);
        return encrypt.encrypt(plaintext);
    }



    $(function(){
        $('#encrypt_form').on("submit",function(){
            $(this).find('input[type="password"]').each(function(index,domEle){
              if($(domEle).val()){
                  $(domEle).val(encryptText($(domEle).val()));
              }
            });
        });
    });



</script>
</body>
</html>
