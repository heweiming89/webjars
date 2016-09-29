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
    <script src="${ctx_path}/webjars/jquery-validation/1.15.1/dist/jquery.validate.min.js"></script>
    <script src="${ctx_path}/webjars/jquery-validation/1.15.1/src/localization/messages_zh.js"></script>
</head>
<body>
<!--[if lt IE 8]>

<![endif]-->

<!-- Add your site or application content here -->
<p>Hello world! This is HTML5 Boilerplate.</p>
<form class="cmxform" id="commentForm" method="get" action="">
    <fieldset>
        <legend>输入您的名字，邮箱，URL，备注。</legend>
        <p>
            <label for="cname">Name (必需, 最小两个字母)</label>
            <input id="cname" name="name" minlength="2" type="text" required>
        </p>
        <p>
            <label for="cemail">E-Mail (必需)</label>
            <input id="cemail" type="email" name="email" required>
        </p>
        <p>
            <label for="curl">URL (可选)</label>
            <input id="curl" type="url" name="url">
        </p>
        <p>
            <label for="ccomment">备注 (必需)</label>
            <textarea id="ccomment" name="comment" required></textarea>
        </p>
        <p>
            <input class="submit" type="submit" value="Submit">
        </p>
    </fieldset>
</form>


<script>
    $(function () {
        $.validator.setDefaults({
            submitHandler: function() {
                alert("提交事件!");
            }
        });
        $().ready(function() {
            $("#commentForm").validate();
        });
    });


</script>
</body>
</html>
