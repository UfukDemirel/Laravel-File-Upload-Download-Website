<!DOCTYPE html>
<html>
<link rel="icon" href="https://icon-library.com/images/icon-file/icon-file-22.jpg">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
<body>

<div align="center">
<h1>The a download attribute</h1>

<p>Click on the image to download it:<p>
    @foreach($link as $key)
    @if ($key->file_link==\Illuminate\Support\Facades\Auth::user()->file_link)
    <a href="/images/{{$key->file}}" download="{{$key->file}}">
        <img src="/images/{{$key->file}}" alt="{{$key->file}}" width="104" height="142">
    </a>
    @endif
    @endforeach
<p><b>Note:</b> The download attribute is not supported in IE or Edge (prior version 18), or in Safari (prior version 10.1).</p>
</div>
</body>
</html>
