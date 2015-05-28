<?php require_once('templates/top.php');
if($_SESSION['id_user_position'])
{
	$query = "SELECT * FROM $tbl_users WHERE id = ".$_SESSION['id_user_position'];
	$cat = mysql_query($query);
	if(!$cat)
	{
	exit ($query);
	}
	$user = mysql_fetch_array($cat);
	
	echo"<h2>Ваши данные: </h2>";
	echo"<h3>Ваш Логин: ".$user['login']."</h3>";
	echo"<h3>Ваш Email: ".$user['email']."</h3>";
	?>
	<script>

function otkr()
{
	var div = document.getElementById('div');
	if(div.style.display == 'none')
	{
		div.style.display = 'block';	
	}
	else
	{
	div.style.display = 'none';	
	}
}


</script>
	
	<br />
	<right><p style="color:red;cursor: pointer;text-decoration: underline;" onclick="otkr();">Изменение данных:</p><br />
	
	<div id="div"  style="display: none;">
	<form  method="post">
	<p>Логин:<br />
	<input name="name"  type="text"  maxlength="15" value="<?=$user['login'];?>"/></p>
	<p>E-mail:<br />
	<input name="email"  type="text" value="<?=$user['email'];?>" maxlength="25"/></p><br/>
	<input type="submit" value="Изменить" name="button" class="button">
	</form><br/></div>
	</right>
	
	<center>
		<a href="#" class="btn btn-default">Новый заказ</a>
			<a href="#" class="btn btn-default">Остатки</a>
			<a href="#" class="btn btn-default">Заказы</a>
		<a href="#" class="btn btn-default">Финансы</a><br/>
	<div class="menubody"><a href="ivmen@gmail.com" title="Для связи с менеджером, кликните по ссылке"class="btn btn-default">Иван Петрович Иванов:<br/>Ваш личный менеджер.<br/>тел: 8029(100 &nbsp;200 &nbsp;02)<br/><h5>Email:ivmen@gmail.com</h5></a></div>
	</center>		
<?

}
else
{
	echo'Ошибка входа!';
}

require_once('templates/bottom.php');
?>