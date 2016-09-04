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
    <link rel="apple-touch-icon" href="apple-touch-icon.png">
    <!-- Place favicon.ico in the root directory -->
    <meta name="description" content="">
    <!-- Bootstrap -->
    <link href="${ctx_path}/webjars/bootstrap/3.3.7-1/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="${ctx_path}/webjars/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet">
    <!-- Bootstrap Star Rating -->
    <link href="${ctx_path}/webjars/bootstrap-star-rating/4.0.1/css/star-rating.min.css" media="all" rel="stylesheet"
          type="text/css">
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>


<!--[if lt IE 8]>
<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade
    your browser</a> to improve your experience.</p>
<![endif]-->

<input id="input-id" name="input-name" type="number" class="rating" min=0 max=5 step=0.5 data-size="xs"
       data-rtl="false">


<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script>window.jQuery || document.write('<script src="${ctx_path}/webjars/jquery/1.12.4/jquery.min.js"><\/script>')</script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="${ctx_path}/webjars/bootstrap/3.3.7-1/js/bootstrap.min.js"></script>
<script src="${ctx_path}/webjars/bootstrap-star-rating/4.0.1/js/star-rating.min.js"></script>
<script>
    console.info("${ctx_path}");
    $("#input-id").rating({

        emptyStar: '<i class="fa fa-star-o" aria-hidden="true"></i>',
        filledStar: '<i class="fa fa-star" aria-hidden="true"></i>',
        starCaptions: {
            0.5: '半星',
            1: '一星',
            1.5: '一星半',
            2: '两星',
            2.5: '两星半',
            3: '三星',
            3.5: '三星半',
            4: '四星',
            4.5: '四星半',
            5: '五星'
        }
    });
    $("#input-id").on("rating.change", function (event, value, caption) {
        console.info("---------");
        console.info(value);
        console.info(caption);
    });
    $("#input-id").on("rating.clear", function (event) {
        console.info("rating.clear");
    });
</script>
</body>
</html>

