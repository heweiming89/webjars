<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <title>Insert title here</title>


    <c:set var="ctx_path" value="${pageContext.request.contextPath }"/>
</head>
<body>
<form action="${ctx_path }/cncrypt" method="post">
    密码:<input id="password_input" type="password" onchange="encryptText(this,'#password')"/>
    <input type="hidden" id="password" name="password" />
    <br/>
    <button type="submit">提交</button>
</form>
</body>
<script type="text/javascript" src="${ctx_path}/webjars/jquery/2.2.4/jquery.min.js"></script>
<script type="text/javascript" src="${ctx_path}/webjars/jsencrypt/2.3.0/bin/jsencrypt.min.js"></script>
<script type="text/javascript">
    var publicKey = "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCtdFAsGlWX9b3tgQ0nC3Z0047cU3j7jFhMkSE2YP2h59BRcrqcZ9EyP3K3ecAcI7yNRu6SSjxwt9KbBmVrQ+6Dl5ew/t/MhrEsbrmGh5hAuJBAyb1u+/Lk/uG2pFP8LwBzrojR9TA4CK6e8kUPLwdVCTaTZ0rhQ++1MsEkJbG6twIDAQAB";
    function encryptText(sourceElement,targetElement){
    	var plaintext = sourceElement.value;
    	console.info(plaintext);
        var encrypt = new JSEncrypt();
        encrypt.setPublicKey(publicKey);
        var ciphertext = encrypt.encrypt(plaintext);
        e
        $(targetElement).val(ciphertext);
    }



</script>

</html>