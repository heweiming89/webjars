<%--
  Created by IntelliJ IDEA.
  User: heweiming
  Date: 2016/8/23
  Time: 17:19
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
    <%--<link rel="stylesheet" href="${ctx_path}/webjars/normalize.css/3.0.2/normalize.css">--%>
    <%--<link rel="stylesheet" href="css/main.css">--%>
    <script src="${ctx_path}/webjars/modernizr/2.8.3/modernizr.min.js"></script>
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="${ctx_path}/webjars/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="${ctx_path}/webjars/respond/1.4.2/dest/respond.min.js"></script>
    <![endif]-->
    <link rel="stylesheet" href="${ctx_path}/webjars/bootstrap/3.3.7-1/css/bootstrap.min.css">
    <%--<link rel="stylesheet" href="${ctx_path}/webjars/datatables/1.10.12/css/jquery.dataTables.min.css">--%>
    <link rel="stylesheet" href="${ctx_path}/webjars/datatables/1.10.12/css/dataTables.bootstrap.min.css">
</head>
<body>
<!--[if lt IE 8]>
<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://www.baidu.com">upgrade
    your browser</a> to improve your experience.</p>
<![endif]-->

<!-- Add your site or application content here -->
<div class="container">
    <div class="table-responsive">
        <table id="table_id_example" class="table table-striped table-bordered table-hover table-condensed">
            <thead>
            <tr>
                <th>Column 1</th>
                <th>Column 2</th>
                <th>Column 3</th>
                <th>Column 4</th>
                <th>Column 5</th>
                <th>Column 6</th>
                <th>Column 7</th>
            </tr>
            </thead>
            <tbody>
            <%--<c:forEach begin="1" end="102" varStatus="trs">--%>
                <%--<tr>--%>
                    <%--<c:forEach begin="1" end="7" varStatus="tds">--%>
                        <%--<td>row ${trs.index} data ${tds.index}</td>--%>
                    <%--</c:forEach>--%>
                <%--</tr>--%>
            <%--</c:forEach>--%>
            </tbody>
        </table>
    </div>
</div>

<script src="${ctx_path}/webjars/jquery/2.2.4/jquery.min.js"></script>
<script src="${ctx_path}/webjars/bootstrap/3.3.7-1/js/bootstrap.min.js"></script>
<script src="${ctx_path}/webjars/datatables/1.10.12/js/jquery.dataTables.min.js"></script>
<script src="${ctx_path}/webjars/datatables/1.10.12/js/dataTables.bootstrap.min.js"></script>
<%--<script src="${ctx_path}/webjars/datatables/1.10.12/js/"--%>

<script>
    $(function () {
        console.info("1111");
        $('#table_id_example').dataTable({
            language: {
                url: "${ctx_path}/static/json/i18n/datatables_zh-cn.json"
            },

            // 特性(Features)

            // autoWidth:false
            // deferRender:true
            // 当应用了搜索时，会在适当位置显示表格的搜索条件。 这个配置允许打开或者关闭这个特性。
            // info:false
            // 是否允许最终用户改变表格每页显示的记录数
            // lengthChange: false
            // 是否允许Datatables开启排序
            // ordering: false
            // 是否开启本地分页
//            paging: false,
            // 是否显示处理状态(排序的时候，数据很多耗费时间长的话，也会显示这个)
//            processing: true
            // 设置水平滚动
//            scrollX: true
            // 设置垂直滚动
//            scrollY:true
            // 是否允许Datatables开启本地搜索
//            searching:false
            // 是否开启服务器模式
            serverSide: true,
            ajax: {
                url: "${ctx_path}/datatables/ajax/array",
                type: "POST"
            }
            // 保存状态 - 在页面重新加载的时候恢复状态（页码等内容）
//            stateSave: true
            // 定义翻页组件的样式(有4个选择)
            // simple -  只有上一页和下一页2个按钮
            // simple_numbers   – 上一页,下一页和页码
            // full – 首页,末页,上一页,下一页4个按钮
            // full_numbers   – 全部按钮和页面
//            pagingType: "simple"

//            renderer: {
//                "header": "jqueryui",
//                "pageButton": "bootstrap"
//            }


            // 数据(Data)

            // 增加或修改通过Ajax提交到服务端的请求数据
            // 数据属性或操作表数据的方法
            // 从一个ajax数据源读取数据给表格内容
            // 用来显示表格的数据


            // 回调函数(Callbacks)

            // tfoot的回调函数
            // 行被创建时回调函数
            // 表格每次重绘回调函数
            // 数字格式化时的回调函数
            // 表格Header显示时的回调函数
            // 表格状态信息改变的回调函数
            // 初始化结束后的回调函数
            // 表格绘制前的回调函数
            // 表格行(Row)绘制的回调函数
            // 该回调函数定义了从哪里和如何读取保存的状态
            // 状态加载完成之后的回调函数
            // 状态加载完成之后，对数据处理的回调函数
            // 该回调函数定义了状态该存储在什么地方及如何存储
            // 对状态进行存储时，对数据处理的回调函数

            // 配置(Options)
            //
            //
            //
            //
            //
            //


        });
    });
</script>
</body>
</html>
