<div id='Questions'>
	<div class="col-sm-12">  

		<div class="form-group">  
			<div class="col-sm-12">   
				<div class="alert alert-success" role="alert">Specific Issues</div> 
			</div> 
		</div>        

		<div class="form-group">
			<label class="col-sm-2 control-label" for="qa_1">qa_1</label>
			<div class="col-sm-10"> 
				<input type="text" name="qa_1" value="<?php echo get_text($write['qa_1']); ?>" id="qa_1" class="form-control input-sm" size="50" maxlength="255">
				<input type="hidden" name="qa_html" value="1"> 
			</div>
		</div>

		<div class="form-group">
			<label class="col-sm-2 control-label" for="qa_2">qa_2</label>
			<div class="col-sm-10"> 
				Are there any specific issues you have?     Yes     No
			</div>
		</div> 

		<div class="form-group"> 
			<div class="col-sm-2"></div>
			<div class="col-sm-10">
				<b>If Yes, please explain</b>
			</div> 
		</div>  

		<div class="form-group"> 
			<label class="col-sm-2 control-label" for="qa_2">Text</label>
			<div class="col-sm-10">  
				<?php echo $editor_html; // 에디터 사용시는 에디터로, 아니면 textarea 로 노출 ?>
			</div> 
		</div>

		<div class="form-group"> 
			<div class="col-sm-12" style="text-align: center;"> 
				<br><br>
				<button type="submit" id="btn_submit" accesskey="s" class="btn btn-color btn-sm">
					<i class="fa fa-check"></i> <b>작성완료</b>
				</button> 
				<br><br><br><br>
			</div>
		</div>  
		
	</div> 	
</div>