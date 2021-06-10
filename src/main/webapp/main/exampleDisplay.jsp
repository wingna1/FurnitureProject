<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div class="helloExample">
	<p>
	안녕 나는 샘플
	</p>
	<input type="text" name="anything" id="anything">
	<input type="button" name="aaa" id="aaa" value="sdfsd">
	<br>
	<div id="bbb"></div>
</div>

<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.0.min.js"></script>   
<script type="text/javascript">
$('#aaa').click(function() {
	$.ajax({
		type: 'post',
		url: '/furniture/main/GOexampleDisplay',
		data: {'anything': $('#anything').val()},
		dataType: 'text',
		success: function(data) {
			console.log(data);
			$('#bbb').text(data);
		},
		error: function(err) {
			console.log(err);
		}
	});
});


</script>