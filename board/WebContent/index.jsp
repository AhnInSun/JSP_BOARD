<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 <%@page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>����! �Խ���-�Խñ� ����Ʈ</title>
<style type="text/css">
	table, td, th{	
		border:1px solid green;
	}
	th{
		background-color:green;
		color:white;
		color:red;
	}
</style>
</head>
<% 
	try {
	    String driverName = "oracle.jdbc.driver.OracleDriver"; 	
	    String url = "jdbc:oracle:thin:@localhost:1521:XE";	
	    ResultSet rs = null;
	  	
	    Class.forName(driverName);
	    Connection con = DriverManager.getConnection(url,"board","dlstjs21");
	    out.println("Oracle Database Connection Success.");
	
	    Statement stmt = con.createStatement();        
	    String sql = "select * from board order by idx desc";
	    rs = stmt.executeQuery(sql);
	    
%>
<body>
<h1>�Խñ� ����Ʈ</h1>
	<table>  <!-- �Խ��� ���̺�  -->
		<tr>
			<th>��ȣ</th>
			<th>����</th>
			<th>�ۼ���</th>
			<th>��¥</th>
			<th>��ȸ��</th>
		</tr>
<% 
		while(rs.next()){
			out.print("<tr>");
			out.print("<td><a href='content.jsp?idx="+rs.getString("idx")+"'>" + rs.getString("title") + "</a></td>");
			out.print("<td>" + rs.getString(2) + "</td>");
			out.print("<td>" + rs.getString(3) + "</td>");
			out.print("<td>" + rs.getString(4) + "</td>");
			out.print("<td>" + rs.getString(5) + "</td>");
			out.print("</tr>");
		}
%>
	</table>
	<a href="write.jsp">�۾���</a>
<%
		con.close();
	}catch (Exception e) {
	    out.println("Oracle Database Connection Something Problem. <hr>");
	    out.println(e.getMessage());
	    e.printStackTrace();
	}
%>	
</body>
</html>