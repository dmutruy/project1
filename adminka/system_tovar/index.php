<?php

  error_reporting(E_ALL & ~E_NOTICE);

  // Устанавливаем соединение с базой данных
  require_once("../../config/config.php");
  // Подключаем блок авторизации
  require_once("../authorize.php");
  // Подключаем SoftTime FrameWork
  require_once("../../config/class.config.dmn.php");
  // Подключаем блок отображения текста в окне браузера
  require_once("../utils/utils.print_page.php");

  // Данные переменные определяют название страницы и подсказку.
  $title = 'Управление блоком "Текстовое наполнение сайта"';
  $pageinfo = '<p class=help>Здесь можно добавить
               новостной блок, отредактировать или
               удалить уже существующий блок.</p>';

  // Включаем заголовок страницы
  require_once("../utils/top.php");

  try
  {?>
<table width=100% border="0" cellpadding="0" cellspacing="0">
<tr>
<td width=50% class='menu_right'>
<?
    // Добавить блок
    echo "<a href=newsadd.php?page=$_GET[page]
             title='Добавить товар'>
		<img border=0 src='../utils/img/add.gif' align='absmiddle' />
             Добавить товар</a>";
?>
</td>
<td width=50%>
</td>
</tr>
</table>
<?
	$page_link = 3;
	$pnumber = 10;
	$obj = new pager_mysql(
	$tbl_tovars,
	"",
	"ORDER BY id DESC",
	$pnumber,
	$page_link
	);
	$news = $obj -> get_page();// Возвращает массив строк файла, по  номеру страницы Стр 80 class.pager_mysql
	if(!empty($news))
	{
	?>
	<h2>Каталог товаров</h2>
	<table width="100%" border="1" class="table">  <?// adminka/utils/cms/?> 
		<thead>
	<tr class="header"> <?// adminka/utils/cms/?> 
		<td width=200px>Изображение товара</td>
		<td>Наименование товара</td>
		<td>Цена</td>
		<td>Артикул товара</td>
		<td>Действия</td>

	</tr>
		</thead>
		<tbody>
		<?	
	for($i = 0; $i < count($news); $i++):
	$url = "?id={$news[$i]['id']}&page=".$_GET['page'];//?id_catalog=&page=2 (стр.2) class.pager.php
	if($news[$i]['showhide'] == 'show')
	{
		$colorrow = '';
		$showhide = "<a href = 'newshide.php$url' title = 'Скрыть товар'><img src = '../utils/img/folder_locked.gif' border=0 align='absmiddle'/>Скрыть</a>";
	}
	else
	{
		$colorrow = "class= 'hiddenrow'";// adminka/utils/cms/ 
		$showhide = "<a href = 'newsshow.php$url' title = 'Отобразить товар'><img src = '../utils/img/show.gif' border=0 align='absmiddle'/>Отобразить</a>";
	}
	
	if($news[$i]['picturesmall'])
	{
		$pic = "<a href='../../media/images/{$news[$i]['picturesmall']}' target = '_blank'><img src ='../../media/images/{$news[$i]['picturesmall']}'/></a>";
	}
	?>
	<tr <?=$colorrow?>>
		<td><?=$pic;?></td>
		<td><?=$news[$i]['name'];?></td>
		<td><?=$news[$i]['price'];?></td>
		<td><?=$news[$i]['category'];?></td>
		<td class = 'menu_right' valign = 'top' align = 'left'>
		<a href = 'newsedit.php<?=$url?>' title = 'редактировать' ><img src = '../utils/img/kedit.gif' border = 0 align = 'absmiddle'/>Редактировать</a>
		<?=$showhide;?>
		<a href = '#' onclick = "delete_position('newsdel.php$url','Вы действительно хотите удалить товар?')" title = 'удалить' >
		<img src = '../utils/img/editdelete.gif' border = 0 align = 'absmiddle'/>Удалить</a></td>

	</tr>
	<?endfor?>
		</tbody>
</table>
<?	}

echo $obj;
 }
  catch(ExceptionMySQL $exc)
  {
    require("../utils/exception_mysql.php"); 
  }

  // Включаем завершение страницы
  require_once("../utils/bottom.php");

echo "";
?>