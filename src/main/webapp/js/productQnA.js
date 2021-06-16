$('.qna_write_btn').click(function() {
	$('.qna_write_div').empty();
	
	if($('.qna_write_subject').val() == ''){
		$('.qna_write_div').text('제목을 입력하세요');
		$('.qna_write_div').css('color','red');
		$('.qna_write_div').css('font-size','8pt');
		$('.qna_write_div').css('font-weight','bold');
	}else if($('.qna_write_content').val()== ''){
		$('.qna_write_div').text('내용을 입력하세요');
		$('.qna_write_div').css('color','red');
		$('.qna_write_div').css('font-size','8pt');
		$('.qna_write_div').css('font-weight','bold');
	}else {
		$.ajax({
			type:'post',
			url:'/furniture/main/productQnAWrite',
			data:{
				'qna_subject':$('.qna_write_subject').val(),
				'qna_content':$('.qna_write_content').val()
			},
			success:function(){
				alert('글쓰기 성공');
				location.href='/furniture/main/productView';
			},
			error: function(err){
				console.log(err);
			}
			
			
		});
	}
	
});
