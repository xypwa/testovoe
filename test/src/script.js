$(document).ready(function(){

	$(".side-content").on('click', "li", function(e) {
		e.stopPropagation();
		let el = $(this);
		console.log($(el));
		if($(el).hasClass('open')) {
			$(el).removeClass('open');
			$(el).children('ul').remove();
			$(el).children('.mark').toggleClass('active');
			return;
		}
		let cat_id = $(this).data('id');
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

	// $(".side-content li").on('click', ".active", function(e) {
	// 	$(this).parent('li').removeClass('open');
	// 	$(this).siblings("ul").remove();
	// })

});
//$(this).children('.mark').toggleClass('active');