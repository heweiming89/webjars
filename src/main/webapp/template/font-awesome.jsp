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

<!-- Add your site or application content here -->
<p>Hello world! This is HTML5 Boilerplate.</p>
<i class="fa fa-camera-retro"></i> fa-camera-retro
<i class="fa fa-camera-retro fa-lg"></i> fa-lg
<i class="fa fa-camera-retro fa-2x"></i> fa-2x
<i class="fa fa-camera-retro fa-3x"></i> fa-3x
<i class="fa fa-camera-retro fa-4x"></i> fa-4x
<i class="fa fa-camera-retro fa-5x"></i> fa-5x
<hr>
<div class="list-group">
    <a class="list-group-item" href="#"><i class="fa fa-home fa-fw" aria-hidden="true"></i>&nbsp; Home</a>
    <a class="list-group-item" href="#"><i class="fa fa-book fa-fw" aria-hidden="true"></i>&nbsp; Library</a>
    <a class="list-group-item" href="#"><i class="fa fa-pencil fa-fw" aria-hidden="true"></i>&nbsp; Applications</a>
    <a class="list-group-item" href="#"><i class="fa fa-cog fa-fw" aria-hidden="true"></i>&nbsp; Settings</a>
</div>
<hr>
<ul class="fa-ul">
    <li><i class="fa-li fa fa-check-square"></i>List icons</li>
    <li><i class="fa-li fa fa-check-square"></i>can be used</li>
    <li><i class="fa-li fa fa-spinner fa-spin"></i>as bullets</li>
    <li><i class="fa-li fa fa-square"></i>in lists</li>
</ul>
<hr>
<i class="fa fa-quote-left fa-3x fa-pull-left fa-border" aria-hidden="true"></i>
...tomorrow we will run faster, stretch out our arms farther...
And then one fine morning— So we beat on, boats against the
current, borne back ceaselessly into the past.
<hr>
<i class="fa fa-spinner fa-spin fa-3x fa-fw"></i>
<span class="sr-only">Loading...</span>

<i class="fa fa-circle-o-notch fa-spin fa-3x fa-fw"></i>
<span class="sr-only">Loading...</span>

<i class="fa fa-refresh fa-spin fa-3x fa-fw"></i>
<span class="sr-only">Loading...</span>

<i class="fa fa-cog fa-spin fa-3x fa-fw"></i>
<span class="sr-only">Loading...</span>

<i class="fa fa-spinner fa-pulse fa-3x fa-fw"></i>
<span class="sr-only">Loading...</span>
<hr>
<i class="fa fa-shield"></i> normal<br>
<i class="fa fa-shield fa-rotate-90"></i> fa-rotate-90<br>
<i class="fa fa-shield fa-rotate-180"></i> fa-rotate-180<br>
<i class="fa fa-shield fa-rotate-270"></i> fa-rotate-270<br>
<i class="fa fa-shield fa-flip-horizontal"></i> fa-flip-horizontal<br>
<i class="fa fa-shield fa-flip-vertical"></i> fa-flip-vertical
<hr>
<span class="fa-stack fa-lg">
  <i class="fa fa-square-o fa-stack-2x"></i>
  <i class="fa fa-twitter fa-stack-1x"></i>
</span>
fa-twitter on fa-square-o<br>
<span class="fa-stack fa-lg">
  <i class="fa fa-circle fa-stack-2x"></i>
  <i class="fa fa-flag fa-stack-1x fa-inverse"></i>
</span>
fa-flag on fa-circle<br>
<span class="fa-stack fa-lg">
  <i class="fa fa-square fa-stack-2x"></i>
  <i class="fa fa-terminal fa-stack-1x fa-inverse"></i>
</span>
fa-terminal on fa-square<br>
<span class="fa-stack fa-lg">
  <i class="fa fa-camera fa-stack-1x"></i>
  <i class="fa fa-ban fa-stack-2x text-danger"></i>
</span>
fa-ban on fa-camera
<hr>
<a class="btn btn-danger" href="#">
    <i class="fa fa-trash-o fa-lg"></i> Delete</a>
<a class="btn btn-default btn-sm" href="#">
    <i class="fa fa-cog"></i> Settings</a>

<a class="btn btn-lg btn-success" href="#">
    <i class="fa fa-flag fa-2x pull-left"></i> Font Awesome<br>Version 4.6.3</a>

<div class="btn-group">
    <a class="btn btn-default" href="#">
        <i class="fa fa-align-left" title="Align Left"></i>
    </a>
    <a class="btn btn-default" href="#">
        <i class="fa fa-align-center" title="Align Center"></i>
    </a>
    <a class="btn btn-default" href="#">
        <i class="fa fa-align-right" title="Align Right"></i>
    </a>
    <a class="btn btn-default" href="#">
        <i class="fa fa-align-justify" title="Align Justify"></i>
    </a>
</div>

<div class="input-group margin-bottom-sm">
    <span class="input-group-addon"><i class="fa fa-envelope-o fa-fw"></i></span>
    <input class="form-control" type="text" placeholder="Email address">
</div>
<div class="input-group">
    <span class="input-group-addon"><i class="fa fa-key fa-fw"></i></span>
    <input class="form-control" type="password" placeholder="Password">
</div>

<div class="btn-group open">
    <a class="btn btn-primary" href="#"><i class="fa fa-user fa-fw"></i> User</a>
    <a class="btn btn-primary dropdown-toggle" data-toggle="dropdown" href="#">
        <span class="fa fa-caret-down" title="Toggle dropdown menu"></span>
    </a>
    <ul class="dropdown-menu">
        <li><a href="#"><i class="fa fa-pencil fa-fw"></i> Edit</a></li>
        <li><a href="#"><i class="fa fa-trash-o fa-fw"></i> Delete</a></li>
        <li><a href="#"><i class="fa fa-ban fa-fw"></i> Ban</a></li>
        <li class="divider"></li>
        <li><a href="#"><i class="fa fa-unlock"></i> Make admin</a></li>
    </ul>
</div>
<hr>
<div id="page-wrap">
    <div class="rating">
        <span>☆</span><span>☆</span><span>☆</span><span>☆</span><span>☆</span>
    </div>
</div>
<hr>
<hr>
<hr>
<hr>
<hr>


<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script>window.jQuery || document.write('<script src="${ctx_path}/webjars/jquery/1.12.4/jquery.min.js"><\/script>')</script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="${ctx_path}/webjars/bootstrap/3.3.7-1/js/bootstrap.min.js"></script>
<script src="${ctx_path}/webjars/bootstrap-star-rating/4.0.1/js/star-rating.min.js"></script>
<script>
    console.info("${ctx_path}");
</script>
</body>
</html>

