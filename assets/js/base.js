function remStyle(){
    var w = document.documentElement.clientWidth || document.body.clientWidth
    document.documentElement.style.fontSize = w/375*100+"px";
    console.log(w)
}

remStyle();
window.onresize = remStyle;
