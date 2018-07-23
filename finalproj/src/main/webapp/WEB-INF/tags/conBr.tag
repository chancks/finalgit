<%@ tag language="java" body-content="scriptless" pageEncoding="UTF-8"%>
<jsp:doBody var="con" scope="page"/>
<%String con = (String)jspContext.getAttribute("con");
String res = con.trim().replaceAll("\n", "<br>");
%>
<%=res%>