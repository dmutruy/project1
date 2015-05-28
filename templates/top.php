<?php session_start();?>
<?php require_once('config/config.php');?>
<?php require_once('config/class.config.php');?>
<!Doctype html>
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>Главная страница сайта</title>
		
		<meta http-equiv="content-type" content="text/html; charset=utf-8"/>
		<meta name="keywords" content=""/>
		<meta name="descripshion" content=""/>
		<meta http-equiv="content-style-type" content="text/css"/>
		
		<link type="text/css" rel="stylesheet" href="media/bootstrap/css/bootstrap.min.css"/>
		<link type="text/css" rel="stylesheet" href="media/css/style.css"/>
		<script src="/media/js/jquery.js"></script>
		<script>
		$(function(){
			$('.menutop a:eq(0)').bind('mouseover',function(){
				$('#header').css('background','yellow');
			});
					$('.menutop a:eq(1)').bind('mouseover',function(){
						$('#header').css('background','#0b11f4');
			});
								$('.menutop a:eq(2)').bind('mouseover',function(){
									$('#header').css('background','green');
			});					
											$('.menutop a:eq(3)').bind('mouseover',function(){
												$('#header').css('background','orange');
			});
				$('.menutop').bind('mouseout',function(){
					$('#header').css('background','url(../media/img/kamp.jpg)');
			});
			
			
			$('.menutop a:eq(0)').bind('mouseover',function(){
				$('.logo').attr('src','../media/img/logo-steinel.png');
			});
					$('.menutop a:eq(1)').bind('mouseover',function(){
						$('.logo').attr('src','../media/img/logo-penoplex.png');
			});
 
							$('.menutop a:eq(2)').bind('mouseover',function(){
								$('.logo').attr('src','../media/img/logo-bfk.png');
			});
 
									$('.menutop a:eq(3)').bind('mouseover',function(){
										$('.logo').attr('src','../media/img/logo-vetonit.png');
			});
				$('.menutop').bind('mouseout',function(){
					$('.logo').attr('src','../media/img/logo-etalon.png');
			});
	});
		
		</script>
	</head>
	
	<body>
	
		<div id="header">
			<img src="media/img/logo-etalon.png" class="logo" height="150" width="650" > 
				<h1>Главная страница</h1>
		</div>	
		<div class="menutop">
			
			<a href="index.php?url=company">О компании</a>
				<a href="index.php?url=press-centr">Пресс-центр</a>
					<a href="index.php?url=contacts">Контакты</a>
						<a href="index.php?url=partners">Партнерам</a>
						
		</div>
		
		<div class="main">
			<div class="col-md-2">
				<div class="menuhead">Наша продукция</div>
					<div class="menubody">
							<a href="tovars.php" class="btn btn-default">Каталог товаров</a>
							<a href="search.php" class="btn btn-default">Поиск товаров</a>
							<a href="#" class="btn btn-default">Роллетные системы</a>
							<a href="#" class="btn btn-default">Профильные системы</a>
							<a href="#" class="btn btn-default">Другие системы</a>
							<a href="#" class="btn btn-default">Окна ПВХ</a>
							<a href="#" class="btn btn-default">Металлические двери</a>
							<a href="#" class="btn btn-default">Металлочерепица</a>
							<a href="#" class="btn btn-default">Панель-утеплители</a>
							<a href="#" class="btn btn-default">Охран. сигнализации</a>

							
					</div>
				</div>
				
				
				<div class="col-md-8">