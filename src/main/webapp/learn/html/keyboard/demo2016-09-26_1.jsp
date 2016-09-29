<%--
  Created by IntelliJ IDEA.
  User: heweiming
  Date: 2016/9/26
  Time: 14:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx_path" value="${pageContext.request.contextPath }"/>
<html>
<head>
    <title>Title</title>
    <%--     <link rel="stylesheet" href="${ctx_path}/webjars/jquery-ui/1.12.1/jquery-ui.min.css"> --%>
    <!-- Bootstrap -->
    <link href="${ctx_path}/webjars/bootstrap/3.3.7-1/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="${ctx_path}/webjars/font-awesome/4.6.3/css/font-awesome.min.css"
          rel="stylesheet">
    <link rel="stylesheet"
          href="${ctx_path}/static/plug-ins/Keyboard-1.26.4/css/keyboard-basic.css">
    <link rel="stylesheet"
          href="${ctx_path}/static/plug-ins/Keyboard-1.26.4/css/keyboard-previewkeyset.css">

</head>
<body>
<div id="wrap">
    <input id="keyboard_demo" type="password" readonly="readonly" style="width: 50%"/>
</div>
</body>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="${ctx_path}/webjars/jquery/2.2.4/jquery.min.js"></script>
<%-- <script src="${ctx_path}/webjars/jquery-ui/1.12.1/jquery-ui.min.js"></script> --%>
<script src="${ctx_path}/webjars/bootstrap/3.3.7-1/js/bootstrap.min.js"></script>
<script src="${ctx_path}/static/plug-ins/Keyboard-1.26.4/js/jquery.keyboard.js"></script>
<script
        src="${ctx_path}/static/plug-ins/Keyboard-1.26.4/js/jquery.keyboard.extension-extender.js"></script>

<script src="${ctx_path}/static/plug-ins/Keyboard-1.26.4/js/jquery.mousewheel.js"></script>
<script
        src="${ctx_path}/static/plug-ins/Keyboard-1.26.4/js/jquery.keyboard.extension-typing.js"></script>
<script
        src="${ctx_path}/static/plug-ins/Keyboard-1.26.4/js/jquery.keyboard.extension-previewkeyset.js"></script>

<script>
    $('#keyboard_demo').keyboard({
        layout: 'custom',
        customLayout: {
            'normal': [
                '` 1 2 3 4 5 6 7 8 9 0 - = {bksp}',
                'q w e r t y u i o p [ ] \\',
                'a s d f g h j k l ; \' {enter}',
                '{shift} z x c v b n m , . / {shift}',
                '{accept} {space} {cancel} {extender}'
            ],
            'shift': [
                '~ ! @ # $ % ^ & * ( ) _ + {bksp}',
                'Q W E R T Y U I O P { } |',
                'A S D F G H J K L : " {enter}',
                '{shift} Z X C V B N M < > ? {shift}',
                '{accept} {space} {cancel} {extender}'
            ]
        },
        css: {
            popup: 'ui-keyboard-dark-theme'
        },
        display: {
            'extender': ' :toggle_numpad'
        }
    }).addExtender({
        layout: 'numpad',
        showing: false,
        reposition: true
    });

    //	$('#keyboard_demo').keyboard({
    //		layout : 'international'
    //	}).previewKeyset({
    //		sets : [ 'normal', 'shift' ]
    //	}).addExtender({
    //		layout : 'numpad',
    //		showing : false,
    //		reposition : true
    //	});
</script>
</html>
