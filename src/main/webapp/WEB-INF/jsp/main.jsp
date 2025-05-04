<%@ page language="java" contentType="text/html;
 charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="model.User, model.Mutter, java.util.List" %>

<%
    User loginUser = (User)session.getAttribute("loginUser");
    List<Mutter> mutterList = (List<Mutter>)application.getAttribute("mutterList");
    String errorMsg = (String)request.getAttribute("errorMsg");
%>
<!DOCTYPE html>

<html>
	<head>
	    <meta charset="UTF-8">
	    <title>どこつぶ - メイン</title>
	    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
	</head>
	
<body class="bg-white">
<div class="container mt-4">
    <div class="d-flex justify-content-between align-items-center mb-3">
        <h2>どこつぶ メイン</h2>
        <div>
            <span class="me-2"><strong><%= loginUser.getName() %></strong> さん、ログイン中</span>
            <a href="Logout" class="btn btn-outline-secondary btn-sm">ログアウト</a>
        </div>
    </div>

    <form action="Main" method="post" class="mb-4">
        <div class="input-group">
            <input type="text" name="text" class="form-control" placeholder="今、何してる？">
            <button class="btn btn-primary" type="submit">つぶやく</button>
        </div>
        <% if (errorMsg != null) { %>
            <div class="text-danger mt-2"><%= errorMsg %></div>
        <% } %>
    </form>

    <div class="mb-3">
        <a href="Main" class="btn btn-sm btn-secondary">更新</a>
    </div>

    <% for (Mutter mutter : mutterList) { %>
        <div class="card mb-2">
            <div class="card-body">
                <strong><%= mutter.getUserName() %></strong><br>
                <span><%= mutter.getText() %></span>
            </div>
        </div>
    <% } %>
</div>
</body>
</html>





