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
			<label class="col-sm-4 control-label" for="qa_71">Wife wants to change name to prior name?</label>
			<div class="col-sm-8"> 
					<input type="text" name="qa_71" value="<?php echo get_text($write['qa_71']); ?>" id="qa_71" class="form-control input-sm" size="50" maxlength="255">
					<input type="hidden" name="qa_html" value="1"> 
			</div>
		</div>

		<div class="form-group">
			<label class="col-sm-4 control-label" for="qa_72">Wife's former name?  </label>
			<div class="col-sm-8"> 
					<input type="text" name="qa_72" value="<?php echo get_text($write['qa_72']); ?>" id="qa_72" class="form-control input-sm" size="50" maxlength="255">
					<input type="hidden" name="qa_html" value="1"> 
			</div>
		</div>

		<div class="form-group">
			<label class="col-sm-4 control-label" for="qa_73">Is wife pregnant?</label>
			<div class="col-sm-8"> 
					<input type="text" name="qa_73" value="<?php echo get_text($write['qa_73']); ?>" id="qa_73" class="form-control input-sm" size="50" maxlength="255">
					<input type="hidden" name="qa_html" value="1"> 
			</div>
		</div>  

		<div class="form-group">
			<label class="col-sm-4 control-label" for="qa_74">If yes, is the Husband the father?</label>
			<div class="col-sm-8"> 
					<input type="text" name="qa_74" value="<?php echo get_text($write['qa_74']); ?>" id="qa_74" class="form-control input-sm" size="50" maxlength="255">
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
			<label class="col-sm-4 control-label" for="qa_75">Party paying spousal support <br>	1.None   2.Husband   3.Wife</label>
			<div class="col-sm-8"> 
					<input type="text" name="qa_75" value="<?php echo get_text($write['qa_75']); ?>" id="qa_75" class="form-control input-sm" size="50" maxlength="255">
					<input type="hidden" name="qa_html" value="1"> 
			</div>
		</div>

		<div class="form-group">
			<label class="col-sm-2 control-label" for="qb_1">Amount	$ per month</label>
			<div class="col-sm-10"> 
				<input type="text" name="qb_1" value="<?php echo get_text($write['qb_1']); ?>" id="qb_1" required class="form-control input-sm" size="50" maxlength="255">
				<input type="hidden" name="qa_html" value="1"> 
			</div>
		</div>  

		<div class="form-group">
			<label class="col-sm-2 control-label" for="qb_2">To end date</label>
			<div class="col-sm-10"> 
				<input type="text" name="qb_2" value="<?php echo get_text($write['qb_2']); ?>" id="qb_2" required class="form-control input-sm" size="50" maxlength="255">
				<input type="hidden" name="qa_html" value="1"> 
			</div>
		</div>  

		<div class="form-group">
			<label class="col-sm-2 control-label" for="qb_3">To end date</label>
			<div class="col-sm-10"> 
				<input type="text" name="qb_3" value="<?php echo get_text($write['qb_3']); ?>" id="qb_3" required class="form-control input-sm" size="50" maxlength="255">
				<input type="hidden" name="qa_html" value="1"> 
			</div>
		</div>      

		<div class="form-group">
			<label class="col-sm-2 control-label" for="qb_4">To end date</label>
			<div class="col-sm-10"> 
				<input type="text" name="qb_4" value="<?php echo get_text($write['qb_4']); ?>" id="qb_4" required class="form-control input-sm" size="50" maxlength="255">
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
			<label class="col-sm-4 control-label" for="qb_4">
				1. by the party whose income or deductions caused the tax liability <br>
				2. by the Husband  <br>
				3. by the Wife  <br>
				4. by both parties equally <br>
			</label> 
		</div> 

		<div class="form-group">
			<label class="col-sm-2 control-label" for="qb_5">To end date</label>
			<div class="col-sm-10"> 
				<input type="text" name="qb_5" value="<?php echo get_text($write['qb_5']); ?>" id="qb_5" required class="form-control input-sm" size="50" maxlength="255">
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






