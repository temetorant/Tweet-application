<%@ page language="java" contentType="text/html;
 charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="model.User" %>
<% User loginUser = (User)session.getAttribute("loginUser"); %>
<!DOCTYPE html>

<html>
	<head>
	    <meta charset="UTF-8">
	    <title>どこつぶ - ログイン結果</title>
	    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
	</head>
	<body class="bg-light">
		<div class="container mt-5">
		    <div class="alert <%= (loginUser != null) ? "alert-success" : "alert-danger" %> text-center">
		        <% if (loginUser != null) { %>
		            <p>ログインに成功しました！ようこそ <strong><%= loginUser.getName() %></strong> さん</p>
		            <a href="Main" class="btn btn-primary mt-3">つぶやき投稿・閲覧へ</a>
		        <% } else { %>
		            <p>ログインに失敗しました。</p>
		            <a href="index.jsp" class="btn btn-secondary mt-3">TOPへ戻る</a>
		        <% } %>
		    </div>
		</div>
	</body>
</html>
