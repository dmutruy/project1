<?php

  error_reporting(E_ALL & ~E_NOTICE);

  // Устанавливаем соединение с базой данных
  require_once("../../config/config.php");
  // Подключаем блок авторизации
  require_once("../authorize.php");
  // Подключаем классы формы
  require_once("../../config/class.config.dmn.php");

    // Начало страницы
    $title     = 'Добавление новостного сообщения';
    $pageinfo  = '<p class=help></p>';
    // Включаем заголовок страницы
	require_once("../utils/utils.resizeimg.php");
    require_once("../utils/top.php");
  try
  {
 $name = new field_text(
"name",
"name",
true,
$_POST["name"]
 );   
 $body = new field_textarea(
"body",
"body",
true,
$_POST["body"]
 );
$price = new field_text(
"price",
"price",
true,
$_POST["price"]
 ); 
$category = new field_select(
"category",
"Раздел",
array(
1 => 'Бытовая техника',
2 => 'Кухонная техника',
),
$_POST["category"]
 );
$showhide = new field_checkbox(
"showhide",
"showhide",
true,
$_REQUEST["showhide"]
 ); 
 $vip = new field_select(
"vip",
"vip",
array(
1 => '1',
2 => '2',
),
$_POST["vip"]
 );
 $picture = new field_file(
"picture",
"Изображение",
false,
$_FILES,
'../../media/images/'
 );

 $form = new form(array("name"=>$name,"body"=>$body,"price"=>$price,"category"=>$category,"showhide"=>$showhide,"vip"=>$vip,"picture"=>$picture,),
 "Добавить товар","field");

   if($_POST)
 {
	 $error = $form-> check();

	if($form->fields['showhide'] -> value)
	{
	$showhide = 'show';
	}
	else
	{
	$showhide = 'hide';

	}
	 if(!$error)
	 {
	$var = $form->fields['picture']-> get_filename();// Возвращает перекодированное имя файла
	if($var)
	{
		$picture = date("y_m_d_h_i_").$var;// Стр.70 class.field.file
		$picturesmall = 's_'.$picture;
		resizeimg('../../media/images/'.$picture,// utils/utils.resizeimg
				'../../media/images/'.$picturesmall,
				200,
				200
			); 
	}
	else
	{
		$picture = "";
		$picturesmall = "";
	}
	
	$query = "INSERT INTO $tbl_tovars VALUE
	(NULL,
	'{$form->fields['name'] -> value}',
	'{$form->fields['body'] -> value}',
	'{$form->fields['price'] -> value}',
	'{$form->fields['category'] -> value}',
	'$showhide',
	'{$form->fields['vip'] -> value}',
	'$picture',
	'$picturesmall',
	NOW()
	)";
	$cat = mysql_query($query);
		if(!$cat)
		{
		exit ($query);
		}
	?>
	<script>
	    document.location.href = 'index.php';
	</script>
	<?
	 }
	 if($error)
	 {
		 foreach($error as $err)
		 {
		 echo"<span style='color:red'>$err</span><br/>";
		 }
	   }
 }
    $form ->print_form();

  }
  catch(ExceptionObject $exc) 
  {
    require("../utils/exception_object.php"); 
  }
  catch(ExceptionMySQL $exc)
  {
    require("../utils/exception_mysql.php"); 
  }
  catch(ExceptionMember $exc)
  {
    require("../utils/exception_member.php"); 
  }

  // Включаем завершение страницы
  require_once("../utils/bottom.php");
?>
