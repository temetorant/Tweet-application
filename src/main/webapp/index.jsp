<%@ page language="java" contentType="text/html;
 charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
    <meta charset="UTF-8">
    <title>どこつぶ - ログイン</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body class="bg-light">
<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <div class="card shadow">
                <div class="card-header text-center">
                    <h2>どこつぶへようこそ</h2>
                </div>
                
                <div class="card-body">
                    <form action="Login" method="post">
                        <div class="mb-3">
                            <label class="form-label">ユーザー名</label>
                            <input type="text" name="name" class="form-control" required>
                        </div>
                        
                        <div class="mb-3">
                            <label class="form-label">パスワード</label>
                            <input type="password" name="pass" class="form-control" required>
                        </div>
                        <button type="submit" class="btn btn-primary w-100">ログイン</button>
                    </form>
                </div>
                
            </div>
        </div>
    </div>
</div>
</body>
</html>
