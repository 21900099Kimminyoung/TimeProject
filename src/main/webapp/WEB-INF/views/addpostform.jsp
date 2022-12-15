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

<%--        <tr><td>category:</td><td><input type="text" name="category"/></td></tr>--%>
        <tr>
            <td>category:</td>
            <td>
                <select name="category">
                    <option value="">--학부 선택--</option>
                    <option value="글로벌리더십학부">글로벌리더십학부</option>
                    <option value="국제어문학부">국제어문학부</option>
                    <option value="경영경제학부">경영경제학부</option>
                    <option value="법학부">법학부</option>
                    <option value="커뮤니케이션학부">커뮤니케이션학부</option>
                    <option value="공간환경시스템공학부">공간환경시스템공학부</option>
                    <option value="기계제어공학부">기계제어공학부</option>
                    <option value="콘텐츠융합디자인학부">콘텐츠융합디자인학부</option>
                    <option value="생명과학부">생명과학부</option>
                    <option value="전산전자공학부">전산전자공학부</option>
                    <option value="상담심리사회복지학부">상담심리사회복지학부</option>
                    <option value="ICT창업학부">ICT창업학부</option>
                </select>
            </td>
        </tr>

        <tr><td>classs:</td><td><input type="text" name="classs" placeholder="Class Name"/></td></tr>
        <tr><td>professor:</td><td><input type="text" name="professor" placeholder="Professor's Name"/></td></tr>

        <tr>
            <td>classCapacity:</td>
            <td>
<%--                <input type="text" name="classCapacity"/>--%>
                <select name="classCapacity">
                    <option value="20">20</option>
                    <option value="25">25</option>
                    <option value="30">30</option>
                    <option value="35">35</option>
                    <option value="40">40</option>
                    <option value="45">45</option>
                    <option value="50+">50 or more</option>
                </select>
            </td>
        </tr>

        <tr><td>email:</td><td><textarea cols="30" rows="1" name="email" placeholder="Professor's Email address"></textarea></td></tr>
        <tr><td>detail:</td><td><textarea cols="50" rows="10" name="detail" placeholder="Your Review for Class"></textarea></td></tr>
    </table>
    <button type="button" onclick="location.href='list'">목록보기</button>
    <button type="submit">등록하기</button>
</form>

</body>
</html>