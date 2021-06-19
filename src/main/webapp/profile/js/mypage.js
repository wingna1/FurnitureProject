$(function(){
	$('#dataPrivateDiv').hide();
 	$('#dataContactDiv').hide();
	$('#dataPasswordDiv').hide();
	 
	$('#private-modifyBtn').click(function(){
		$('#dataPrivateDiv').show();
		$('#private-closing').hide();
	});
	
	$('#private-modifyBtnCancle').click(function(){
		$('#dataPrivateDiv').hide();
		$('#private-closing').show();
	});
	
	
	
	
	
	
	$('#contact-modifyBtn').click(function(){
		$('#dataContactDiv').show();
		$('#contact-closing').hide();
	});
	
	$('#contact-modifyBtnCancle').click(function(){
		$('#dataContactDiv').hide();
		$('#contact-closing').show();
	});
	
	
	
	
	$('#password-modifyBtn').click(function(){
		$('#dataPasswordDiv').show();
		$('#password-closing').hide();
	});
	
	$('#password-modifyBtnCancle').click(function(){
		$('#dataPasswordDiv').hide();
		$('#password-closing').show();
	});
	
	
	
	
	

});