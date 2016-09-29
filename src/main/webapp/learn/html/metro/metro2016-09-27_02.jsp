<%--
  Created by IntelliJ IDEA.
  User: heweiming
  Date: 2016/9/27
  Time: 10:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx_path" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>虚拟键盘演示</title>
<link href="${ctx_path}/webjars/metro/3.0.15/build/css/metro.min.css" rel="stylesheet">
<link href="${ctx_path}/webjars/metro/3.0.15/build/css/metro-icons.min.css"
	rel="stylesheet">

<script src="${ctx_path}/webjars/jquery/2.2.4/jquery.min.js"></script>
<script src="${ctx_path}/webjars/metro/3.0.15/build/js/metro.min.js"></script>
</head>
<body>

	input-control text" data-role="keypad" data-shuffle="true" data-length="6"

	<h5>Custom keys, shuffle</h5>
	<div class="input-control text" data-role="keypad" data-shuffle="true"
		data-keys="1,2,3,4,5,6,7,8,9,0">
		<input type="text">
	</div>

	<ul class="nav navbar-nav pull-right">
		<li class="dropdown dropdown-user"><a href="javascript:;" class="dropdown-toggle"
			data-toggle="dropdown" data-hover="dropdown" data-close-others="true"> 
<%-- 			<img alt="" class="img-circle" src="${base}/resources/metronic_v3.7/admin/layout2/img/avatar.png" /> --%>
				<span id="current_user" class="username username-hide-on-mobile">
					1111 </span> &nbsp;&nbsp; 
<!-- 					<i class="fa fa-angle-down"></i> -->
		</a></li>
	</ul>

	<div class="input-control text">
		<input type="text" id="target3">
		<div class="button-group">
			<button class="button dropdown-toggle">
				<span class="mif-keyboard"></span>
			</button>
			<div data-role="dropdown" data-no-close="true" style="right: 0;">
				<div data-role="keypad" data-shuffle="true" data-target="#target3">
					<br />
				</div>
			</div>
		</div>
	</div>
</body>
</html>
