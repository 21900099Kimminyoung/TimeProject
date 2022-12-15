<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>free board</title>
    <style>
        #list {
            font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }
        #list td, #list th {
            border: 1px solid #ddd;
            padding: 8px;
            text-align:center;
        }
        #list tr:nth-child(even){background-color: #f2f2f2;}
        #list tr:hover {background-color: #ddd;}
        #list th {
            padding-top: 12px;
            padding-bottom: 12px;
            text-align: center;
            background-color: #006bb3;
            color: white;
        }
    </style>
    <script>
        function delete_ok(id){
            var a = confirm("정말로 삭제하겠습니까?");
            if(a) location.href='deleteok/' + id;
        }
    </script>
</head>
<body>
<h1>강의평 게시판</h1>
<table id="list" width="90%">
<tr>
    <th>ID</th>
    <th>학기</th>
    <th>학부</th>
    <th>과목명</th>
    <th>교수</th>
    <th>정원</th>
    <th>Email</th>
    <th>등록일자</th>
    <th>강의평</th>
    <th>수정</th>
    <th>삭제</th>
</tr>

 <c:forEach items = "${list}" var="u" varStatus="status">
     <tr>
         <td>${fn:length(list)-status.index}</td>
         <td>${u.semester}</td>
         <td>${u.category}</td>
         <td>${u.classs}</td>
         <td>${u.professor}</td>
         <td>${u.classCapacity}</td>
         <td>${u.email}</td>
         <td>${u.regdate}</td>
         <td>${u.detail}</td>
         <td><a href="editform/${u.seq}">Edit</a></td>
         <td><a href="javascript:delete_ok('${u.seq}')">Delete</a></td>
     </tr>
 </c:forEach>
</table>
<br/><button type="button" onclick="location.href='add'"> Add New Post </button>
<button type="button" onclick="location.href='../login/login'"> 로그아웃 </button>
</body>
</html>
