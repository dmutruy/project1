				</div>
		
		<div class="col-md-2">
			
			
				<table id="t_2" width="100%" height="180%" cellpadding="2" cellspacing="0">
				<tr><td>
					<a href="http://6.pogoda.by/26850" style="font-family:Tahoma; font-size:12px; color:#003399;" 
					title="Погода Минск на 6 дней - Гидрометцентр РБ" target="_blank">Погода Минск</a>
				</td></tr>
				
				<tr><td>
				<table id="t_3" width=100% height=100%  cellpadding="0" cellspacing="0">
				<tr><td>
						<script type="text/javascript" charset="windows-1251" src="http://pogoda.by/meteoinformer/js/26850_1.js"></script>
				</td></tr>
				</table>
				</td></tr>

				<tr><td align="right">Информация сайта 
					<a href="http://www.pogoda.by" target="_blank" style="font-family:Tahoma; font-size:12px; color:#003399;">pogoda.by</a>
				</td></tr>
				</table>
				
				<? if($_SESSION['id_user_position'])
				{			
					echo'<a href="logout.php" class="btn btn-default" title="">Выйти</a><br/>';
					echo'<a href="cabinet.php" class="btn btn-default" title="">Кабинет пользователя</a>';  
				}	
				else
				{
				echo'<a href="reg.php" class="btn btn-default" title="">Регистрация</a><br/>';
				echo'<a href="login.php" class="btn btn-default" title="">Вxoд</a>';
				}
			
				?>
							
			</div>

		</div>
		
		<div class="footer">
			<p> &copy info<span>@</span>aethalon-group.com. &nbsp;Все права защищены.</p>
				<a href="http://www.yandex.ru" title="">Информационный партнер: Yandex.ru</a>
		</div>

	</body>
</html>