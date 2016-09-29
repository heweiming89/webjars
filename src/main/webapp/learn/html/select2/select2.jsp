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
    <!-- Bootstrap -->
    <link href="${ctx_path}/webjars/bootstrap/3.3.7-1/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="${ctx_path}/webjars/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet">
    <%--<link rel="stylesheet" href="${ctx_path}/webjars/select2-bootstrap-css/1.4.6/select2-bootstrap.min.css">--%>
    <link rel="stylesheet" href="${ctx_path}/webjars/select2/4.0.3/dist/css/select2.min.css">
</head>
<body>
<!--[if lt IE 8]>

<![endif]-->

<!-- Add your site or application content here -->
<select class="js-example-basic-single js-states form-control" id="id_label_single"></select>



</body>
<script src="${ctx_path}/webjars/jquery/2.2.4/jquery.min.js"></script>
<script src="${ctx_path}/webjars/bootstrap/3.3.7-1/js/bootstrap.min.js"></script>
<script src="${ctx_path}/webjars/select2/4.0.3/dist/js/i18n/zh-CN.js"></script>
<script src="${ctx_path}/webjars/select2/4.0.3/dist/js/select2.min.js"></script>
<script>

</script>
</html>
