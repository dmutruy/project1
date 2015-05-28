<?php
function enter($login,$password)
{
	global $tbl_users;
	$query = "SELECT * FROM $tbl_users WHERE name = '$login' AND password = '$password' AND blockunblock ='unblock' LIMIT 1";
	$usr = mysql_query($query);
	if(!$usr)
	{
		throw new ExceptionMySQL(mysql_error(),
		$query,
		"Ошибка аутентификации");
	}
	if(mysql_num_rows($usr))
	{
		$user = mysql_fetch_array($usr);
		$_SESSION['id_user_position'] = $user['id_position'];
		$query = "UPDATE $tbl_users SET lastvisit = NOW() WHERE id_position = $user['id_position']";
		if(!mysql_query($query))
		{
			throw new ExceptionMySQL(mysql_error(),
			$query,
			"Ошибка аутентификации");
		}
		return TRUE;
	}
	else return FALSE;
}
?>