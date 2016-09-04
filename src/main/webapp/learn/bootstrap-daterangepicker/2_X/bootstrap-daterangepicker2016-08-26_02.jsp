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
    <title>Predefined Ranges</title>
    <%--<link rel="apple-touch-icon" href="apple-touch-icon.png">--%>
    <!-- Place favicon.ico in the root directory -->
    <meta name="description" content="">
    <!-- Font Awesome -->
    <link href="${ctx_path}/webjars/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet">
    <!-- Bootstrap -->
    <link href="${ctx_path}/webjars/bootstrap/3.3.7-1/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="${ctx_path}/webjars/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet">
    <link href="${ctx_path}/webjars/bootstrap-daterangepicker/2.1.19/css/bootstrap-daterangepicker.css"
          rel="stylesheet">

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

<%--<div class="input-group input-medium date date-picker" data-date-format="yyyy-mm-dd"--%>
<%--data-date-viewmode="years">--%>
<%--<input type="text" class="form-control" readonly id="startDate">--%>
<%--<span class="input-group-btn">--%>
<%--<button class="btn default" type="button"><i class="fa fa-calendar"></i></button>--%>
<%--</span>--%>
<%--</div>--%>


<!-- Add your site or application content here -->
<%--<div class="container">--%>
<div class="row" style="margin-top: 20px;margin-left: 20px;">
    <div class="col-md-4" style="padding: 0px;">
        <div class="form-group">
            <div class="input-group" style="width: 240px;">
                <label style="padding-top: 5px;margin-right: 2px;">时间范围：</label>
                <div id="reportrange" class="form-control">
                    <i class="fa fa-calendar"></i>&nbsp;
                    <span></span>
                </div>
            </div>
        </div>
    </div>
</div>
<%--</div>--%>


<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="${ctx_path}/webjars/jquery/2.2.4/jquery.min.js"></script>
<script src="${ctx_path}/webjars/bootstrap/3.3.7-1/js/bootstrap.min.js"></script>
<script src="${ctx_path}/webjars/momentjs/2.14.1/min/moment.min.js"></script>
<script src="${ctx_path}/webjars/momentjs/2.14.1/locale/zh-cn.js"></script>
<script src="${ctx_path}/webjars/bootstrap-daterangepicker/2.1.19/js/bootstrap-daterangepicker.js"></script>
<script>
    $(function () {

        var dateFormatting = "YYYY-MM-DD";
        var start = moment().subtract(29, 'days');
        var end = moment();

        function cb(start, end) {
            $('#reportrange span').html(start.format(dateFormatting) + ' ~ ' + end.format(dateFormatting));
        }

        $('#reportrange').daterangepicker({
            opens: 'right',
            startDate: start,
            endDate: end,
            dateLimit: {
                days: 90
            },
            locale: {
                format: dateFormatting,
                applyLabel: '确认',
                cancelLabel: '取消',
                customRangeLabel: '自定义范围'
            },
            ranges: {
                '今天': [moment(), moment()],
                '昨天': [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
                '最近7天': [moment().subtract(6, 'days'), moment()],
                '最近30天': [moment().subtract(29, 'days'), moment()],
                '本月': [moment().startOf('month'), moment().endOf('month')],
                '上个月': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
            }
        }, cb);

//        cb(start, end);

    });
</script>
</body>
</html>

