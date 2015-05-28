<?php require_once('templates/top.php'); 

$query = "SELECT * FROM $tbl_tovars
              WHERE showhide = 'show'";
  $cat = mysql_query($query);
  if(!$cat)
  {
	exit($query);
  }
    while($tovar = mysql_fetch_array($cat))
    {
	$url = "?body={$tovar['body']}&page=".$_GET['page'];

		if($tovar['picturesmall'])
		{
			$pic = "<img src ='media/images/{$tovar['picturesmall']}'/>";
		}

		if($_GET['body'])
		{
		if($tovar['body'] == $_GET['body']){
		echo "<div class='col-md-12 mytovar'>";
			echo $tovar['body'];
				echo "</div>";	
			}
		}
		else
		{
		echo "<div class='col-md-4 mytovar'>";
			echo "<a href='#' data='".$tovar['id']."' target = '_blank' title = 'Описание товара'>{$tovar['name']}</a>".'&nbsp';
				echo $tovar['price'];
					echo $pic;
						echo "</div>";	
		}
	}
?>
<script>
$(function(){
var fx = {
	'initModel' : function(){
		if($('.model_window').length == 0){
		$('<div>').attr('id','jquery-overlay')
			.fadeIn(2000).appendTo('body');	
			return $('<div>').addClass('model_window').fadeIn(2000).appendTo('body');
		}
		else{
			return $('.model_window');
		}
	}
}
$('.mytovar a').bind('click',function(e){
	e.preventDefault();//отменяет действие по умолчанию- переход по ссылке
	var data = $(this).attr('data');
	model = fx.initModel();//вызывает функцию
	
		$('<a>').attr('href','#').addClass('model-close-btn')
		.html('&times;').click(function(e){
		e.preventDefault();
		$('#jquery-overlay').remove();
			model.fadeOut('slow',function(){
			$(this).remove();
			});
		}).appendTo(model);
	
			$.ajax({
			type :'POST',
			url : 'ajax.php',
			data : 'id=' + data,
				success : function(data){
					model.append(data);
					},
				error : function(msg){
						model.append(msg);
				}
			})
	});
});

</script>
<?

require_once('templates/bottom.php');?>
