<div id='WifeName'>
	<div class="col-sm-12 masthead">  

		<div class="form-group">  
			<div class="col-sm-12">   
				<div class="alert alert-success" role="alert">Wife's Name etc.</div> 
			</div> 
		</div>    

		<div class="form-group"> 
			<div class="col-sm-2"></div>
			<div class="col-sm-10">   
				<div class="alert alert-info" role="alert">
					<h5 class='paddingLineCenter'>
						 Additional Information on Wife
					</h5>
				</div>
			</div> 
		</div> 

		<div class="form-group">
			<label class="col-sm-4 control-label" for="qa_1">Wife wants to change name to prior name?</label>
			<div class="col-sm-8"> 
					<input type="text" name="qa_1" value="<?php echo get_text($write['qa_1']); ?>" id="qa_1" class="form-control input-sm" size="50" maxlength="255">
					<input type="hidden" name="qa_html" value="1"> 
			</div>
		</div>

		<div class="form-group">
			<label class="col-sm-4 control-label" for="qa_2">Wife's former name?  </label>
			<div class="col-sm-8"> 
					<input type="text" name="qa_2" value="<?php echo get_text($write['qa_2']); ?>" id="qa_2" class="form-control input-sm" size="50" maxlength="255">
					<input type="hidden" name="qa_html" value="1"> 
			</div>
		</div>

		<div class="form-group">
			<label class="col-sm-4 control-label" for="qa_3">Is wife pregnant?</label>
			<div class="col-sm-8"> 
					<input type="text" name="qa_3" value="<?php echo get_text($write['qa_3']); ?>" id="qa_3" class="form-control input-sm" size="50" maxlength="255">
					<input type="hidden" name="qa_html" value="1"> 
			</div>
		</div>  

		<div class="form-group">
			<label class="col-sm-4 control-label" for="qa_4">If yes, is the Husband the father?</label>
			<div class="col-sm-8"> 
					<input type="text" name="qa_4" value="<?php echo get_text($write['qa_4']); ?>" id="qa_4" class="form-control input-sm" size="50" maxlength="255">
					<input type="hidden" name="qa_html" value="1"> 
			</div>
		</div> 

		<div class="form-group"> 
			<div class="col-sm-2"></div>
			<div class="col-sm-10">   
				<div class="alert alert-info" role="alert">
					<h5 class='paddingLine'>
						 <b>Spousal Support</b>
						 This is support specifically for the spouse, not child support. Nevada State law states if there is no end date, spousal support will cease upon one parties death or if the spouse recieving support remarries. Please click Here to review the Nevada Revised Statutes.
					</h5>
				</div>
			</div> 
		</div>  

		<div class="form-group">
			<label class="col-sm-4 control-label" for="qa_5">Party paying spousal support <br>	1.None   2.Husband   3.Wife</label>
			<div class="col-sm-8"> 
					<input type="text" name="qa_5" value="<?php echo get_text($write['qa_5']); ?>" id="qa_5" class="form-control input-sm" size="50" maxlength="255">
					<input type="hidden" name="qa_html" value="1"> 
			</div>
		</div>

		<div class="form-group">
			<label class="col-sm-4 control-label" for="qa_6">Amount	$ per month</label>
			<div class="col-sm-8"> 
					<input type="text" name="qa_6" value="<?php echo get_text($write['qa_6']); ?>" id="qa_6" class="form-control input-sm" size="50" maxlength="255">
					<input type="hidden" name="qa_html" value="1"> 
			</div>
		</div>

		<div class="form-group">
			<label class="col-sm-4 control-label" for="qa_7">To end date</label>
			<div class="col-sm-8"> 
					<input type="text" name="qa_7" value="<?php echo get_text($write['qa_7']); ?>" id="qa_7" class="form-control input-sm" size="50" maxlength="255">
					<input type="hidden" name="qa_html" value="1"> 
			</div>
		</div>    

		<div class="form-group"> 
			<div class="col-sm-2"></div>
			<div class="col-sm-10">   
				<div class="alert alert-info" role="alert">
					<h5 class='paddingLine'>
						<b>Income Tax Obligation</b>
						Unknown income tax obligation for any past year, shall be paid:
					</h5>
				</div>
			</div> 
		</div> 

		<div class="form-group">
			<label class="col-sm-4 control-label" for="qa_8">
				1. by the party whose income or deductions caused the tax liability <br>
				2. by the Husband  <br>
				3. by the Wife  <br>
				4. by both parties equally <br>
			</label>
			<div class="col-sm-8"> 
					<input type="text" name="qa_8" value="<?php echo get_text($write['qa_8']); ?>" id="qa_8" class="form-control input-sm" size="50" maxlength="255">
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






