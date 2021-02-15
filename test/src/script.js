$(document).ready(function(){

	$('body').click(function(e) {
		console.log($(".active_edit").length);
		console.log(e.target.nodeName);
		if($(".active_edit").length>0 && e.target.nodeName!='INPUT') {
			alert('Завершите редактирование');
		}
	})

	$(".side-content").on('click', ".mark", function(e) {
		e.stopPropagation();
		let el = $(this).closest('li');
		
		if($(el).hasClass('open')) {
			$(el).removeClass('open');
			$(el).children('ul').remove();
			$(el).children('.mark').toggleClass('active');
			return;
		}
		let cat_id = $(el).data('id');
		var formData = new FormData();
		formData.append('function','show_childs');
		formData.append('cat_id', cat_id);

		$.ajax({
			url: "../ajax.php",
			dataType: 'text',
			cache: false,
			contentType: false,
			processData: false,
			data: formData,
			type: 'post',
			success: function(data){
				let responce = JSON.parse(data);
				if(responce.success) {
					
					$(el).children('.mark').toggleClass('active');
					$(el).append(responce.sub_cats);
					$(el).addClass('open');
					
				}
			}
		});
	
		
	})

	$(".side-content").on('click', '.edit', function(e) {
		e.stopPropagation();
		let el = $(this).closest('li');
		let cur_value = $(el).children('.title').text();
		$(el).children('.title').text('');

		$(el).addClass('active_edit');
		$(el).prepend("<input type='text' value='"+cur_value+"'>");
		$(el).find('.save').show();
		$(this).hide();

	})

	$(".side-content").on('click', '.save', function(e) {
		e.stopPropagation()
		let el = $(this).closest('.active_edit');
		let cur_value = $(el).find('input').val();

		let cat_id = $(el).data('id');

		var formData = new FormData();
		formData.append('function','update_title');
		formData.append('cat_id', cat_id);
		formData.append('new_title', cur_value);

		$.ajax({
			url: "../ajax.php",
			dataType: 'text',
			cache: false,
			contentType: false,
			processData: false,
			data: formData,
			type: 'post',
			success: function(data){
				let responce = JSON.parse(data);
				if(responce.success) {
					
					$(el).children('.title').text(cur_value);
					$(el).removeClass('active_edit');
					$(el).find('input').remove();
					$(el).find('.edit').show();
					$(el).find('.save').hide();
				}
			}
		});

		

	})
	// $(".side-content li").on('click', ".active", function(e) {
	// 	$(this).parent('li').removeClass('open');
	// 	$(this).siblings("ul").remove();
	// })

});
//$(this).children('.mark').toggleClass('active');