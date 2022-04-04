<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
</head>
<body>
<form action="aM-6.jsp">
    <table>
   		<tr>
        	<td>이름</td>
        	<td><input type="text" name = "Nicname"></td>
        </tr>
        <tr>
        	<td>생년월일</td>
        	<td><input type="text" placeholder="특수기호없이 8글자"  name = "Bdate"></td>
        </tr>
        <tr>
        	<td>전화번호</td>
        	<td><input type="text" placeholder="-제외" name = "tel"></td>
        </tr>

        <tr>
            <td>아이디</td>
            <td><input placeholder="Plese ID" name="id"></td>
        </tr>

        <tr>
            <td>비밀번호</td>
            <td><input type="password"  placeholder="Plese PW" name = "pw"></td>
        </tr>
		<tr>
        	<td>이메일</td>
        	<td> <input type="email" name = "emal"></td>
        </tr>
        <tr>
            <td>성별</td>
            <td>
                <input type="radio" name = "gender" value="남" checked>남
                <input type="radio" name = "gender" value="여">여
            </td>
        </tr>
        <tr>
            <td>가입경로</td>
            <td>
                <select name = "intro">
                    <option value="웹검색" selected>웹검색</option>
                    <option value="지인소개">지인소개</option>
                    <option value="기타">기타</option>
                </select>
            </td>
        </tr>
        <tr>
            <td>주소지</td>
            <td>
                <select size="5" name = "addr">
                    <option selected value = "서울">서울</option>
                    <option value = "경기">경기</option>
                    <option value ="부산">부산</option>
                    <option value = "인천">인천</option>
                    <option value = "기타">기타</option>
                </select>
            </td>
            <tr>
            <td>여행 가고싶은 곳</td>
            <td>
                <input type="checkbox" name="Trip" value="서울">서울
                <input type="checkbox" name="Trip" value="제주도에 어서옵서예">제주도에 어서옵서예         
                <input type="checkbox" name="Trip" value="뉴욕">뉴욕
                <input type="checkbox" name="Trip" value="런던">런던
                <input type="checkbox" name="Trip" value="일본">일본
                <input type="checkbox" name="Trip" value="파리">파리
                <input type="checkbox" name="Trip" value="하와이">하와이
                <input type="checkbox" name="Trip" value="눈뜨고 코베이징">눈뜨고 코베이징
                <input type="checkbox" name="Trip" value="모히또 가서 몰디브">모히또가서 몰디브
                

            </td>
      		</tr>
        
              <tr>
            <td>취미</td>
            <td>
                <select name="hobby" size="4" multiple>
                    <option value="영화">영화</option>
                    <option value="운동">운동</option>
                    <option value="독서">독서</option>
                    <option value="드라마 감상">드라마 감상</option>
                    <option value="기타">기타</option>
                </select>
            </td>
        </tr>
        </tr>
        <tr>
            <td>메모</td>
            <td>
                <textarea rows="4" name = "memo"></textarea>
            </td>
        </tr>
    </table>
    <input type="submit" value="가입">
</form>

</body>
</html>