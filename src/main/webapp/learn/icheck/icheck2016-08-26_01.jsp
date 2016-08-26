<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="webjars/iCheck/1.0.2/skins/minimal/minimal.css">
<script src="webjars/jquery/1.12.4/jquery.min.js"></script>
<script src="webjars/iCheck/1.0.2/icheck.min.js"></script>
</head>
<body>
	<input type="checkbox" />111
	<input type="checkbox" checked />222
	<input type="radio" name="iCheck" />333
	<input type="radio" name="iCheck" checked />444
</body>
<script type="text/javascript">
	$(document).ready(function() {
		$('input').iCheck({
			checkboxClass : 'icheckbox_minimal',
			radioClass : 'iradio_minimal'
		});
	});
</script>
</html>