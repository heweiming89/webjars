<%--
  Created by IntelliJ IDEA.
  User: heweiming
  Date: 2016/9/26
  Time: 16:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx_path" value="${pageContext.request.contextPath }"/>
<html>
<head>

    <title>Title</title>

    <link rel="stylesheet" href="${ctx_path}/webjars/bootstrap/3.3.7-1/css/bootstrap.css">
    <link rel="stylesheet" href="${ctx_path}/static/plug-ins/Keyboard-1.26.4/css/keyboard.css">

    <script src="${ctx_path}/webjars/jquery/2.2.4/jquery.min.js"></script>
    <script src="${ctx_path}/webjars/bootstrap/3.3.7-1/js/bootstrap.min.js"></script>
    <script src="${ctx_path}/static/plug-ins/Keyboard-1.26.4/js/jquery.keyboard.js"></script>

    <link rel="stylesheet" href="${ctx_path}/static/plug-ins/Keyboard-1.26.4/css/keyboard-previewkeyset.css">

    <script src="${ctx_path}/static/plug-ins/Keyboard-1.26.4/js/jquery.keyboard.extension-all.js"></script>

</head>
<body>
    <textarea id="keyboard_textarea" placeholder="123456"></textarea>
    <br />
    <input id="keyboard_input_text" type="text" style="float: right"  />
</body>
<script>
    $('#keyboard_textarea').keyboard({
    	css: {
            popup: 'ui-keyboard-dark-theme'
        }
    });
    $('#keyboard_input_text').keyboard({
        css: {
            popup: 'ui-keyboard-dark-theme'
        },
        display:{
        	'accept':'提交:Accept (Shift-Enter)',
        	'cancel' : '取消:Cancel (Esc)',
        }
    });



</script>


</html>
