<%--
  Created by IntelliJ IDEA.
  User: heweiming
  Date: 2016/8/14
  Time: 9:58
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
    <%--<link rel="apple-touch-icon" href="apple-touch-icon.png">--%>
    <!-- Place favicon.ico in the root directory -->
    <meta name="description" content="">
    <!-- Font Awesome -->
    <link href="${ctx_path}/webjars/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet">
    <!-- Bootstrap -->
    <link href="${ctx_path}/webjars/bootstrap/3.3.7-1/css/bootstrap.min.css" rel="stylesheet">
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="${ctx_path}/webjars/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="${ctx_path}/webjars/respond/1.4.2/dest/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<!--[if lt IE 8]>
<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade
    your browser</a> to improve your experience.</p>
<![endif]-->

<!-- Add your site or application content here -->

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="${ctx_path}/webjars/jquery/2.2.4/jquery.min.js"></script>
<script src="${ctx_path}/webjars/bootstrap/3.3.7-1/js/bootstrap.min.js"></script>
<script>
    console.info("${ctx_path}");
</script>
</body>
</html>

