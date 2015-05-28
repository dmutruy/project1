<?php require_once('templates/top.php');

$arr = array(0 => 'Выберите из списка');
$query = "SELECT * FROM $tbl_tovars
              WHERE showhide = 'show'";
  $cat = mysql_query($query);
	  if(!$cat)
	  {
		exit($query);
	  }
    while($cats = mysql_fetch_array($cat))
	{
	$arr[$cats['id']] = $cats['name'];
	}
	 $name = new field_text(
	"name",
	"name",
	false,
	$_POST["name"]
	 );   
	 $priceot = new field_text(
	"priceot",
	"Цена от",
	false,
	$_POST["priceot"]
	 ); 
	$pricedo = new field_text(
	"pricedo",
	"Цена до",
	false,
	$_POST["pricedo"]
	 ); 
	$vip = new field_checkbox(
	"vip",
	"Товар на акции",	
	false,
	$_POST["vip"]
	 ); 
	$category = new field_select(
	"category",
	"Раздел",
	$arr,
	$_POST["category"]
	 );
	$picture = new field_checkbox(
	"picture",
	"Наличие изображения",
	false,
	$_POST["picture"]
	 ); 
	$name -> css_class ="search";
	$priceot -> css_class ="search";
	$pricedo -> css_class ="search";
	$vip -> css_class ="search";
	$category -> css_class ="search";
	$picture -> css_class ="search";
 
	 $form = new form(array("name"=>$name,"priceot"=>$priceot,"pricedo"=>$pricedo,"vip"=>$vip,"category"=>$category,"picture"=>$picture,),
	 "Поиск товара","field");
	 
	 if($_POST)
	 {
		 if($form->fields['name']-> value != '')
		 {
		 $tmp1 = "AND name LIKE '%".trim($form->fields['name']-> value)."%'";//LIKE - подобие, % - любое кол-во символов
		 }

		  if($form->fields['priceot']-> value != '')
		  {
		 $tmp2 = "AND price > '".$form->fields['priceot']-> value."'";
		 }
		  if($form->fields['pricedo']-> value != '')
		  {
		 $tmp3 = "AND price < '".$form->fields['pricedo']-> value."'";
		 }
		 if($form->fields['vip']-> value != '')
		  {
		 $tmp4 = "AND vip = 2";
		 }
			if($form->fields['category']-> value != 0)
		  {
		 $tmp5 = "AND id = '".$form->fields['category']-> value."'";
		 }
		  

		 $query = "SELECT * FROM $tbl_tovars
              WHERE id > 0 AND showhide = 'show' $tmp1 $tmp2 $tmp3 $tmp5";
		 $cat = mysql_query($query);
			  if(!$cat)
			  {
				exit($query);
			  }
		 
	 while($tovs = mysql_fetch_array($cat))
		{
		if($tovs['picturesmall'])
			{
				$pic = "<img src ='media/images/{$tovs['picturesmall']}'/>";
			}
		echo "<div class='col-md-4 mytovar'>";
			echo $tovs['name'].'<br/>';
			echo $tovs['price'].'<br/>';
			echo $tovs['vip'].'<br/>';
			echo $pic;
		echo "</div>";	
		
		}
}
	 echo "<div class='col-md-12 mytovar'>";
		$form ->print_form();
	echo "</div>";
	
require_once('templates/bottom.php');
?>
