<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="/style.css">
    <!-- CSS only -->
    <link rel="icon" href="https://icon-library.com/images/icon-file/icon-file-22.jpg">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    <title>İndex</title>
</head>
<body>
<div class="col-md-6 offset-md-3 mt-5">
    <div align="center">
        <a target="_blank" href="https://getform.io?ref=codepenHTML">
        <img src='https://i.imgur.com/O1cKLCn.png'>
        </a>
    </div>
    <div align="right"><a href="{{route('exit')}}"><button type="submit" class="btn btn-dark">Exit</button></a></div>
    <form action="{{route('post')}}" method="post" enctype="multipart/form-data">
        @csrf
        <div class="form-group">
            <label for="exampleInputName">Full Name</label>
            <input type="text" name="full_name" value="{{old('full_name')}}" class="form-control" placeholder="Enter your name and surname">
        </div>
        <div class="form-group">
            <label for="exampleInputEmail1">Email address</label>
            <input type="text" name="email_address" value="{{old('email_address')}}" class="form-control" placeholder="Enter email">
        </div>
        <hr>
        <div class="form-group mt-3">
            <label class="mr-2">Upload your file:</label>
            <input type="file" name="file">
        </div>
        <hr>
            <div align="center"><button type="submit" class="btn btn-dark">Save</button></div>
    </form>
</div>
</body>
@include('sweetalert::alert')
</html>

