<%@ page import="com.example.board.BoardDAO" %>
<%@ page import="com.example.board.BoardVO" %><%--
  Created by IntelliJ IDEA.
  User: sungminkim
  Date: 2022/12/15
  Time: 2:16 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" isELIgnored="false" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
    <title>View Details</title>
</head>
<body>
<h1>모든 정보 보기</h1>

<form:form modelAttribute="boardVO">
    <form:hidden path="seq"/>
    <table id="details">
        <tr><td>학기: </td><td>${boardVO.semester}</td></tr>
        <tr><td>학부: </td><td>${boardVO.category}</td></tr>
        <tr><td>과목명: </td><td>${boardVO.classs}</td></tr>
        <tr><td>교수: </td><td>${boardVO.professor}</td></tr>
        <tr><td>정원: </td><td>${boardVO.classCapacity}</td></tr>
        <tr><td>Email: </td><td>${boardVO.email}</td></tr>
        <tr><td>등록일자: </td><td>${boardVO.regdate}</td></tr>
        <tr><td>강의평: </td><td>${boardVO.detail}</td></tr>
    </table>
</form:form>

</body>
</html>
