<?php 
require_once('templates/top.php'); 
require_once('utils/utils1.php');

 $login = new field_text(
"login",
"Логин",
true,
$_POST["login"]
 );   
  $password = new field_password(
"password",
"Пароль",
true,
$_POST["password"]
 ); 
 $form = new form(array("login"=>$login,"password"=>$password),
 "Войти","field");
 
 if(!empty($_POST))
 {
$error = $form-> check();//Обезопасить текст перед внесением в базу данных.Если поле обязательно для заполнения, проверяем не пусто ли он.
$query = " SELECT COUNT(*) FROM $tbl_users WHERE login = '{$form->fields['login']->value}'";
$usr = mysql_query($query);

	if(!$usr)
	{
				throw new ExceptionMySQL(mysql_error(),
				$query,
				"Ошибка извлечения параметров пользователя");
	}
	if(!mysql_result($usr, 0))// функция возвращает значение одной ячейки результата запроса
	{
	    $error[] = 'Пользователь с таким именем не существует';
	}
	 if(empty($error))
	 {
	 	enter($form->fields['login']-> value,
	 	$form->fields['password']-> value);
	 }
 }
 <script>
    document.location.href = 'index.php';
</script>

 if(!empty($error))
 {
	 foreach($error as $err)
	 {
	 echo"<span style='color:red'>$err</span><br/>";
	  }
    
 }
 
 $form ->print_form();
 
require_once('templates/bottom.php');
?>