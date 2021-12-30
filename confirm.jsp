<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>新規情報登録確認</title>
		<link href="style.css" rel="stylesheet" type="text/css">
	</head>
	<body>
		<div id="main">
			<h1>登録情報を確認してください</h1>
			<form action="confirm" method="post">
				<c:forEach var="insert" items="${insertList}">
					<label for="Email">Email</label>
					<input type="text" id="email" name="email" readonly="readonly" value="${insert.email}">
					<label for="password">Password</label>
					<input type="text" id="password" name="password" value="${insert.password}">
					<label for="name">氏名</label>
					<input type="text" id="name" name="name" value="${insert.name}">
					<label for="gender">性別</label>
					<c:if test="${insert.gender eq 0}">
						<input type="radio" name="gender" value="0" checked=checked>男
						<input type="radio" name="gender" value="1">女
					</c:if>
					<c:if test="${insert.gender eq 1}">
						<input type="radio" name="gender" value="0">男
						<input type="radio" name="gender" value="1" checked=checked>女
					</c:if>
					<label for="blood">血液型</label>
					<select name="blood">
						<c:if test="${insert.blood == 'A'}">
							<option value="A" selected>A型</option>
							<option value="B">B型</option>
							<option value="O">O型</option>
							<option value="AB">AB型</option>
						</c:if>
						<c:if test="${insert.blood == 'B'}">
							<option value="A">A型</option>
							<option value="B" selected>B型</option>
							<option value="O">O型</option>
							<option value="AB">AB型</option>
						</c:if>
						<c:if test="${insert.blood == 'O'}">
							<option value="A">A型</option>
							<option value="B">B型</option>
							<option value="O" selected>O型</option>
							<option value="AB">AB型</option>
						</c:if>
						<c:if test="${insert.blood == 'AB'}">
							<option value="A">A型</option>
							<option value="B">B型</option>
							<option value="O">O型</option>
							<option value="AB" selected>AB型</option>
						</c:if>
					</select>
					<label for="old">年齢</label>
					<input type="number" id="old" name="old" value="${insert.old}">
					<label for="memo">メモ</label>
					<textarea name="memo" rows="4" cols="41" maxlength="100">${insert.memo}</textarea>
					<input type="submit" value="登録">
					<button><a href="insert.jsp">修正</a></button>
				</c:forEach>
			</form>
		</div>
	</body>
</html>