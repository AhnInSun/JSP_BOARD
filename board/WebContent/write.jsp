<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<form action="insert.jsp" method="post" onsubmit="return formCheck();">
제목:<input tpye="text" name="title"/><br/>
작성자:<input type="text" name="writer"/><br/>
내용:<input type="text" name="content"/><br/>
<input type="submit" value="전송"/>
</form>
</body>
</html>