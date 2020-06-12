<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>aaa</title>
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport" />
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="apple-mobile-web-app-status-bar-style" content="black" />
    <meta name="format-detection" content="telephone=no, email=no" />
</head>
<body>

    <div class="container">
        <div class="titleBar">
            <div class="titleBar-back" onclick="toHome()">
             	<img src="${stax}/assets/images/history.png" />&nbsp;返回
            </div>
            <div class="titleBar-text am-text-truncate">诗词PK</div>
            <!-- <div class="titleBar-close" onclick="alert('shutdown');">关闭</div> -->
        </div>
        <div class="titleBar-close">关闭</div>

    </div><!-- end container -->

</body>
<script>
function toHome() {
	var dict = [];
    dict["scheme"] = "ccbwebapi";
    dict["operation"] = "webshare";
    dict["title"] = "test123";
    dict["description"]="ddddffffff";
    dict["url"]= encodeURIComponent("http://192.168.3.189:8080/tjpt/poem/helper.do?pd=ezHnWaRfp2c%3D&n=wm%2Bt6Z4idl0%3D");
    callNative(dict);
}




function callNative(dict) {
    var para = makeParas(dict)
    executeCallIframe(dict["scheme"]+"://"+ dict["operation"]+"?"+para)
}

var iframe = null;
function executeCallIframe(url) {
    if(iframe == null) {
        iframe = document.createElement("IFRAME");
        iframe.style.display = "none";
        document.body.appendChild(iframe);
    }
    iframe.setAttribute("src", url);
}

function makeParas(dict) {
    var para = "";
    for (var key in dict){
        if( key != "scheme" && key != "operation"){
            para = para + key+"="+dict[key]+"&";
        }
    }
    para=para.substr(0,para.length-1);
    return para;
}
</script>
</body>
</html>