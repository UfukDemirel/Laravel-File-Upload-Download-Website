<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="/style.css">
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
    @foreach($link as $key)
    @if ($key->file_link==\Illuminate\Support\Facades\Auth::user()->file_link)

            <div class="form-group">
                <label for="exampleInputName">Link Copy</label>
                <input type="text" value="{{$key->file_link}}" class="form-control">
            </div>
    @endif
    @endforeach
    <br>
    <div align="right"><a href="{{route('index')}}"><button type="submit" class="btn btn-dark">Back</button></a></div>
</div>
</body>
@include('sweetalert::alert')
</html>

