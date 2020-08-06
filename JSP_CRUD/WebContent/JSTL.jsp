<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>  

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>out</h3>
<c:out value="${'Welcome to 2020WebCamp!'}" />

<h3>import</h3>

<c:import url="./exam1.jsp">
   <c:param name="src1" value="www.naver.com" />
   <c:param name="src2" value="www.daum.net" />
</c:import>

<h3>set and remove</h3>
<c:set var="Income" scope="session" value="${4000*4}"/>
<p>c:remove 하기 전 income 값: <c:out value="${Income}"/></p>
<c:remove var="Income"/>
<p>c:remove 한 후 income 값: <c:out value="${Income}"/></p>

<h3>catch</h3>
<c:catch var ="catchtheException">  
   <% int x = 2/0;%>  
</c:catch>  

<c:if test = "${catchtheException != null}">  
	<p>The type of exception is: ${catchtheException}<br>There is an exception: ${catchtheException.message}</p>
</c:if>

<h3>if</h3>
<c:set var="outcome" scope="session" value="${4000*4}"/>  
<c:if test="${outcome > 8000}">  
   <p>My income is: <c:out value="${outcome}"/><p>  
</c:if>  

<h3>choose when otherwise</h3>
<c:set var="income" scope="session" value="${9000}"/>  
<p>Your income is : <c:out value="${income}"/></p>  
<c:choose>  
    <c:when test="${income <= 1000}">  
       Income is not good.  
    </c:when>  
    <c:when test="${income > 10000}">  
        Income is very good.  
    </c:when>  
    <c:otherwise>  
       Income is undetermined...  
    </c:otherwise>  
</c:choose>  

<h3>foreach</h3>
<c:forEach var="j" begin="1" end="3">
	Item <c:out value="${j}"/>
</c:forEach>

<h3>tokens</h3>
<c:forTokens items="SeungA-Seulgi-Yeeun" delims="-" var="name">
<c:out value="${ name }"/><p>
</c:forTokens>

<h3>param</h3>
<c:url value="./index1.jsp" var="completeURL">
<c:param name="trackingId" value="786" />
<c:param name="user" value="SeungA"/>
</c:url>

${ completeURL }





<h3>url</h3>
<c:url value="/RegisterDao.jsp"/>

<h2>Function tag</h2>
<c:set var="String" value="Welcome to javatpoint"/>  
  
<c:if test="${fn:contains(String, 'javatpoint')}">  
   <p>Found javatpoint string<p>  
</c:if>  
  
<c:if test="${fn:contains(String, 'JAVATPOINT')}">  
   <p>Found JAVATPOINT string<p>  
</c:if>  

<h3>containsIgnoreCase</h3>
<c:if test="${fn:containsIgnoreCase(String, 'javatpoint')}">  
   <p>Found javatpoint string<p>  
</c:if>  
  
<c:if test="${fn:containsIgnoreCase(String, 'JAVATPOINT')}">  
   <p>Found JAVATPOINT string<p>  
</c:if>  

<h3>endsWith</h3>
<c:set var="String" value="Welcome to JSP programming"/>  

<c:if test="${fn:endsWith(String, 'programming')}">  
   <p>String ends with programming<p>  
</c:if>  
  
<c:if test="${fn:endsWith(String, 'JSP')}">  
   <p>String ends with JSP<p>  
</c:if>  

<h3>escapeXml</h3>
<c:set var="string1" value="It is first String."/>  
<c:set var="string2" value="It is <xyz>second String.</xyz>"/>  
  
<p>With escapeXml() Function:</p>  
<p>string-1 : ${fn:escapeXml(string1)}</p>  
<p>string-2 : ${fn:escapeXml(string2)}</p>  
  
<p>Without escapeXml() Function:</p>  
<p>string-1 : ${string1}</p>  
<p>string-2 : ${string2}</p>  


<h3>indexOf</h3>
<c:set var="string1" value="It is first String."/>  
<c:set var="string2" value="It is <xyz>second String.</xyz>"/>  
  
<p>Index-1 : ${fn:indexOf(string1, "first")}</p>  
<p>Index-2 : ${fn:indexOf(string2, "second")}</p>  

<h3>trim()</h3>
<c:set var="str1" value="Welcome to JSP        programming         "/>  
<p>String-1 Length is : ${fn:length(str1)}</p>  
  
<c:set var="str2" value="${fn:trim(str1)}" />  
<p>String-2 Length is : ${fn:length(str2)}</p>  
<p>Final value of string is : ${str2}</p>  


<h3>startsWith</h3>
<c:set var="msg" value="The Example of JSTL fn:startsWith() Function"/>  
The string starts with "The": ${fn:startsWith(msg, 'The')}  
<br>The string starts with "Example": ${fn:startsWith(msg, 'Example')}  


<h3>split and join</h3>
<c:set var="str1" value="Welcome-to-JSP-Programming."/>  
<c:set var="str2" value="${fn:split(str1, '-')}" />  
<c:set var="str3" value="${fn:join(str2, ' ')}" />  
  
<p>String-3 : ${str3}</p>  
<c:set var="str4" value="${fn:split(str3, ' ')}" />  
<c:set var="str5" value="${fn:join(str4, '-')}" />  
  
<p>String-5 : ${str5}</p>  

<h3>toLowerCase</h3>
${fn:toLowerCase("HELLO,")}  
<h3>toUpperCase</h3>
${fn:toUpperCase("hello")}  

<h3>substring</h3>
<c:set var="string" value="This is the first string."/>  
${fn:substring(string, 5, 17)}

<h3>substringAfter</h3>
<c:set var="string" value="Nakul Jain"/>  
${fn:substringAfter(string, "Nakul")}  

<h3>substringBefore</h3>
<c:set var="string" value="Hi, This is JAVATPOINT.COM developed by SONOO JAISWAL."/>  
${fn:substringBefore(string, "developed")}  


<h3>length</h3>
<c:set var="str1" value="This is first string"/>  
<c:set var="str2" value="Hello"/>  
Length of the String-1 is: ${fn:length(str1)}<br>  
Length of the String-2 is: ${fn:length(str2)}  


<h3>replace</h3>
<c:set var="author" value="Ramesh Kumar"/>  
<c:set var="string" value="pqr xyz abc PQR"/>  
${fn:replace(author, "Ramesh", "Suresh")}  
${fn:replace(string, "pqr", "hello")} 



</body>