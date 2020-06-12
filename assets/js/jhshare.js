function toShare(title, desc, url, imgUrl) {
	var dict = [];
	dict["scheme"] = "ccbwebapi";
	dict["operation"] = "webshare";
	dict["title"] = title;
	dict["description"] = desc;
	dict["url"] = url;
	dict["imageurl"] = imgUrl;
	callNative(dict);
}

function callNative(dict) {
	var para = makeParas(dict);
	executeCallIframe(dict["scheme"] + "://" + dict["operation"] + "?" + para);
}

var iframe = null;
function executeCallIframe(url) {
	if (iframe == null) {
		iframe = document.createElement("IFRAME");
		iframe.style.display = "none";
		document.body.appendChild(iframe);
	}
	iframe.setAttribute("src", url);
}

function makeParas(dict) {
	var para = "";
	for ( var key in dict) {
		if (key != "scheme" && key != "operation") {
			para = para + key + "=" + dict[key] + "&";
		}
	}
	para = para.substr(0, para.length - 1);
	return para;
}