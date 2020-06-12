<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/jsp/common/pub.jsp"%>
<style type="text/css">
	* {
		font-family: "黑体";
	}
	* {
		font-family: "黑体";
	}
	.am-radio-inline{
		margin-right:4%;
	}
	input[type="text"]{
		width:500px;
		height: 32px;
	}
	tr{
		height: 50px;
		vertical-align:inherit;
	}
	#preview , #save{
		width: 120px;
	}
</style>
<div class="c-bread">
	<ol class="am-breadcrumb">
		<li>
			<a href="#" class="c-level-1">活动管理</a>
		</li>
		<li>
			<a href="#" class="c-level-2">兑奖专区</a>
		</li>
		<li>
			<a href="#" class="c-level-3" style="color:#0A60A9 ;">添加商品</a>
		</li>
	</ol>
</div>

<div class="am-u-md-12">
	<form action="##" id="addshopform" method="post">
		<table border="0">
			<tr>
				<td style="width: 150px">商品名称：</td>
				<td><input type="text" name="prodName" id="prodName"/></td>
			</tr>
			<tr>
				<td style="width: 150px">商品代码：</td>
				<td><input type="text" name="prodCode" id="prodCode"/></td>
			</tr>
			<tr>
				<td style="width: 150px">所需津元宝数：</td>
				<td>
					<select name="prodType" id="prodType">
						<option value="1">实物</option>
						<option value="2">虚拟</option>
					</select>
				</td>
			</tr>
			<tr>
				<td style="width: 150px">使用津元宝数量：</td>
				<td><input type="text" name="ingotNum" id="ingotNum"/></td>
			</tr>
			<tr>
				<td style="width: 150px">每个津元宝可低现金数：</td>
				<td><input type="text" name="subsPrice" id="subsPrice"/></td>
			</tr>
			<tr>
				<td style="width: 150px">售价：</td>
				<td><input type="text" name="prodPrice" id="prodPrice"/></td>
			</tr>
			<tr>
				<td style="width: 150px">原价：</td>
				<td><input type="text" name="oldPrice" id="oldPrice"/></td>
			</tr>
			<tr>
				<td style="width: 150px">可售数量：</td>
				<td><input type="text" name="prodNum" id="prodNum"/></td>
			</tr>
			<tr>
				<td style="width: 150px">列表图：</td>
				<td>
					<input type="file" class="file" id ="file" name="file" multiple="multiple" style="width: 260px;" value="未选择任何文件" />
					<input type="text" name="picUrl" id="picurl" style="display:none;">
					<span>图片尺寸：300*180</span>
				</td>
			</tr>

			<tr>
				<td colspan="2">商品描述：</td>
			</tr>
			<tr>
				<td colspan="2">
					<div>
					    <script id="editor" type="text/plain" style="width:1024px;height:500px;"></script>
					</div>
				</td>	
			</tr>
			
			<tr>
				<td colspan="2">
					<input type="checkbox" name="" id="check" value="" />立即上架
				</td>
				
			</tr>
			
			<tr>
				<td colspan="2">
					<button type="button" class="am-btn am-btn-primary am-radius" id="save">保存</button>
				</td>
			</tr>
		</table>
	</form>
</div>

<script type="text/javascript">
	//上传图片
	var picurl = "";
	var fileM = document.querySelector("#file");
	$("#file").on("change",function(){
		var fileObj = fileM.files[0];
		var formData = new FormData();
		formData.append('file', fileObj);
		var ajax = new XMLHttpRequest();
		ajax.open("POST", "${ctx}/upload/photoUpload.do", true);
		ajax.send(formData);
		ajax.onreadystatechange = function() {
			if(ajax.readyState == 4) {
				if(ajax.status >= 200 && ajax.status < 300 || ajax.status == 304) {
					picurl = ajax.responseText;
					$("#picurl").val(picurl);
				}
			}
		};
	});
	
	var check = true;
	$("#save").click(function(){
		//判断商品名称
		var prodName = $("#prodName").val();
		if(prodName == ""){
			check = false;
		}
		//判断商品代码
		var prodCode = $("#prodCode").val();
		if(prodCode == ""){
			check = false;
		}
		//使用金元宝数量
		var ingotNum = $("#ingotNum").val();
		if(ingotNum == ""){
			check = false;
		}
		//每个金元宝可低现金数
		var subsPrice = $("#subsPrice").val();
		if(subsPrice == ""){
			check = false;
		}
		//售价
		var prodPrice = $("#prodPrice").val();
		if(prodPrice == ""){
			check = false;			
		}
		//原价
		var oldPrice = $("#oldPrice").val();
		if(oldPrice == ""){
			check = false;			
		}
		//可售数量
		var prodNum = $("#prodNum").val();
		if(prodNum == ""){
			check = false;	
		}
		//上传图片
		var picurl = $("#picurl").val();
		if(picurl == ""){
			check = false;	
		}
		if(check){
			$.ajax({
				url:'${ctx}/a/exprizezone/addproduct.do',
				type:'post',
				data:$('#addshopform').serialize(),
				success:function(resp){
					console.log(resp);
				}
			});
		}
	});
	//实现头部导航的切换
  	$('.c-bread li a').click(function(){
  		$(this).parents("li").nextAll().hide();
  		$(this).addClass("am-active");
  		var title = $(this).text();
  		var link;
  		if(title == "广告管理"){
  			link = "${ctx}/jsp/system_tjh/page/false.jsp";
  		}else if(title == "活动管理"){
  			/* link = "${ctx}/jsp/system_tjh/jsp/page/active.jsp"; */
  			link = "${ctx}/jsp/system_tjh/page/false.jsp";
  		}else if(title == "半价抢购"){
  			link = "${ctx}/jsp/system_tjh/page/active/sale-buy.jsp";
  		}else if(title == "兑奖专区"){
  			/* link = "${ctx}/jsp/system_tjh/page/active/buy-notify.jsp"; */
  			link = "${ctx}/jsp/system_tjh/page/active/sale-buy.jsp";
  		}else if(title == "购买通知管理"){
  			link = "${ctx}/jsp/system_tjh/page/active/buy-notify.jsp";
  		}else if(title == "兑奖纪录"){
  			link = "${ctx}/jsp/system_tjh/page/active/record.jsp";
  		}else if(title == "限时抢购"){
  			link = "${ctx}/jsp/system_tjh/page/limit.jsp";
  		}else if(title == "商品管理"){
  			link = "${ctx}/jsp/system_tjh/page/limit/limit-shop.jsp";
  		}else if(title == "本地特惠"){
  			link = "${ctx}/jsp/system_tjh/page/location.jsp";
  		}else if(title == "客服管理"){
  			link = "${ctx}/jsp/system_tjh/page/service.jsp";
  		}else if(title == "用户管理"){
  			link = "${ctx}/jsp/system_tjh/page/user.jsp";
  		}else if(title == "津元宝导入纪录"){
  			link = "${ctx}/jsp/system_tjh/page/user-record.jsp";
  		}else if(title == "添加商品"){
  			link = "${ctx}/jsp/system_tjh/page/active/addShop.jsp";
  		}
  		
  		$.ajax({
			url:link,
			type:"get",
			data:{},
			dataType:"html",
			success:function(html){	//载入右侧内容
				$("#c-right-wrapper").html(html);
				console.log(link)
			}
		});
  			
  	});
	
  //实例化编辑器
    //建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
    

    var editor = new UE.ui.Editor('editor');
    editor.render('editor');
  	
    function isFocus(e){
        alert(UE.getEditor('editor').isFocus());
        UE.dom.domUtils.preventDefault(e)
    }
    function setblur(e){
        UE.getEditor('editor').blur();
        UE.dom.domUtils.preventDefault(e)
    }
    function insertHtml() {
        var value = prompt('插入html代码', '');
        UE.getEditor('editor').execCommand('insertHtml', value)
    }
    function createEditor() {
        enableBtn();
        UE.getEditor('editor');
    }
    function getAllHtml() {
        alert(UE.getEditor('editor').getAllHtml())
    }
    function getContent() {
        var arr = [];
        arr.push("使用editor.getContent()方法可以获得编辑器的内容");
        arr.push("内容为：");
        arr.push(UE.getEditor('editor').getContent());
        alert(arr.join("\n"));
    }
    function getPlainTxt() {
        var arr = [];
        arr.push("使用editor.getPlainTxt()方法可以获得编辑器的带格式的纯文本内容");
        arr.push("内容为：");
        arr.push(UE.getEditor('editor').getPlainTxt());
        alert(arr.join('\n'))
    }
    function setContent(isAppendTo) {
        var arr = [];
        arr.push("使用editor.setContent('欢迎使用ueditor')方法可以设置编辑器的内容");
        UE.getEditor('editor').setContent('欢迎使用ueditor', isAppendTo);
        alert(arr.join("\n"));
    }
    function setDisabled() {
        UE.getEditor('editor').setDisabled('fullscreen');
        disableBtn("enable");
    }

    function setEnabled() {
        UE.getEditor('editor').setEnabled();
        enableBtn();
    }

    function getText() {
        //当你点击按钮时编辑区域已经失去了焦点，如果直接用getText将不会得到内容，所以要在选回来，然后取得内容
        var range = UE.getEditor('editor').selection.getRange();
        range.select();
        var txt = UE.getEditor('editor').selection.getText();
        alert(txt)
    }

    function getContentTxt() {
        var arr = [];
        arr.push("使用editor.getContentTxt()方法可以获得编辑器的纯文本内容");
        arr.push("编辑器的纯文本内容为：");
        arr.push(UE.getEditor('editor').getContentTxt());
        alert(arr.join("\n"));
    }
    function hasContent() {
        var arr = [];
        arr.push("使用editor.hasContents()方法判断编辑器里是否有内容");
        arr.push("判断结果为：");
        arr.push(UE.getEditor('editor').hasContents());
        alert(arr.join("\n"));
    }
    function setFocus() {
        UE.getEditor('editor').focus();
    }
    function deleteEditor() {
        disableBtn();
        UE.getEditor('editor').destroy();
    }
    function disableBtn(str) {
        var div = document.getElementById('btns');
        var btns = UE.dom.domUtils.getElementsByTagName(div, "button");
        for (var i = 0, btn; btn = btns[i++];) {
            if (btn.id == str) {
                UE.dom.domUtils.removeAttributes(btn, ["disabled"]);
            } else {
                btn.setAttribute("disabled", "true");
            }
        }
    }
    function enableBtn() {
        var div = document.getElementById('btns');
        var btns = UE.dom.domUtils.getElementsByTagName(div, "button");
        for (var i = 0, btn; btn = btns[i++];) {
            UE.dom.domUtils.removeAttributes(btn, ["disabled"]);
        }
    }

    function getLocalData () {
        alert(UE.getEditor('editor').execCommand( "getlocaldata" ));
    }

    function clearLocalData () {
        UE.getEditor('editor').execCommand( "clearlocaldata" );
        alert("已清空草稿箱")
    }
</script>