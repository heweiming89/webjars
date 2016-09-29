<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE HTML>
<html lang="en">
<head>
<meta charset="UTF-8" />
<title>Insert title here</title>
</head>
<%
    cn.heweiming.webjars.bean.Person person = new cn.heweiming.webjars.bean.Person();
    String strs = "1,2,4,8,9";
    java.util.Date date1 = new java.util.Date();
    request.setAttribute("date1", date1);
    request.setAttribute("person", person);
    request.setAttribute("strs", strs);
    request.setAttribute("datePatternFull","yyyy年MM月dd日  HH时mm分ss秒 新");
%>
<body>
	<c:set target="${person}" property="name">张三111</c:set>

	<br /> ${person.name }
	<c:remove var="person" scope="request" />

	<c:if test="${empty person }">
		已被移除
	</c:if>
	<hr />
	<c:forTokens items="${strs }" delims="," var="str">
		${str }<br />
	</c:forTokens>

	<fmt:formatNumber value="1234.567" type="currency" currencyCode="CAD"></fmt:formatNumber>
	<br />
	<fmt:formatNumber value="1234.567" type="currency" currencyCode="CNY"></fmt:formatNumber>
	<br />
	<fmt:formatNumber value="1234.567" type="currency" currencyCode="EUR"></fmt:formatNumber>
	<br />
	<fmt:formatNumber value="1234.567" type="currency" currencyCode="JPY"></fmt:formatNumber>
	<br />
	<fmt:formatNumber value="1234.567" type="currency" currencyCode="GBP"></fmt:formatNumber>
	<br />
	<fmt:formatNumber value="1234.567" type="currency" currencyCode="USD"></fmt:formatNumber>


	<fmt:formatNumber value="1234.567" type="percent"></fmt:formatNumber>
	<fmt:formatNumber value="1234.567" type="number"></fmt:formatNumber>

	<hr />
	<fmt:formatDate value="${date1 }" type="date"></fmt:formatDate>
	<br />
	<fmt:formatDate value="${date1 }" type="time"></fmt:formatDate>
	<br />
	<fmt:formatDate value="${date1 }" type="both"></fmt:formatDate>
	<br />
	<fmt:formatDate value="${date1 }" pattern="${datePatternFull }"></fmt:formatDate>


</body>
</html>