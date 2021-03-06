<%--
  Created by IntelliJ IDEA.
  User: heweiming
  Date: 2016/9/27
  Time: 10:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx_path" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>虚拟键盘演示</title>
    <link href="${ctx_path}/webjars/metro/3.0.15/build/css/metro.min.css" rel="stylesheet">
    <link href="${ctx_path}/webjars/metro/3.0.15/build/css/metro-icons.min.css" rel="stylesheet">

    <script src="${ctx_path}/webjars/jquery/2.2.4/jquery.min.js"></script>
    <script src="${ctx_path}/webjars/metro/3.0.15/build/js/metro.min.js"></script>
</head>
<body>
<div class="example" data-text="example">
    <div class="grid">
        <div class="row cells4">
            <div class="cell">
                <h5>Input text</h5>
                <div class="input-control text" data-role="keypad">
                    <input type="text">
                </div>
            </div>
            <div class="cell">
                <h5>Input password</h5>
                <div class="input-control password" data-role="keypad">
                    <input type="password">
                </div>
            </div>
            <div class="cell">
                <h5>Length control (ex: max 3 dig)</h5>
                <div class="input-control password" data-role="keypad" data-length="3">
                    <input type="password">
                </div>
            </div>
            <div class="cell">
                <h5>Shuffle buttons</h5>
                <div class="input-control text" data-role="keypad" data-shuffle="true">
                    <input type="text">
                </div>
            </div>
        </div>
    </div>
</div>

<h3>Additional usage</h3>
<div class="example" data-text="example">
    <div class="grid">
        <div class="row cells3">
            <div class="cell">
                <h5>Standalone keypad</h5>
                <div class="input-control text">
                    <input type="text" id="target1">
                </div>
                <div data-role="keypad" data-target="#target1"></div>
            </div>
            <div class="cell">
                <h5>Non standard usage</h5>
                <div class="input-control text">
                    <input type="text" id="target2">
                    <div class="button-group">
                        <button class="button dropdown-toggle"><span class="mif-keyboard"></span></button>
                        <div data-role="dropdown" data-no-close="true" style="right: 0;">
                            <div data-role="keypad" data-target="#target2"></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="cell">
                <h5>Non standard, shuffle</h5>
                <div class="input-control text">
                    <input type="text" id="target3">
                    <div class="button-group">
                        <button class="button dropdown-toggle"><span class="mif-keyboard"></span></button>
                        <div data-role="dropdown" data-no-close="true" style="right: 0;">
                            <div data-role="keypad" data-shuffle="true" data-target="#target3"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row cells3">
            <div class="cell">
                <h5>Custom keys</h5>
                <div class="input-control text" data-role="keypad" data-keys="q,w,e,r,t,y,u,i,o,p,a,s,d,f,g,h,j,k,l,z,x,c,v,b,n,m">
                    <input type="text">
                </div>
            </div>
            <div class="cell">
                <h5>Custom keys, shuffle</h5>
                <div class="input-control text" data-role="keypad" data-shuffle="true" data-keys="q,w,e,r,t,y,u,i,o,p,a,s,d,f,g,h,j,k,l,z,x,c,v,b,n,m">
                    <input type="text">
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
