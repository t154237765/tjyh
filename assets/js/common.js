//网站路径
var ctx = "http://tianjin.boyaunite.com";

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

/*验证手机号*/
function checkPhone(phonenum){
	var phone = parseInt(phonenum);
    var reg = /^1(3|4|5|6|7|8|9)\d{9}$/;
    if(!reg.test(phone)){
        weui.toast('请输入正确的手机号码', {
            duration: 1000,
            className: 'toast-warn',
            callback: function(){
                //document.querySelector("#phone").value = "";
            }
        });
        return false;
    }    
    return true;
}
/*反注入*/
function htmlDecode(value){
  return $('<div/>').html(value).text();
}

/*body*/
// document.getElementById('modal').style.height=window.innerHeight+'px';
// document.getElementById('modal').style.width=window.innerWidth+'px';
// document.getElementById('modal').ontouchstart=function(e){
//     e.preventDefault()
// };
