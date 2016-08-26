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
    <title>bootstrap-daterangepicker</title>
    <%--<link rel="apple-touch-icon" href="apple-touch-icon.png">--%>
    <!-- Place favicon.ico in the root directory -->
    <meta name="description" content="">
    <!-- Font Awesome -->
    <link href="${ctx_path}/webjars/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet">
    <!-- Bootstrap -->
    <link href="${ctx_path}/webjars/bootstrap/3.3.7-1/css/bootstrap.min.css" rel="stylesheet">

    <link rel="stylesheet"
          href="${ctx_path}/webjars/bootstrap-daterangepicker/2.1.19/css/bootstrap-daterangepicker.css">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="${ctx_path}/webjars/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="${ctx_path}/webjars/respond/1.4.2/dest/respond.min.js"></script>
    <![endif]-->
    <style type="text/css">
        .demo {
            position: relative;
        }

        .demo i {
            position: absolute;
            bottom: 10px;
            right: 24px;
            top: auto;
            cursor: pointer;
        }
    </style>
</head>
<body style="margin: 60px 0">
<!--[if lt IE 8]>
<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade
    your browser</a> to improve your experience.</p>
<![endif]-->

<!-- Add your site or application content here -->
<div class="container">

    <h1 style="margin: 0 0 20px 0">Configuration Builder</h1>

    <div class="well configurator">

        <form>
            <div class="row">

                <div class="col-md-4">

                    <div class="form-group">
                        <label for="parentEl">parentEl</label>
                        <input type="text" class="form-control" id="parentEl" value="" placeholder="body">
                    </div>

                    <div class="form-group">
                        <label for="startDate">startDate</label>
                        <input type="text" class="form-control" id="startDate" value="2016-01-01">
                    </div>

                    <div class="form-group">
                        <label for="endDate">endDate</label>
                        <input type="text" class="form-control" id="endDate" value="2016-12-30">
                    </div>

                    <div class="form-group">
                        <label for="minDate">minDate</label>
                        <input type="text" class="form-control" id="minDate" value="" placeholder="YYYY-MM-DD">
                    </div>

                    <div class="form-group">
                        <label for="maxDate">maxDate</label>
                        <input type="text" class="form-control" id="maxDate" value="" placeholder="YYYY-MM-DD">
                    </div>

                </div>
                <div class="col-md-4">

                    <div class="checkbox">
                        <label>
                            <input type="checkbox" id="autoApply"> autoApply
                        </label>
                    </div>

                    <div class="checkbox">
                        <label>
                            <input type="checkbox" id="singleDatePicker"> singleDatePicker
                        </label>
                    </div>

                    <div class="checkbox">
                        <label>
                            <input type="checkbox" id="showDropdowns"> showDropdowns
                        </label>
                    </div>

                    <div class="checkbox">
                        <label>
                            <input type="checkbox" id="showWeekNumbers"> showWeekNumbers
                        </label>
                    </div>

                    <div class="checkbox">
                        <label>
                            <input type="checkbox" id="showISOWeekNumbers"> showISOWeekNumbers
                        </label>
                    </div>

                    <div class="checkbox">
                        <label>
                            <input type="checkbox" id="timePicker"> timePicker
                        </label>
                    </div>

                    <div class="checkbox">
                        <label>
                            <input type="checkbox" id="timePicker24Hour"> timePicker24Hour
                        </label>
                    </div>

                    <div class="form-group">
                        <label for="timePickerIncrement">timePickerIncrement (in minutes)</label>
                        <input type="text" class="form-control" id="timePickerIncrement" value="1">
                    </div>

                    <div class="checkbox">
                        <label>
                            <input type="checkbox" id="timePickerSeconds"> timePickerSeconds
                        </label>
                    </div>

                    <div class="checkbox">
                        <label>
                            <input type="checkbox" id="dateLimit"> dateLimit (with example date range span)
                        </label>
                    </div>

                    <div class="checkbox">
                        <label>
                            <input type="checkbox" id="ranges"> ranges (with example predefined ranges)
                        </label>
                    </div>

                    <div class="checkbox">
                        <label>
                            <input type="checkbox" id="locale"> locale (with example settings)
                        </label>
                    </div>

                    <div class="checkbox">
                        <label>
                            <input type="checkbox" id="linkedCalendars" checked="checked"> linkedCalendars
                        </label>
                    </div>

                    <div class="checkbox">
                        <label>
                            <input type="checkbox" id="autoUpdateInput" checked="checked"> autoUpdateInput
                        </label>
                    </div>

                    <div class="checkbox">
                        <label>
                            <input type="checkbox" id="alwaysShowCalendars"> alwaysShowCalendars
                        </label>
                    </div>

                </div>
                <div class="col-md-4">

                    <div class="form-group">
                        <label for="opens">opens</label>
                        <select id="opens" class="form-control">
                            <option value="right" selected>right</option>
                            <option value="left">left</option>
                            <option value="center">center</option>
                        </select>
                    </div>

                    <div class="form-group">
                        <label for="drops">drops</label>
                        <select id="drops" class="form-control">
                            <option value="down" selected>down</option>
                            <option value="up">up</option>
                        </select>
                    </div>

                    <div class="form-group">
                        <label for="buttonClasses">buttonClasses</label>
                        <input type="text" class="form-control" id="buttonClasses" value="btn btn-sm">
                    </div>

                    <div class="form-group">
                        <label for="applyClass">applyClass</label>
                        <input type="text" class="form-control" id="applyClass" value="btn-success">
                    </div>

                    <div class="form-group">
                        <label for="cancelClass">cancelClass</label>
                        <input type="text" class="form-control" id="cancelClass" value="btn-default">
                    </div>

                </div>

            </div>
        </form>

    </div>

    <div class="row">

        <div class="col-md-4 col-md-offset-2 demo">
            <h4>Your Date Range Picker</h4>
            <input type="text" id="config-demo" class="form-control">
            <i class="glyphicon glyphicon-calendar fa fa-calendar"></i>
        </div>

        <div class="col-md-6">
            <h4>Configuration</h4>

            <div class="well">
                <textarea id="config-text" style="height: 300px; width: 100%; padding: 10px"></textarea>
            </div>
        </div>

    </div>

</div>

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="${ctx_path}/webjars/jquery/1.12.4/jquery.min.js"></script>
<script src="${ctx_path}/webjars/bootstrap/3.3.7-1/js/bootstrap.min.js"></script>
<script src="${ctx_path}/webjars/momentjs/2.14.1/min/moment.min.js"></script>
<script src="${ctx_path}/webjars/momentjs/2.14.1/locale/zh-cn.js"></script>
<script src="${ctx_path}/webjars/bootstrap-daterangepicker/2.1.19/js/bootstrap-daterangepicker.js"></script>
<script>
    $(document).ready(function () {

        $('#config-text').keyup(function () {
            eval($(this).val());
        });

        $('.configurator input, .configurator select').change(function () {
            updateConfig();
        });

        $('.demo i').click(function () {
            $(this).parent().find('input').click();
        });

        $('#startDate').daterangepicker({
            singleDatePicker: true,
            startDate: moment().subtract(6, 'days')
        });

        $('#endDate').daterangepicker({
            singleDatePicker: true,
            startDate: moment()
        });

        updateConfig();

        function updateConfig() {
            var options = {};

            if ($('#singleDatePicker').is(':checked'))
                options.singleDatePicker = true;

            if ($('#showDropdowns').is(':checked'))
                options.showDropdowns = true;

            if ($('#showWeekNumbers').is(':checked'))
                options.showWeekNumbers = true;

            if ($('#showISOWeekNumbers').is(':checked'))
                options.showISOWeekNumbers = true;

            if ($('#timePicker').is(':checked'))
                options.timePicker = true;

            if ($('#timePicker24Hour').is(':checked'))
                options.timePicker24Hour = true;

            if ($('#timePickerIncrement').val().length && $('#timePickerIncrement').val() != 1)
                options.timePickerIncrement = parseInt($('#timePickerIncrement').val(), 10);

            if ($('#timePickerSeconds').is(':checked'))
                options.timePickerSeconds = true;

            if ($('#autoApply').is(':checked'))
                options.autoApply = true;

            if ($('#dateLimit').is(':checked'))
                options.dateLimit = {days: 7};

            if ($('#ranges').is(':checked')) {
                options.ranges = {
                    'Today': [moment(), moment()],
                    'Yesterday': [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
                    'Last 7 Days': [moment().subtract(6, 'days'), moment()],
                    'Last 30 Days': [moment().subtract(29, 'days'), moment()],
                    'This Month': [moment().startOf('month'), moment().endOf('month')],
                    'Last Month': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
                };
            }

            if ($('#locale').is(':checked')) {
                options.locale = {
                    format: 'YYYY-MM-DD',
                    separator: ' - ',
                    applyLabel: 'Apply',
                    cancelLabel: 'Cancel',
                    fromLabel: 'From',
                    toLabel: 'To',
                    customRangeLabel: 'Custom',
//                    daysOfWeek: ['Su', 'Mo', 'Tu', 'We', 'Th', 'Fr', 'Sa'],
//                    monthNames: ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'],
                    firstDay: 1
                };
            }

            if (!$('#linkedCalendars').is(':checked'))
                options.linkedCalendars = false;

            if (!$('#autoUpdateInput').is(':checked'))
                options.autoUpdateInput = false;

            if ($('#alwaysShowCalendars').is(':checked'))
                options.alwaysShowCalendars = true;

            if ($('#parentEl').val().length)
                options.parentEl = $('#parentEl').val();

            if ($('#startDate').val().length)
                options.startDate = $('#startDate').val();

            if ($('#endDate').val().length)
                options.endDate = $('#endDate').val();

            if ($('#minDate').val().length)
                options.minDate = $('#minDate').val();

            if ($('#maxDate').val().length)
                options.maxDate = $('#maxDate').val();

            if ($('#opens').val().length && $('#opens').val() != 'right')
                options.opens = $('#opens').val();

            if ($('#drops').val().length && $('#drops').val() != 'down')
                options.drops = $('#drops').val();

            if ($('#buttonClasses').val().length && $('#buttonClasses').val() != 'btn btn-sm')
                options.buttonClasses = $('#buttonClasses').val();

            if ($('#applyClass').val().length && $('#applyClass').val() != 'btn-success')
                options.applyClass = $('#applyClass').val();

            if ($('#cancelClass').val().length && $('#cancelClass').val() != 'btn-default')
                options.cancelClass = $('#cancelClass').val();

            $('#config-text').val("$('#demo').daterangepicker(" + JSON.stringify(options, null, '    ') + ", function(start, end, label) {\n  console.log(\"New date range selected: ' + start.format('YYYY-MM-DD') + ' to ' + end.format('YYYY-MM-DD') + ' (predefined range: ' + label + ')\");\n});");

            $('#config-demo').daterangepicker(options, function (start, end, label) {
                console.log('New date range selected: ' + start.format('YYYY-MM-DD') + ' to ' + end.format('YYYY-MM-DD') + ' (predefined range: ' + label + ')');
            });

        }
    });

</script>
</body>
</html>

