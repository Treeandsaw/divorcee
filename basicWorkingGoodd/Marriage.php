<div id='Marriage'>
	<div class="col-sm-12 masthead">  

			<div class="form-group">  
			<div class="col-sm-12">   
					<div class="alert alert-success" role="alert">Marriage Info</div>
			</div> 
		</div> 

		<div class="form-group">
			<label class="col-sm-4 control-label" for="qa_1">Date of your Marriage?</label>
			<div class="col-sm-8"> 
					<input type="text" name="qa_1" value="<?php echo get_text($write['qa_1']); ?>" id="qa_1" class="form-control input-sm" size="50" maxlength="255">
					<input type="hidden" name="qa_html" value="1"> 
			</div>
		</div>

		<div class="form-group">
			<label class="col-sm-4 control-label" for="qa_2">State or Country of Marriage?</label>
			<div class="col-sm-8"> 
					<input type="text" name="qa_2" value="<?php echo get_text($write['qa_2']); ?>" id="qa_2" class="form-control input-sm" size="50" maxlength="255">
					<input type="hidden" name="qa_html" value="1"> 
			</div>
		</div>

		<div class="form-group">
			<label class="col-sm-4 control-label" for="qa_3">Date you Separated?</label>
			<div class="col-sm-8"> 
					<input type="text" name="qa_3" value="<?php echo get_text($write['qa_3']); ?>" id="qa_3" class="form-control input-sm" size="50" maxlength="255">
					<input type="hidden" name="qa_html" value="1"> 
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