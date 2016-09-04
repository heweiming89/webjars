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

    <link href="${ctx_path}/static/plug-ins/bootstrap-daterangepicker-1.3.23/daterangepicker-bs3.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="${ctx_path}/webjars/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="${ctx_path}/webjars/respond/1.4.2/dest/respond.min.js"></script>
    <![endif]-->

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="${ctx_path}/webjars/jquery/2.2.4/jquery.min.js"></script>
    <script src="${ctx_path}/webjars/bootstrap/3.3.7-1/js/bootstrap.min.js"></script>
    <script src="${ctx_path}/static/plug-ins/moment-2.9.0/min/moment.min.js"></script>
    <script src="${ctx_path}/static/plug-ins/moment-2.9.0/locale/zh-cn.js"></script>
    <script src="${ctx_path}/static/plug-ins/bootstrap-daterangepicker-1.3.23/daterangepicker.js"></script>
</head>
<body>
<!--[if lt IE 8]>
<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade
    your browser</a> to improve your experience.</p>
<![endif]-->

<!-- Add your site or application content here -->
<div class="container">
    <div class="span12">

        <h1>Usage Examples</h1>

        <hr/>

        <h4>Basic Date Range Picker</h4>
        <div class="well">

            <form class="form-horizontal">
                <fieldset>
                    <div class="control-group">
                        <div class="controls">
                            <div class="input-prepend input-group">
                                <span class="add-on input-group-addon"><i
                                        class="glyphicon glyphicon-calendar fa fa-calendar"></i></span><input
                                    type="text" style="width: 200px" name="reservation" id="reservation"
                                    class="form-control" value="03/18/2013 - 03/23/2013"/>
                            </div>
                        </div>
                    </div>
                </fieldset>
            </form>

            <script type="text/javascript">
                $(document).ready(function () {
                    $('#reservation').daterangepicker(null, function (start, end, label) {
                        console.log(start.toISOString(), end.toISOString(), label);
                    });
                });
            </script>

        </div>


        <h4>Basic Single Date Picker</h4>
        <div class="well">

            <form class="form-horizontal">
                <fieldset>
                    <div class="control-group">
                        <div class="controls">
                            <div class="input-prepend input-group">
                                <span class="add-on input-group-addon"><i
                                        class="glyphicon glyphicon-calendar fa fa-calendar"></i></span><input
                                    type="text" style="width: 200px" name="birthday" id="birthday" class="form-control"
                                    value="03/18/2013"/>
                            </div>
                        </div>
                    </div>
                </fieldset>
            </form>

            <script type="text/javascript">
                $(document).ready(function () {
                    $('#birthday').daterangepicker({singleDatePicker: true}, function (start, end, label) {
                        console.log(start.toISOString(), end.toISOString(), label);
                    });
                });
            </script>

        </div>

        <h4>Date Range &amp; Time Picker with 30 Minute Increments</h4>
        <div class="well">

            <form class="form-horizontal">
                <fieldset>
                    <div class="control-group">
                        <label class="control-label" for="reservationtime">Choose your check-in and check-out
                            times:</label>
                        <div class="controls">
                            <div class="input-prepend input-group">
                                <span class="add-on input-group-addon"><i
                                        class="glyphicon glyphicon-calendar fa fa-calendar"></i></span>
                                <input type="text" style="width: 400px" name="reservation" id="reservationtime"
                                       class="form-control" value="08/01/2013 1:00 PM - 08/01/2013 1:30 PM"
                                       class="span4"/>
                            </div>
                        </div>
                    </div>
                </fieldset>
            </form>

            <script type="text/javascript">
                $(document).ready(function () {
                    $('#reservationtime').daterangepicker({
                        timePicker: true,
                        timePickerIncrement: 30,
                        format: 'MM/DD/YYYY h:mm A'
                    }, function (start, end, label) {
                        console.log(start.toISOString(), end.toISOString(), label);
                    });
                });
            </script>

        </div>

        <h4>Options Usage</h4>

        <div class="well" style="overflow: auto">

            <button id="options1" class="btn btn-primary">Apply Option Set 1</button>

            <button id="options2" class="btn btn-primary">Apply Option Set 2</button>

            <button id="destroy" class="btn btn-primary">Remove DateRangePicker</button>

            <div id="reportrange" class="pull-right"
                 style="background: #fff; cursor: pointer; padding: 5px 10px; border: 1px solid #ccc">
                <i class="glyphicon glyphicon-calendar fa fa-calendar"></i>
                <span></span> <b class="caret"></b>
            </div>

            <script type="text/javascript">
                $(document).ready(function () {

                    var cb = function (start, end, label) {
                        console.log(start.toISOString(), end.toISOString(), label);
                        $('#reportrange span').html(start.format('MMMM D, YYYY') + ' - ' + end.format('MMMM D, YYYY'));
                        //alert("Callback has fired: [" + start.format('MMMM D, YYYY') + " to " + end.format('MMMM D, YYYY') + ", label = " + label + "]");
                    };

                    var optionSet1 = {
                        startDate: moment().subtract(29, 'days'),
                        endDate: moment(),
						// minDate: '01/01/2012',
						// maxDate: '12/31/2015',
                        dateLimit: {days: 60},
                        showDropdowns: true,
                        showWeekNumbers: true,
                        timePicker: false,
                        timePickerIncrement: 1,
                        timePicker12Hour: true,
                        ranges: {
                            'Today': [moment(), moment()],
                            'Yesterday': [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
                            'Last 7 Days': [moment().subtract(6, 'days'), moment()],
                            'Last 30 Days': [moment().subtract(29, 'days'), moment()],
                            'This Month': [moment().startOf('month'), moment().endOf('month')],
                            'Last Month': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
                        },
                        opens: 'left',
                        buttonClasses: ['btn btn-default'],
                        applyClass: 'btn-sm btn-primary',
                        cancelClass: 'btn-sm',
                        format: 'MM/DD/YYYY',
                        separator: ' to ',
                        locale: {
                            applyLabel: 'Submit',
                            cancelLabel: 'Clear',
                            fromLabel: 'From',
                            toLabel: 'To',
                            customRangeLabel: 'Custom',
                            daysOfWeek: ['Su', 'Mo', 'Tu', 'We', 'Th', 'Fr', 'Sa'],
                            monthNames: ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'],
                            firstDay: 1
                        }
                    };

                    var optionSet2 = {
                        startDate: moment().subtract(7, 'days'),
                        endDate: moment(),
                        opens: 'left',
                        ranges: {
                            'Today': [moment(), moment()],
                            'Yesterday': [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
                            'Last 7 Days': [moment().subtract(6, 'days'), moment()],
                            'Last 30 Days': [moment().subtract(29, 'days'), moment()],
                            'This Month': [moment().startOf('month'), moment().endOf('month')],
                            'Last Month': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
                        }
                    };

                    $('#reportrange span').html(moment().subtract(29, 'days').format('MMMM D, YYYY') + ' - ' + moment().format('MMMM D, YYYY'));

                    $('#reportrange').daterangepicker(optionSet1, cb);

                    $('#reportrange').on('show.daterangepicker', function () {
                        console.log("show event fired");
                    });
                    $('#reportrange').on('hide.daterangepicker', function () {
                        console.log("hide event fired");
                    });
                    $('#reportrange').on('apply.daterangepicker', function (ev, picker) {
                        console.log("apply event fired, start/end dates are "
                                + picker.startDate.format('MMMM D, YYYY')
                                + " to "
                                + picker.endDate.format('MMMM D, YYYY')
                        );
                    });
                    $('#reportrange').on('cancel.daterangepicker', function (ev, picker) {
                        console.log("cancel event fired");
                    });

                    $('#options1').click(function () {
                        $('#reportrange').data('daterangepicker').setOptions(optionSet1, cb);
                    });

                    $('#options2').click(function () {
                        $('#reportrange').data('daterangepicker').setOptions(optionSet2, cb);
                    });

                    $('#destroy').click(function () {
                        $('#reportrange').data('daterangepicker').remove();
                    });

                });
            </script>

        </div>


        <h4>Plays nicely with Bootstrap dropdowns</h4>

        <div class="well">

            <div class="dropdown" style="display: inline-block;">
                <a data-toggle="dropdown" class="btn btn-primary" href="#">Regular bootstrap dropdown</a>
                <ul class="dropdown-menu" role="menu" aria-labelledby="dLabel">
                    <li><a href="#">item</a></li>
                </ul>
            </div>

            <div id="reportrange2" class="btn"
                 style="display: inline-block; background: #fff; cursor: pointer; padding: 5px 10px; border: 1px solid #ccc">
                <i class="glyphicon glyphicon-calendar fa fa-calendar"></i>
                <span></span> <b class="caret"></b>
            </div>

            <script type="text/javascript">
                $(document).ready(function () {
                    $('#reportrange2 span').html(moment().subtract(29, 'days').format('MMMM D, YYYY') + ' - ' + moment().format('MMMM D, YYYY'));
                    $('#reportrange2').daterangepicker({
                        opens: 'center'
                    });
                });
            </script>

        </div>


        <h4>And also can drop "up"</h4>

        <div class="well">

            <form class="form-horizontal">
                <fieldset>
                    <div class="control-group">
                        <div class="controls">
                            <div class="input-prepend input-group">
                                <span class="add-on input-group-addon"><i
                                        class="glyphicon glyphicon-calendar fa fa-calendar"></i></span><input
                                    type="text" style="width: 200px" name="dropup" id="dropup" class="form-control"
                                    value="03/18/2013 - 03/23/2013"/>
                            </div>
                        </div>
                    </div>
                </fieldset>
            </form>

            <script type="text/javascript">
                $(document).ready(function () {
                    $('#dropup').daterangepicker({
                        drops: 'up'
                    });
                });
            </script>

        </div>


    </div>
</div>

<script>
    console.info("${ctx_path}");
</script>
</body>
</html>

