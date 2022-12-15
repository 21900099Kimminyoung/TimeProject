<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Form</title>
</head>
<script type="text/javascript">
    function validateForm(){
        if(document.forms["dataForm"]["semester"][0].checked==false
            &&document.forms["dataForm"]["semester"][1].checked==false
            &&document.forms["dataForm"]["semester"][2].checked==false
            &&document.forms["dataForm"]["semester"][3].checked==false
            &&document.forms["dataForm"]["semester"][4].checked==false
            &&document.forms["dataForm"]["semester"][5].checked==false){
            alert("Choose Semester!");
            return false;
        }
        if(document.forms["dataForm"]["category"].value==""){
            alert("Choose Category!");
            return false;
        }
        if(document.forms["dataForm"]["classs"].value==""){
            alert("Fill Out Class Name!");
            return false;
        }
        if(document.forms["dataForm"]["professor"].value==""){
            alert("Fill Out Professor's Name!");
            return false;
        }
        if(document.forms["dataForm"]["classCapacity"].value==""){
            alert("Choose Class's Capacity!");
            return false;
        }
        if(document.forms["dataForm"]["email"].value==""){
            alert("Fill Out Professor's Email!");
            return false;
        }
        if(document.forms["dataForm"]["detail"].value==""){
            alert("Fill Out With Your Thoughts About This Class!");
            return false;
        }
    }
</script>
<body>
<h1>Edit Form</h1>
<%--@elvariable id="boardVO" type=""--%>
<form:form modelAttribute="boardVO" method="POST" action="../editok" name="dataForm" onsubmit="return validateForm()">
    <form:hidden path="seq"/>
    <table id="edit">
        <tr><td>semester:</td>
            <td>
                <form:radiobutton path="semester" value="20-1"/>20-1
                <form:radiobutton path="semester" value="20-2"/>20-2
                <form:radiobutton path="semester" value="21-1"/>21-1
                <form:radiobutton path="semester" value="21-2"/>21-2
                <form:radiobutton path="semester" value="22-1"/>22-1
                <form:radiobutton path="semester" value="22-2"/>22-2
            </td>
        </tr>
        <tr>
            <td>category:</td>
            <td>
                <form:select path="category">
                    <form:option value="">--학부 선택--</form:option>
                    <form:option value="글로벌리더십학부">글로벌리더십학부</form:option>
                    <form:option value="글로벌리더십학부">글로벌리더십학부</form:option>
                    <form:option value="국제어문학부">국제어문학부</form:option>
                    <form:option value="경영경제학부">경영경제학부</form:option>
                    <form:option value="법학부">법학부</form:option>
                    <form:option value="커뮤니케이션학부">커뮤니케이션학부</form:option>
                    <form:option value="공간환경시스템공학부">공간환경시스템공학부</form:option>
                    <form:option value="기계제어공학부">기계제어공학부</form:option>
                    <form:option value="콘텐츠융합디자인학부">콘텐츠융합디자인학부</form:option>
                    <form:option value="생명과학부">생명과학부</form:option>
                    <form:option value="전산전자공학부">전산전자공학부</form:option>
                    <form:option value="상담심리사회복지학부">상담심리사회복지학부</form:option>
                    <form:option value="ICT창업학부">ICT창업학부</form:option>
                </form:select>

            </td>
        </tr>
        <tr><td>classs:</td><td><form:input path="classs"/></td></tr>
        <tr><td>professor:</td><td><form:input path="professor"/></td></tr>
        <tr>
            <td>classCapacity:</td>
            <td>
                <form:select path="classCapacity">
                    <form:option value="">--정원--</form:option>
                    <form:option value="20">20</form:option>
                    <form:option value="25">25</form:option>
                    <form:option value="30">30</form:option>
                    <form:option value="35">35</form:option>
                    <form:option value="40">40</form:option>
                    <form:option value="45">45</form:option>
                    <form:option value="50+">50 or more</form:option>
                </form:select>
            </td>
        </tr>
        <tr><td>email:</td><td><form:textarea cols="30" rows="1" path="email"/></td></tr>
        <tr><td>detail:</td><td><form:textarea cols="50" rows="10" path="detail"/></td></tr>
    </table>
    <button type="submit">수정하기</button>
    <input type="button" value="Cancel" onclick="history.back()"/></td></tr>
</form:form>
</body>
</html>