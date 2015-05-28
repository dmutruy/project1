<?php

  error_reporting(E_ALL & ~E_NOTICE);

  // Устанавливаем соединение с базой данных
  require_once("../../config/config.php");
  // Подключаем блок авторизации
  require_once("../authorize.php");
  // Подключаем классы формы
  require_once("../../config/class.config.dmn.php");

  // Предотвращаем SQL-инъекцию
  $_GET['id'] = intval($_GET['id']);

  try
  {    $query = "SELECT * FROM $tbl_tovars
              WHERE showhide = 'show'";
  $cat = mysql_query($query);
  if(!$cat)
  {
	exit($query);
  }
  $category_arr = array();
  while($cats = mysql_fetch_array($cat))
  {
	$category_arr[$cats['id']] = $cats['name'];
  }
  
    $query = "SELECT * FROM $tbl_tovars
              WHERE id=$_GET[id]";
      $cat = mysql_query($query);
  if(!$cat)
  {
	exit($query);
  }	$news = mysql_fetch_array($cat);
	if(empty($_POST))
	{
		  $_REQUEST = $news;
    }
    $name = new field_text("name",
		  "Название",
		  true,
		  $_REQUEST['name']);
    $body = new field_textarea("body",
		  "Содержимое",
		  true,
		  $_REQUEST['body']);

	$price = new field_text(
		"price",
		"price",
		true,
		$_REQUEST["price"]
		 ); 
	$category = new field_select(
		"category",
		"Раздел",
		$category_arr,
		$_REQUEST["category"]
		 );
	 $vip = new field_select(
		"vip",
		"vip",
		array(
		1 => '1',
		2 => '2',
		),
		$_REQUEST["vip"]
		 );

 $form = new form(array("name"=>$name,"body"=>$body,"price"=>$price,"category"=>$category,"vip"=>$vip),
 "Редактировать","field");
if($_POST){
 $error = $form->check();
  if(!$error){
        // Формируем SQL-запрос на добавление новости
        $query = "UPDATE $tbl_tovars 
                  SET name = '{$form->fields['name']->value}',
                      body = '{$form->fields['body']->value}',
					price = '{$form->fields['price']->value}',
					category = '{$form->fields['category']->value}',
					vip = '{$form->fields['vip']->value}',					  
                  WHERE id=".$_GET['id'];
        if(!mysql_query($query))
        {
          throw new ExceptionMySQL(mysql_error(), 
                                   $query,
                                  "Ошибка при редактировании 
                                   новостного сообщения");
        }
        // Осуществляем переадресацию на главную страницу
        // администрирования
        ?>
		<script>
		 document.location.href="index.php?page=<?php echo $_GET['page'] ?>";
		</script>
		<?php
      }
    if(!empty($error))
    {
      foreach($error as $err)
      {
        echo "<span style=\"color:red\">$err</span><br>";
      }
    }
    }

    // Данные переменные определяют название страницы и подсказку.
    $title = "Редактирование";
    $pageinfo='<p class="help"></p>';
    // Включаем заголовок страницы
    require_once("../utils/top.php");
  
?>
<div align=left>
<FORM>
<INPUT class="button" TYPE="button" VALUE="На предыдущую страницу" 
onClick="history.back()">
</FORM> 
</div>
 
<table width=100%>
<tr>
<td>
<div class="table_user">
<?
    // Выводим HTML-форму 
    $form->print_form();
?>
</div>
</td>
</tr>
</table>
<?
  }
  catch(ExceptionObject $exc) 
  {
    require("../utils/exception_object.php"); 
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
