<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
</head>
<body>

<h1>Add New Post</h1>
<form action="addok" method="post">
    <table id="edit">
<%--        <tr><td>semester:</td><td><input type="text" name="semester"/></td></tr>--%>
        <tr>
            <td>semester:</td>
            <td>
                <input type="radio" id="20-1" name="semester" value="20-1"/><label for="20-1">20-1</label>
                <input type="radio" id="20-2" name="semester" value="20-2"/><label for="20-2">20-2</label>
                <input type="radio" id="21-1" name="semester" value="21-1"/><label for="21-1">21-1</label>
                <input type="radio" id="21-2" name="semester" value="21-2"/><label for="21-2">21-2</label>
                <input type="radio" id="22-1" name="semester" value="22-1"/><label for="22-1">22-1</label>
                <input type="radio" id="22-2" name="semester" value="22-2"/><label for="22-2">22-2</label>
            </td>
        </tr>

        <tr><td>category:</td><td><input type="text" name="category"/></td></tr>
        <tr><td>classs:</td><td><input type="text" name="classs" placeholder="Class Name"/></td></tr>
        <tr><td>professor:</td><td><input type="text" name="professor" placeholder="Professor Name"/></td></tr>
        <tr><td>classCapacity:</td><td><input type="text" name="classCapacity"/></td></tr>
        <tr><td>email:</td><td><input type="text" name="email"/></td></tr>
        <tr><td>detail:</td><td><textarea cols="50" rows="10" name="detail"></textarea></td></tr>
    </table>
    <button type="button" onclick="location.href='list'">목록보기</button>
    <button type="submit">등록하기</button>
</form>

</body>
</html>