<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE HTML>
<html lang="en">
<head>
<meta charset="UTF-8" />
<title>Insert title here</title>
</head>
<%
    java.util.Date now = new java.util.Date();
    request.setAttribute("now", now);
    request.setAttribute("myArray", new int[] { 1, 2, 3, 4, 5 });
%>
<body>
	格式化日期
	<br /> Default:
	<fmt:formatDate value="${now }" />
	<br /> Short:
	<fmt:formatDate value="${now }" dateStyle="short" />
	<br /> Medium:
	<fmt:formatDate value="${now }" dateStyle="medium" />
	<br /> Long:
	<fmt:formatDate value="${now }" dateStyle="long" />
	<br /> Full:
	<fmt:formatDate value="${now }" dateStyle="full" />
	<br />
	<hr />
	格式化时间
	<br /> Default:
	<fmt:formatDate type="time" value="${now }" />
	<br /> Short:
	<fmt:formatDate type="time" value="${now }" timeStyle="short" />
	<br /> Medium:
	<fmt:formatDate type="time" value="${now }" timeStyle="medium" />
	<br /> Long:
	<fmt:formatDate type="time" value="${now }" timeStyle="long" />
	<br /> Full:
	<fmt:formatDate type="time" value="${now }" timeStyle="full" />
	<br />
	<hr />
	${fn:escapeXml("<<<") }
	<br /> ${fn:join(myArray,"-") }
</body>
</html>