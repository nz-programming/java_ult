<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>新規情報登録</title>
		<link href="style.css" rel="stylesheet" type="text/css">
	</head>
	<body>
		<div id="main">
			<h1>登録情報を入力してください</h1>
			<form action="insert" method="post">
					<input type="hidden" id="id" name="id">
					<label for="email">Email</label>
					<input type="text" id="email" name="email">
					<label for="password">Password</label>
					<input type="text" id="password" name="password">
					<label for="name">氏名</label>
					<input type="text" id="name" name="name">
					<label for="gender">性別</label>
					<input type="radio" name="gender" value="0" checked=checked>男
					<input type="radio" name="gender" value="1">女
					<label for="blood">血液型</label>
					<select name="blood">
							<option value="A" selected>A型</option>
							<option value="B">B型</option>
							<option value="O">O型</option>
							<option value="AB">AB型</option>
					</select>
					<label for="old">年齢</label>
					<input type="number" id="old" name="old">
					<label for="memo">メモ</label>
					<textarea name="memo" rows="4" cols="41" maxlength="100"></textarea>
					<input type="submit" value="確認">
			</form>
		</div>
	</body>
</html>