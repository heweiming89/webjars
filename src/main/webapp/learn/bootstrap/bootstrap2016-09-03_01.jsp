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
    <link href="${ctx_path}/webjars/font-awesome/4.6.3/css/font-awesome.min.css"
          rel="stylesheet">
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
<div class="container">

    <div class="progress progress-striped active">
        <div class="progress-bar" style="width: 20%">
            <span class="sr-onley">45% Complete</span>
        </div>
    </div>

    <div class="alert">
        <button type="button" class="close" data-dismiss="alert">X</button>
        <strong>警告!</strong>你输入的项目不合法!
    </div>

    <div class="btn-group hidden">
        <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
            我的书籍 <span class="caret"></span>
        </button>
        <ul class="dropdown-menu">
            <li><a href="#">JavaScript编程精解</a></li>
            <li><a href="#">JavaScript设计模式</a></li>
            <li><a href="#">JavaScript启示录</a></li>
            <li class="divider"></li>
            <li><a href="#">深入理解Bootstrap3</a></li>
        </ul>
    </div>

    <ul class="nav nav-tabs" id="myTab">
        <li class="active"><a data-toggle="tab" href="#home">首页</a></li>
        <li><a data-toggle="tab" href="#profile">个人资料</a></li>
        <li class="dropdown">
            <!-- 单击“我的书籍”时，弹出下拉菜单 --> <a data-toggle="dropdown" href="#" class="dropdown-toggle">
            我的书籍 <b class="caret"></b>
        </a>
            <ul class="dropdown-menu">
                <li><a data-toggle="tab" href="#dropdown1">JavaScript编程精解</a></li>
                <li><a data-toggle="tab" href="#dropdown2">JavaScript设计模式</a></li>
                <li><a data-toggle="tab" href="#dropdown3">JavaScript启示录</a></li>
                <li class="divider"></li>
                <li><a data-toggle="tab" href="#dropdown4">深入理解Bootstrap</a></li>
            </ul>
        </li>
    </ul>
    <div class="tab-content" id="myTabContent">
        <div id="home" class="tab-pane fade active in">单击“首页”显示该区域</div>
        <div id="profile" class="tab-pane fade">单击”个人资料”时显示该区域</div>
        <div id="dropdown1" class="tab-pane fade">单击“JavaScript编程精解”时显示该区域</div>
        <div id="dropdown2" class="tab-pane fade">单击“JavaScript设计模式”时显示该区域</div>
        <div id="dropdown3" class="tab-pane fade">单击“JavaScript启示录”时显示该区域</div>
        <div id="dropdown4" class="tab-pane fade">单击“深入理解Bootstrap3”时显示该区域</div>
    </div>

    <h1>Bootstrap权威指南</h1>
    <h2>Bootstrap权威指南</h2>
    <h3>Bootstrap权威指南</h3>
    <h4>Bootstrap权威指南</h4>
    <h5>Bootstrap权威指南</h5>
    <h6>Bootstrap权威指南</h6>
    <hr/>
    <span class="h1">Bootstrap权威指南</span><br/> <span class="h2">Bootstrap权威指南</span><br/>
    <span class="h3">Bootstrap权威指南</span><br/> <span class="h4">Bootstrap权威指南</span><br/>
    <span class="h5">Bootstrap权威指南</span><br/> <span class="h6">Bootstrap权威指南</span><br/>
    <hr/>

    <p class="text-left">JavaScript编程精解</p>
    <p class="text-center">JavaScript设计模式</p>
    <p class="text-right">JavaScript启示录</p>
    <p class="text-justify">Backbone应用开发实战</p>

    <abbr title="JavaScript设计模式是一本">JavaScript设计模式</abbr> <abbr class="initialism"
                                                                title="JavaScript设计模式是一本">JavaScript设计模式</abbr>

    <hr/>

    <address>
        <strong>Twitter,Inc.</strong> 795 Folsom Ave,Suite 600<br/> San Francisco,CA 94107<br/>
        (123) 456-7890
    </address>

    <address>
        <strong>汤姆大叔</strong> <a href="mailto:#">tomxu@utlook.com</a>
    </address>

    <hr/>
    <blockquote>
        <p>不愤不启，不悱不发。举一隅，不以三隅反，则吾不复也</p>
        <small>出自 <cite title="论语·述而">论语</cite></small>
    </blockquote>
    <hr/>
    <blockquote class="pull-right">
        <p>不愤不启，不悱不发。举一隅，不以三隅反，则吾不复也</p>
        <small>出自 <cite title="论语·述而">论语</cite></small>
    </blockquote>
    <hr/>

    <div class="form-group cleanfix">
        <label class=“sr-only” for="account">登录用户名</label> <input type="text"
                                                                  class="form-control" id="account"
                                                                  placeholder="请输入你的用户名">
    </div>

    <div class="checkbox">
        <label><input type="checkbox" value=""/>是否想赚大钱？</label>

    </div>

    <div class="form-group has-warning">
        <label class="control-label" for="inputWarning">输入长度不够！ </label> <input type="text"
                                                                                class="form-control" id="Text1">
    </div>
    <div class="form-group has-error">
        <label class="control-label" for="inputError">输入不符合要求！ </label> <input type="text"
                                                                               class="form-control" id="Text2">
    </div>
    <div class="form-group has-success">
        <label class="control-label" for="inputSuccess">输入文本符合要求！ </label> <input type="text"
                                                                                  class="form-control" id="Text3">
    </div>

    <div class="form-group has-success has-feedback">
        <label class="controllabel" for="inputSuccess2">Input with success</label> <input
            type="text" class="form-control" id="inputSuccess2"/> <span
            class="glyphicon glyphicon-ok form-control-feedback"></span>
    </div>
    <div class="form-group has-warning has-feedback">
        <label class="controllabel" for="inputSuccess2">Input with warning</label> <input
            type="text" class="form-control" id="inputSuccess2"/> <span
            class="glyphicon glyphicon-warning-sign form-control-feedback"></span>
    </div>
    <div class="form-group has-error has-feedback">
        <label class="controllabel" for="inputSuccess2">Input with error</label> <input
            type="text" class="form-control" id="inputSuccess2"/> <span
            class="glyphicon glyphicon-remove form-control-feedback"></span>
    </div>
    <span class="help-block text-center">自己独占一行或多行的块级帮助文本。</span>

    <hr/>
    <!-- 标准button -->
    <button type="button" class="btn btn-default">Default</button>
    <!-- 提供视觉加重，表示在一组button中，该按钮是最主要的button -->
    <button type="button" class="btn btn-primary">Primary</button>
    <!-- 表示成功或正使用的button -->
    <button type="button" class="btn btn-success">Success</button>
    <!-- 表示提示信息的button -->
    <button type="button" class="btn btn-info">Info</button>
    <!-- 表示需要进行某种行为的button -->
    <button type="button" class="btn btn-warning">Warning</button>
    <!-- 表示危险或错误行为的button -->
    <button type="button" class="btn btn-danger">Danger</button>
    <!-- 让button的行为看起来像连接一样 -->
    <button type="button" class="btn btn-link">Link</button>
    <hr/>
    <!-- 标准button -->
    <button type="button" class="btn btn-default btn-block">Default</button>
    <!-- 提供视觉加重，表示在一组button中，该按钮是最主要的button -->
    <button type="button" class="btn btn-primary btn-block">Primary</button>
    <!-- 表示成功或正使用的button -->
    <button type="button" class="btn btn-success btn-block">Success</button>
    <!-- 表示提示信息的button -->
    <button type="button" class="btn btn-info btn-block">Info</button>
    <!-- 表示需要进行某种行为的button -->
    <button type="button" class="btn btn-warning btn-block">Warning</button>
    <!-- 表示危险或错误行为的button -->
    <button type="button" class="btn btn-danger btn-block">Danger</button>
    <!-- 让button的行为看起来像连接一样 -->
    <button type="button" class="btn btn-link btn-block">Link</button>
    <hr/>
    <p class="text-muted">测试文本</p>
    <p class="text-primary">测试文本</p>
    <p class="text-success">测试文本</p>
    <p class="text-info">测试文本</p>
    <p class="text-warning">测试文本</p>
    <p class="text-danger">测试文本</p>
    <hr/>
    <p class="bg-primary">测试文本</p>
    <p class="bg-success">测试文本</p>
    <p class="bg-info">测试文本</p>
    <p class="bg-warning">测试文本</p>
    <p class="bg-danger">测试文本</p>
    <hr/>
    <button type="button" class="close">&times;</button>
    <a class="close">&times;</a>
    <hr/>
    <div class="control-group">
        <div class="controls">
            <div class="input-group">
					<span class="input-group-addon"> <i class="glyphicon glyphicon-envelope"></i>
					</span> <input class="form-control col col-lg-2" id="inputIcon" type="text"/>
            </div>
        </div>
    </div>
    <span class="glyphicon">&#xe001;</span>
    <hr/>
    <div class="dropdown open clearfix hidden">
        <ul aria-labelledby="dropdownMenu2" role="menu" class="dropdown-menu">
            <li class="dropdown-header" role="presentation">翻译图书</li>
            <li role="presentation"><a href="#" tabindex="-1" role="menuitem">JavaScript编程精解</a>
            </li>
        </ul>
    </div>
    <div class="clearfix"></div>
    <hr/>
    <div class="btn-group-vertical">
        <button class="btn btn-default" type="button">首页</button>
        <button class="btn btn-default" type="button">个人简介</button>
        <button class="btn btn-default" type="button">作品</button>
        <button class="btn btn-default" type="button">图书</button>
    </div>
    <hr/>
    <div class="btn-group btn-group-justified">
        <a role="button" class="btn btn-default">左</a> <a role="button" class="btn btn-default">中</a>
        <a role="button" class="btn btn-default">右</a>
    </div>
    <hr/>
    <div class="btn-group">
        <button type="button" class="btn btn-success dropdown-toggle" data-toggle="dropdown">
            Success <span class="caret"></span>
        </button>
        <ul class="dropdown-menu">
            <li><a href="#">Action</a></li>
            <li><a href="#">Another action</a></li>
            <li><a href="#">Something else here</a></li>
            <li class="divider"></li>
            <li><a href="#">Separated link</a></li>
        </ul>
    </div>
    <hr/>
    <div class="btn-group">
        <button type="button" class="btn btn-danger">保持原来的按钮</button>
        <button type="button" class="btn btn-danger data-toggle" data-toggle="dropdown">
            <span class="caret"></span>
        </button>
        <ul class="dropdown-menu">
            <li><a href="#">111</a></li>
            <li><a href="#">222</a></li>
            <li><a href="#">333</a></li>
        </ul>
    </div>
    <hr/>
    <div class="input-group">
			<span class="input-group-addon"> <i class="glyphicon glyphicon-user"></i>
			</span> <input type="text" class="form-control"/> <span class="input-group-addon">.00</span>
    </div>
    <hr/>
    <div class="row">
        <div class="col-md-6">
            <div class="input-group">
					<span class="input-group-btn">
						<button class="btn btn-default" type="button">Go!</button>
					</span> <input type="text" class="form-control"/>
            </div>
        </div>
        <div class="col-md-6">
            <div class="input-group">
                <input type="text" class="form-control"/> <span class="input-group-btn">
						<button class="btn btn-default" type="button">Go!</button>
					</span>
            </div>
        </div>
    </div>
    <hr/>
    <ul class="nav nav-tabs">
        <li class="active"><a href="#">主页</a></li>
        <li><a href="#">个人信息</a></li>
        <li class="disabled"><a href="#">作品</a></li>
        <li><a href="#">图书</a></li>
    </ul>
    <hr/>
    <ul class="nav nav-pills">
        <li class="active"><a href="#">主页</a></li>
        <li><a href="#">个人信息</a></li>
        <li class="disabled"><a href="#">作品</a></li>
        <li><a href="#">图书</a></li>
    </ul>
    <hr/>
    <ul class="nav nav-pills nav-stacked">
        <li class="active"><a href="#">主页</a></li>
        <li><a href="#">个人信息</a></li>
        <li class="disabled"><a href="#">作品</a></li>
        <li><a href="#">图书</a></li>
    </ul>
    <hr/>
    <ul class="nav nav-tabs nav-justified">
        <li class="active"><a href="#">主页</a></li>
        <li><a href="#">个人信息</a></li>
        <li class="disabled"><a href="#">作品</a></li>
        <li><a href="#">图书</a></li>
    </ul>
    <hr/>
    <ul class="nav nav-pills nav-justified">
        <li class="active"><a href="#">主页</a></li>
        <li><a href="#">个人信息</a></li>
        <li class="disabled"><a href="#">作品</a></li>
        <li><a href="#">图书</a></li>
    </ul>
    <hr/>
    <nav class="navbar navbar-default" role="navigation">
        <div class="navbar-header">
            <a class="navbar-brand" href="#">Brand</a>
        </div>
        <ul class="nav navbar-nav">
            <li class="active"><a href="#">active</a></li>
            <li><a href="#">Link</a></li>
            <li class="disabled"><a href="#">disabled</a></li>
            <li><a href="#">Link</a></li>
        </ul>
    </nav>
    <hr/>
    <ul class="pager">
        <li class="previous"><a href="#">上一页</a></li>
        <li class="next"><a href="#">下一页</a></li>
    </ul>
    <hr/>
    <h1>
        1111<span class="label label-warning">Test</span>
    </h1>
    <hr/>
    <a href="#">Inbox <span class="badge badge-primary">15</span></a>
    <hr/>
    <div class="jumbotron">
        <h1>Hello,world!</h1>
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Libero porro
            consequatur harum explicabo facere facilis neque quos placeat quis illum quod rerum
            ipsa nihil laudantium ullam. Blanditiis consequatur maiores vitae.</p>
        <p>
            <a class="btn btn-primary btn-large">Learn more</a>
        </p>
    </div>
    <hr/>
    <div class="panel panel-primary">
        <div class="panel-heading">面板header</div>
        <div class="panel-body">这里是面板内容</div>
        <div class="panel-footer">面板footer</div>
    </div>
    <hr/>
    <button data-toggle="modal" data-target="#myModal" id="modalBtn" type="button" class="btn btn-primary">模态弹窗</button>
    <button class="btn btn-info" type="button" id="alertCloseBtn">关闭 Alert 按钮</button>
    <button class="btn btn-warning" type="button" id="alertOpenBtn">开启 Alert 按钮</button>
    <div id="myModal" class="modal">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title">Modal标题</h4>
                </div>
                <div class="modal-body">
                    <p>这里是弹窗里的具体内容</p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                    <button type="button" class="btn btn-primary">保存</button>
                </div>
            </div>
        </div>
    </div>
    <hr/>
    <span class="bg-primary" data-toggle="tooltip" data-original-title="111111111">tooltip</span>
    <hr/>
    <button data-original-title="Tooltip on left" class="btn btn-default" data-toggle="tooltip" data-placement="left">
        左侧tooltip
    </button>
    <button data-original-title="Tooltip on top" class="btn btn-default" data-toggle="tooltip" data-placement="top">
        顶部tooltip
    </button>
    <button data-original-title="Tooltip on bottom" class="btn btn-default" data-toggle="tooltip"
            data-placement="bottom">底部tooltip
    </button>
    <button data-original-title="Tooltip on right" class="btn btn-default" data-toggle="tooltip" data-placement="right">
        右侧tooltip
    </button>
    <hr/>
    <!-- 	<a data-toggle="popover" data-original-title="A Title" title=""  -->
    <!-- 		data-content="And here's some amazing content. It's very engaging. right?" -->
    <!-- 		class="btn btn-lg btn-danger" href="#">单击反转弹出窗</a> -->
    <button type="button" data-toggle="popover" data-original-title="A Title" title=""
            data-content="And here's some amazing content. It's very engaging. right?"
            data-placement="left" class="btn btn-danger">左侧 popover
    </button>
    <button type="button" data-toggle="popover" data-original-title="A Title" title=""
            data-content="And here's some amazing content. It's very engaging. right?"
            data-placement="right" class="btn btn-danger">左侧 popover
    </button>
    <hr/>
    <div class="alert alert-warning fade in">
        <button data-dimiss="alert" class="close" type="button">&times;</button>
        <h4>警告表题</h4>
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laborum magnam ipsa ipsum corporis distinctio! Amet
            repellendus vero maxime soluta illum placeat hic? Ad eos neque voluptas esse eligendi corporis
            laboriosam!</p>
    </div>


</div>

<div style="height: 150px;"></div>

</body>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="${ctx_path}/webjars/jquery/2.2.4/jquery.min.js"></script>
<script src="${ctx_path}/webjars/bootstrap/3.3.7-1/js/bootstrap.min.js"></script>
<script>
    //     $("#myModal").modal({
    //         // 		backdrop : true,
    //         backdrop: "static",
    //         show: false,
    //         keyboard: true
    //     });

    //     $("#myModal").on("show.bs.modal",function(){
    //     	console.info("show.bs.modal");
    //     });


    //     $(document).on("click","#modalBtn",function(){
    //        $('#myModal').modal("toggle");
    //     });
    $('[data-toggle=tooltip]').tooltip();
    $('[data-toggle=popover]').popover();
    $(document).on("click","#alertCloseBtn",function(){
    	$(document).off('.alert.data-api');
    	console.info("close alert");
    });
    $(document).on("click","#alertOpenBtn",function(){
    	$('[data-dismiss="alert"]').alert();
    	console.info("open alert");
    });
    console.info("${ctx_path}");
</script>
</html>

