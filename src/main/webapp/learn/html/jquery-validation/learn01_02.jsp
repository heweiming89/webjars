<%--
  Created by IntelliJ IDEA.
  User: heweiming
  Date: 2016/8/17
  Time: 21:45
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
    <script src="${ctx_path}/webjars/jquery-validation/1.15.1/dist/jquery.validate.min.js"></script>
    <script src="${ctx_path}/webjars/jquery-validation/1.15.1/src/localization/messages_zh.js"></script>
</head>
<body>
<!--[if lt IE 8]>

<![endif]-->

<!-- Add your site or application content here -->
<form class="cmxform" id="signupForm" method="get" action="">
    <fieldset>
        <legend>验证完整的表单</legend>
        <p>
            <label for="firstname">名字</label>
            <input id="firstname" name="firstname" type="text">
        </p>
        <p>
            <label for="lastname">姓氏</label>
            <input id="lastname" name="lastname" type="text">
        </p>
        <p>
            <label for="username">用户名</label>
            <input id="username" name="username" type="text">
        </p>
        <p>
            <label for="password">密码</label>
            <input id="password" name="password" type="password">
        </p>
        <p>
            <label for="confirm_password">验证密码</label>
            <input id="confirm_password" name="confirm_password" type="password">
        </p>
        <p>
            <label for="email">Email</label>
            <input id="email" name="email" type="email">
        </p>
        <p>
            <label for="agree">请同意我们的声明</label>
            <input type="checkbox" class="checkbox" id="agree" name="agree">
        </p>
        <p>
            <label for="newsletter">我乐意接收新信息</label>
            <input type="checkbox" class="checkbox" id="newsletter" name="newsletter">
        </p>
        <fieldset id="newsletter_topics">
            <legend>主题 (至少选择两个) - 注意：如果没有勾选“我乐意接收新信息”以下选项会隐藏，但我们这里作为演示让它可见</legend>
            <label for="topic_marketflash">
                <input type="checkbox" id="topic_marketflash" value="marketflash" name="topic">Marketflash
            </label>
            <label for="topic_fuzz">
                <input type="checkbox" id="topic_fuzz" value="fuzz" name="topic">Latest fuzz
            </label>
            <label for="topic_digester">
                <input type="checkbox" id="topic_digester" value="digester" name="topic">Mailing list digester
            </label>
            <label for="topic" class="error">Please select at least two topics you'd like to receive.</label>
        </fieldset>
        <p>
            <input class="submit" type="submit" value="提交">
        </p>
    </fieldset>
</form>



<script>
    $(function() {
        // 在键盘按下并释放及提交后验证提交表单
        $("#signupForm").validate({
            rules: {
                firstname: "required",
                lastname: "required",
                username: {
                    required: true,
                    minlength: 2
                },
                password: {
                    required: true,
                    minlength: 5
                },
                confirm_password: {
                    required: true,
                    minlength: 5,
                    equalTo: "#password"
                },
                email: {
                    required: true,
                    email: true
                },
                topic: {
                    required: "#newsletter:checked",
                    minlength: 2
                },
                agree: "required"
            },
            messages: {
                firstname: "请输入您的名字",
                lastname: "请输入您的姓氏",
                username: {
                    required: "请输入用户名",
                    minlength: "用户名必需由两个字母组成"
                },
                password: {
                    required: "请输入密码",
                    minlength: "密码长度不能小于 5 个字母"
                },
                confirm_password: {
                    required: "请输入密码",
                    minlength: "密码长度不能小于 5 个字母",
                    equalTo: "两次密码输入不一致"
                },
                email: "请输入一个正确的邮箱",
                agree: "请接受我们的声明",
                topic: "请选择两个主题"
            }
        })
    });



</script>
</body>
</html>
