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


$(function(){
	$.ajax({
		type:'post',
		url:'/furniture/main/productQnAListPaging',
		dataType:'json',
		success:function(data){
            console.log(JSON.stringify(data));
            
            $('.qna_list_table tr:gt(0)').remove();

			$.each(data.productQnAList, function(index,items){
				$('<tr/>').append($('<td/>',{
					align:'center',
					text:items.id
				})).append($('<td/>',{
					
					}).append($('<a/>',{
						href:'#',
						text:items.qna_subject,
					}))
				).append($('<td/>',{
					align:'center',
					text:items.email
				})).append($('<td/>',{
					align:'center',
					text:items.created_at
				})).append($('<td/>',{
					align:'center',
					text:items.reply
					
				})).appendTo($('.qna_list_table'));
            
            
			});//each  
			
			//페이징 처리
			$('#qna_listPagingDiv').html(data.product_qna_paging.pagingHTML);
         },
         error: function(err){
            console.log(err);
         }
		
	});
});


function product_qna_paging(pg) {
	// 리스트를 맨 윗줄만 남기고 지우고 누른 페이지를 기준으로 다시 계산해서 
	// 리스트를 불러와야 한다. 그리고 그걸 다시 뿌려준다.
	$.ajax({
		type:'post',
		url:'/furniture/main/productQnAListPaging',
		data: { 'pg' : pg },
		dataType:'json',
		success:function(data){
            console.log(JSON.stringify(data));
            
            $('.qna_list_table tr:gt(0)').remove();

			$.each(data.productQnAList, function(index,items){
				$('<tr/>').append($('<td/>',{
					align:'center',
					text:items.id
				})).append($('<td/>',{
					
					}).append($('<a/>',{
						href:'#',
						text:items.qna_subject,
					}))
				).append($('<td/>',{
					align:'center',
					text:items.email
				})).append($('<td/>',{
					align:'center',
					text:items.created_at
				})).append($('<td/>',{
					align:'center',
					text:items.reply
					
				})).appendTo($('.qna_list_table'));
            
            
			});//each  
			
			//페이징 처리
			$('#qna_listPagingDiv').html(data.product_qna_paging.pagingHTML);
         },
         error: function(err){
            console.log(err);
         }
		
	});
	
}








$(function(){
	$.ajax({
		type:'post',
		url:'/furniture/main/reviewList',
		dataType:'json',
		success:function(data){
			console.log(data);
			
			$.each(data.reviewList, function(index,items){
				$('<tr/>').append($('<td/>', {
					rowspan: 5
				}).append($('<img/>',{
					width: '250px',
					height: '250px',
					src: items.review_image
				}))).appendTo($('#review_list_table'));
				
				$('<tr/>', {
					height: '30px'
				}).append($('<td/>', {
					text: items.email
				})).append($('<td/>', {
					text: items.created_at
				})).appendTo($('#review_list_table'));
				
				$('<tr/>').append($('<th/>', {
					colspan: 2,
					height: '50px',
					text: items.product_name
				})).appendTo($('#review_list_table'));
				$('<tr/>').append($('<th/>', {
					colspan: 2,
					height: '50px',
					text: items.review_stars
				})).appendTo($('#review_list_table'));
				
				$('<tr/>').append($('<td/>', {
					colspan: 2,
					align: 'left',
					text: items.review_content
				})).appendTo($('#review_list_table'));
				
				// review_list_table   .appendTo($('#review_list_table'));
			});//each  
			
			//페이징 처리
			$('#review_listPagingDiv').html(data.product_qna_paging.pagingHTML);
		},
		error: function(err){
			console.log(err);
		}
		
	});
});

