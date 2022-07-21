<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="/assets/fonts/icomoon/style.css">

    <link rel="stylesheet" href="/assets/css/owl.carousel.min.css">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="/assets/css/bootstrap.min.css">

    <!-- Style -->
    <link rel="stylesheet" href="/assets/css/style.css">

    <title>Register</title>
</head>
<body>
<div class="content">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-6 contents">
                <div class="row justify-content-center">
                    <div class="col-md-12">
                        <div class="form-block">
                            <div align="center">
                                <a target="_blank" href="https://getform.io?ref=codepenHTML">
                                    <img src='https://i.imgur.com/O1cKLCn.png'>
                                </a>
                            </div>
                            <form action="{{route('registerpost')}}" method="post">
                                @csrf
                                <div class="form-group first">
                                    <input type="text" class="form-control" name="email" value="{{old('email')}}" placeholder="E-Mail">
                                </div>
                                <div class="form-group last mb-4">
                                    <input type="password" class="form-control" name="password" value="{{old('password')}}" placeholder="Password">
                                </div>
                                <input type="submit" value="Sign İn" class="btn btn-pill text-white btn-block btn-dark">
                                <br>
                                <div class="d-flex mb-5 align-items-center">
                                    <label class="control control--checkbox mb-0"></label>
                                    <span class="ml-auto"><a href="{{route('login')}}" class="forgot-pass">Sign Up</a></span>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="/assets/js/jquery-3.3.1.min.js"></script>
<script src="/assets/js/popper.min.js"></script>
<script src="/assets/js/bootstrap.min.js"></script>
<script src="/assets/js/main.js"></script>
@include('sweetalert::alert')
</body>
</html>
