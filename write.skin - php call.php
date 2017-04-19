<?php
if (!defined('_GNUBOARD_')) exit; // 개별 페이지 접근 불가

// add_stylesheet('css 구문', 출력순서); 숫자가 작을 수록 먼저 출력됨
add_stylesheet('<link rel="stylesheet" href="'.$skin_url.'/style.css" media="screen">', 0);

// 헤더 출력
if($header_skin)
	include_once('./header.php');

?>

<?php if($is_dhtml_editor) { ?>
	<style>
		#qa_content { border:0; display:none; }
	</style>
<?php } ?>

<div id="bo_w" class="write-wrap box-colorset<?php echo (G5_IS_MOBILE) ? ' box-colorset-mobile' : '';?>">
	<?php if(!$header_skin) { //헤더 없으면 출력 ?>
		<div class="well">
			<h2><?php echo ($w == "u") ? '글수정' : '글작성'; ?></h2>
		</div>
	<?php } ?>	
	<!-- 게시물 작성/수정 시작 { -->
    <form name="fwrite" id="fwrite" action="<?php echo $action_url ?>" onsubmit="return fwrite_submit(this);" method="post" enctype="multipart/form-data" autocomplete="off" role="form" class="form-horizontal">
    <input type="hidden" name="w" value="<?php echo $w ?>">
    <input type="hidden" name="qa_id" value="<?php echo $qa_id ?>">
    <input type="hidden" name="sca" value="<?php echo $sca ?>">
    <input type="hidden" name="stx" value="<?php echo $stx ?>">
    <input type="hidden" name="page" value="<?php echo $page ?>">

	<?php if ($category_option) { ?>
		<div class="form-group">
			<label class="col-sm-2 control-label hidden-xs" for="qa_category">분류<strong class="sound_only">필수</strong></label>
			<div class="col-sm-3">
				<select name="qa_category" id="qa_category" required class="form-control input-sm">
                    <option value="">선택하세요</option>
	                <?php echo $category_option ?>
		        </select>
			</div>
		</div>
	<?php } ?>

	<?php if ($is_email) { ?>
		<div class="form-group has-feedback">
			<label class="col-sm-2 control-label" for="qa_email">E-mail</label>
			<div class="col-sm-5">
                <input type="text" name="qa_email" value="<?php echo get_text($write['qa_email']); ?>" id="qa_email" <?php echo $req_email; ?> class="form-control input-sm email" size="50" maxlength="100">
				<span class="fa fa-envelope-o form-control-feedback"></span>
			</div>
			<div class="col-sm-5">
				<label style="font-weight:normal;">
					<input type="checkbox" name="qa_email_recv" value="1" <?php if($write['qa_email_recv']) echo 'checked="checked"'; ?>> 답변받기
				</label>
			</div>
		</div>
	<?php } ?> 

	<?php if ($is_hp) { ?>
		<div class="form-group has-feedback">
			<label class="col-sm-2 control-label" for="qa_hp">휴대폰</label>
			<div class="col-sm-5">
                <input type="text" name="qa_hp" value="<?php echo get_text($write['qa_hp']); ?>" id="qa_hp" <?php echo $req_hp; ?> class="form-control input-sm" size="30">
				<span class="fa fa-phone form-control-feedback"></span>
			</div>
			<?php if($qaconfig['qa_use_sms']) { ?>
				<div class="col-sm-5">
					<label style="font-weight:normal;">
		                <input type="checkbox" name="qa_sms_recv" value="1" <?php if($write['qa_sms_recv']) echo 'checked="checked"'; ?>> 답변등록 SMS알림 수신
					</label>
				</div>
			<?php } ?>
		</div>
	<?php } ?>  

	<div class="form-group">
		<label class="col-sm-2 control-label" for="qa_subject">File Name<strong class="sound_only">필수</strong></label>
		<div class="col-sm-8"> 
			<div class="input-group">
				<input type="text" name="qa_subject" value="<?php echo $write['qa_subject']; ?>" id="qa_subject" required class="form-control input-sm" size="70" maxlength="255" placeholder='Saving File Name'> 
			</div> 
		</div>
		<div class="col-sm-2"></div>
	</div> 

	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

	<!-- Optional theme -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

	<!-- Latest compiled and minified JavaScript -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

	<style>
		.bg-padding {
			padding: 10px;
		}
		.bg-padding-top { 
			line-height: 20px;
			text-align: left;
		}  
		.bg-padding-narrow { 
			line-height: 20px;
		}  
		.masthead { 
		  background-color: #42e8bca;
		}
		.alert { 
			font-weight: bold;
			font-size: 20px;
			border-radius: 25px;
			text-align: center; 
			padding: 12px;
		} 
		.debt {  
			font-weight: bold;
			font-size: 14px; 
			text-align: center; 
			padding: 8px; 
			background-color: #E5E5E5;
		}
		.paddingLine {  
			line-height: 20px;
			text-align: left;  
		}
		.paddingLineCenter {  
			line-height: 20px;
			text-align: center;  
		}
	</style>

	<br>

	<div class="form-group"> 

		<div class="col-sm-12">   
			<div class="alert alert-info" role="alert">Instruction</div>
		</div>  

		<div class="col-sm-12"> 
			<br>
			<p class="bg-info bg-padding">Thank you for your interest in our services. We pride ourselves on providing complete legal services, including court filing and have</p>
			<ul class="bg-padding-top">
				<li>a supervising attorney</li>
				<li>a 100% money back guarantee - if signed correctly</li>
				<li>an A+ rating with the Better Business Bureau</li>
				<li>been in business since 1995</li>
			</ul>
			<p class='bg-padding bg-padding-top'>
				After you complete the questionnaire, we will type papers for the parties to notarize. You follow signing instructions and return the papers to us and we do all the filing with the court. 
			</p>
			<p class='bg-padding bg-padding-top'>
				 When completed, click the "Submit Form" icon at the end of the form. Include credit card information, use PayPal, or send a check or money order for our typing fee of $300 for a Joint Petition (when both parties sign) or $500 for a Complaint for Divorce (with only 1 party signing). Once your papers have been typed the deposit has been fully earned. 
			</p>
			<p class="bg-info bg-padding">
				Additional costs and fees which are applicable to divorce actions are as follows
			</p>
			<ul class="bg-padding-top">
				<li> A filing fee of $325 for every case (which goes towards court costs),  </li>
				<li> For a Complaint when only 1 party signs: Either personal service of $100; or service by publication of approximately $100 and due diligence search of $125. We must publish in the county of defendant's last known address — so publication can be more.  </li>
				<li> You may need a certified copy of the Decree for INS, Social Security or DMV. Each copy is $20. </li> 
			</ul> 
		</div> 
	</div>

	<div style="text-align: center; padding: 20px;">  
		<button type="button" class="btn btn-success">Marriage Info	</button>
		<button type="button" class="btn btn-success">Your Info	</button>
		<button type="button" class="btn btn-success">Spouse Info</button>
		<button type="button" class="btn btn-success">Child Info</button>
		<button type="button" class="btn btn-success">Witness Info</button>
		<br><br>
		<button type="button" class="btn btn-warning">Wife's Name etc.</button>
		<button type="button" class="btn btn-warning">Wife's Prop/Debt</button>
		<button type="button" class="btn btn-warning">Husb. Prop/Debt</button>  
		<button type="button" class="btn btn-info">Questions</button> 
		<button type="button" class="btn btn-danger">Payment Info</button>  
	</div>  

	<div class="form-group">
		<br><br>
		<?php include('Marriage.php') ?>
		<?php include('Your.php') ?>
		<?php include('Spouse.php') ?>
		<?php include('Child.php') ?>
		<?php include('Witness.php') ?>
		<?php include('WifeName.php') ?> 

		<?php include('WifeDebt.php') ?> 
		<?php include('HusbDebt.php') ?> 

		<?php include('Questions.php') ?>
		<?php include('Payment.php') ?>   
	</div>    

	<div class="form-group">
		<label class="col-sm-2 control-label">파일 #1</label>
		<div class="col-sm-5">
			<label class="control-label sp-label">
				<input type="file" name="bf_file[1]" title="파일첨부 1 :  용량 <?php echo $upload_max_filesize; ?> 이하만 업로드 가능">
			</label>
		</div>
		<div class="col-sm-5">
			<?php if($w == 'u' && $write['qa_file1']) { ?>
				<label class="control-label sp-label font-12"><input type="checkbox" id="bf_file_del1" name="bf_file_del[1]" value="1"> <?php echo $write['qa_source1']; ?> 파일 삭제</label>
			<?php } ?>
		</div>
	</div>	

	<div class="form-group">
		<label class="col-sm-2 control-label">파일 #2</label>
		<div class="col-sm-5">
			<label class="control-label sp-label">
				<input type="file" name="bf_file[2]" title="파일첨부 2 :  용량 <?php echo $upload_max_filesize; ?> 이하만 업로드 가능">
			</label>
		</div>
		<div class="col-sm-5">
			<?php if($w == 'u' && $write['qa_file2']) { ?>
				<label class="control-label sp-label font-12"><input type="checkbox" id="bf_file_del2" name="bf_file_del[2]" value="1"> <?php echo $write['qa_source2']; ?> 파일 삭제</label>
			<?php } ?>
		</div>
	</div>	

	<div class="write-btn text-center">
		<button type="submit" id="btn_submit" accesskey="s" class="btn btn-color btn-sm"><i class="fa fa-check"></i> <b>작성완료</b></button>
		<a href="<?php echo $list_href; ?>" class="btn btn-black btn-sm" role="button">목록</a>
	</div>

	<div class="clearfix"></div>

	</form>
</div>
<script>
function html_auto_br(obj)
{
	if (obj.checked) {
		result = confirm("자동 줄바꿈을 하시겠습니까?\n\n자동 줄바꿈은 게시물 내용중 줄바뀐 곳을<br>태그로 변환하는 기능입니다.");
		if (result)
			obj.value = "2";
		else
			obj.value = "1";
	}
	else
		obj.value = "";
}

function fwrite_submit(f)
{
	<?php echo $editor_js; // 에디터 사용시 자바스크립트에서 내용을 폼필드로 넣어주며 내용이 입력되었는지 검사함   ?>

	var subject = "";
	var content = "";
	$.ajax({
		url: g5_bbs_url+"/ajax.filter.php",
		type: "POST",
		data: {
			"subject": f.qa_subject.value,
			"content": f.qa_content.value
		},
		dataType: "json",
		async: false,
		cache: false,
		success: function(data, textStatus) {
			subject = data.subject;
			content = data.content;
		}
	});

	if (subject) {
		alert("제목에 금지단어('"+subject+"')가 포함되어있습니다");
		f.qa_subject.focus();
		return false;
	}

	if (content) {
		alert("내용에 금지단어('"+content+"')가 포함되어있습니다");
		if (typeof(ed_qa_content) != "undefined")
			ed_qa_content.returnFalse();
		else
			f.qa_content.focus();
		return false;
	}

	<?php if ($is_hp) { ?>
	var hp = f.qa_hp.value.replace(/[0-9\-]/g, "");
	if(hp.length > 0) {
		alert("휴대폰번호는 숫자, - 으로만 입력해 주십시오.");
		return false;
	}
	<?php } ?>

	document.getElementById("btn_submit").disabled = "disabled";

	return true;
}

$(function(){
	$("#qa_content").addClass("form-control input-sm write-content");
});
</script>
<!-- } 게시물 작성/수정 끝 -->