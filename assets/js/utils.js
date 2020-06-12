//动态fontSize控制rem
(function (doc, win) {
  var docEl = doc.documentElement,
    resizeEvt = 'orientationchange' in window ? 'orientationchange' : 'resize',
    recalc = function () {
      var clientWidth = docEl.clientWidth;
      if (!clientWidth) return;
      docEl.style.fontSize = 20 * (clientWidth / 320) + 'px';
    };
  if (!doc.addEventListener) return;
  win.addEventListener(resizeEvt, recalc, false);
  doc.addEventListener('DOMContentLoaded', recalc, false);
})(document, window);


//
if(!Function.prototype.bind){
    Function.prototype.bind = function(){
        var fn = this, args = Array.prototype.slice.call(arguments), object = args.shift();
        return function(){
            return fn.apply(object, args.concat(Array.prototype.slice.call(arguments)));
        }
    }
}

function trim(str){ //删除左右两端的空格
  return str.replace(/(^\s*)|(\s*$)/g, "");
}