<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/jsp/common/pub.jsp"%>
<div class="am-u-md-12">
	<div class="c-input">

		<div class="am-form-group">
		  <label for="doc-ta-1" class="c-db">短信内容：</label>
		  <textarea class="c-w100" rows="5" id="doc-ta-1"></textarea>
		</div>

		<label for="doc-ipt-3">短信长度：</label>
	    <input type="email" class="doc-ipt-3"> 字

	    <div class="am-checkbox">
		  <label>
		    <input type="checkbox"> 导入手机号码，（xls/xlsx或txt格式，每行一个手机号码）
		  </label>
		</div>

		<label class="ui_button ui_button_primary" for="xFile">上传文件</label>
		<form>
			<input type="file" id="xFile" accept="image/png, image/jpeg, image/gif, image/jpg" style="position:absolute;clip:rect(0 0 0 0);">
		</form>
	    
		<div class="am-checkbox">
		  <label>
		    <input type="checkbox"> 输入手机号码，（多个手机号码使用半角“，”分隔）
		  </label>
		</div>

		<textarea class="c-w100" rows="5" id="doc-ta-2"></textarea>

		<button type="button" class="am-btn am-btn-primary am-radius am-margin-top">提交</button>

	</div>
</div>