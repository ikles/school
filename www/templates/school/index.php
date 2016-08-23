<?php
defined('_JEXEC') or die;
JHtml::_('behavior.framework', true);
$app = JFactory::getApplication();
?>
<?php echo '<?'; ?>xml version="1.0" encoding="<?php echo $this->_charset ?>"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="<?php echo $this->language; ?>" lang="<?php echo $this->language; ?>" dir="<?php echo $this->direction; ?>" >
<script src="<?php echo $this->baseurl ?>/templates/<?php echo $this->template ?>/js/jquery-1.12.0.min.js"></script>
<head>
	<jdoc:include type="head" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="<?php echo $this->baseurl ?>/templates/system/css/system.css" type="text/css" />
	<link rel="stylesheet" href="<?php echo $this->baseurl ?>/templates/system/css/general.css" type="text/css" />
	<link rel="stylesheet" href="<?php echo $this->baseurl ?>/templates/<?php echo $this->template ?>/css/bootstrap.css" type="text/css" />
	<link rel="stylesheet" href="<?php echo $this->baseurl ?>/templates/<?php echo $this->template ?>/css/main.css" type="text/css" />
	<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
<script src="<?php echo $this->baseurl ?>/templates/<?php echo $this->template ?>/js/common.js"></script>
</head>
<body>
	<div class="wrapper">
		<div class="top">
			<div class="w1024">
				<jdoc:include type="modules" name="top-search" style="mystyle" />
				<div class="top-cart-links">
					<jdoc:include type="modules" name="cab" style="mystyle" />														
					<jdoc:include type="modules" name="cart-link" style="mystyle" />																	
					<jdoc:include type="modules" name="help-link" style="mystyle" />					
				</div>
			</div>
		</div><!--top-->
		<div class="w1080 w-miain">
			<div class="w1024 white-col white-col-top">
				<div class="blue-block">
					<div class="col-lg-3 col-md-3 col-sm-4 col-xs-11 col-logo nopadding">
						<a href="/" class="logo"><img src="<?php echo $this->baseurl ?>/templates/<?php echo $this->template ?>/img/logo.png" alt=""></a>
					</div>					
					<div class="col-lg-6 col-md-6 col-sm-2 col-xs-2 nopadding col-mnu">
						<div class="hidden-lg hidden-md">
							<a href="#" class="toggle-mnu"><span></span></a>
						</div>						
						<div class="top_mnu main-mnu">
							<jdoc:include type="modules" name="col-mnu" style="mystyle" />
						</div>
					</div><!--col-mnu-->
					<div class="col-lg-3 col-md-3 col-sm-5 col-xs-10 nopadding col-contacts">
						<jdoc:include type="modules" name="top-phone" style="mystyle" />						
						<jdoc:include type="modules" name="top-mail" style="mystyle" />						
					</div><!--col-contacts-->
				</div><!--blue-block-->	
			</div><!--white-col-->
			<div class="w1024 white-col col-component">
				<jdoc:include type="component" style="xhtml" />
			</div>
			<div class="w1024 white-col">
				<jdoc:include type="modules" name="oborud" style="mystyle" />					
			</div>		
			<jdoc:include type="modules" name="slider" style="mystyle" />					
			<div class="w1024 white-col col-pop"> 
				<jdoc:include type="modules" name="col-pop" style="mystyle" />					
			</div>
			<div class="w1024 white-col col-obor">						
				<jdoc:include type="modules" name="obords" style="mystyle" />					
			</div><!--col-obor-->		
			<jdoc:include type="modules" name="free-call" style="mystyle" />								
			<jdoc:include type="modules" name="col-projects" style="mystyle" />											
			<jdoc:include type="modules" name="wrap-all" style="mystyle" />																	
			<jdoc:include type="modules" name="how-we-works" style="mystyle" />																				
			<a href="#" class="go-to-catalog">Перейти к каталогу!</a>			
			<div class="w1024 bot-icons">
				<ul>
					<li><a href="#">Доставка&nbsp;по <br>всей России</a></li>
					<li><a href="#">Наличный и безналичный рассчет</a></li>
					<li><a href="#">Чистый документооборот</a></li>
				</ul>
			</div><!--bot-icons-->
		</div><!--w-miain-->
		<div class="light-blue-block">
			<div class="w1024">
				<div class="bot bot1">
					<div class="bot-mnu bot-mnu1">
						<h2>Помещения:</h2>
						<ul>
							<li><a href="#">Кабинет</a></li>
							<li><a href="#">Актовый зал</a></li>
							<li><a href="#">Спорт-зал</a></li>
							<li><a href="#">Медкабинет</a></li>
							<li><a href="#">Гардероб</a></li>
							<li><a href="#">Столовая</a></li>
						</ul>
					</div>
					<div class="bot-mnu bot-mnu2">
						<h2>Учебное заведение:</h2>
						<ul>									
							<li><a href="#">Детский сад</a></li>
							<li><a href="#">Начальная школа</a></li>
							<li><a href="#">Средняя школа</a></li>
							<li><a href="#">Высшая школа</a></li>
						</ul>
					</div>
				</div>	
				<div class="bot bot2">
					<div class="bot-mnu bot-mnu3">
						<h2>Предмет:</h2>
						<ul>
							<li><a href="#">Русскоий язык и литература</a></li>
							<li><a href="#">Физика</a></li>
							<li><a href="#">Химия</a></li>
							<li><a href="#">Биология</a></li>
							<li><a href="#">Математика</a></li>
							<li><a href="#">Экология и ОБЖ</a></li>
							<li><a href="#">Информатика</a></li>
							<li><a href="#">География</a></li>
							<li><a href="#">ИЗО и черчение</a></li>
							<li><a href="#">Музыка</a></li>
							<li><a href="#">Иностранный язык</a></li>
							<li><a href="#">История</a></li>
							<li><a href="#">Математика</a></li>
							<li><a href="#">Физкультура </a></li>
						</ul>
					</div>
				</div>	
				<div class="bot bot3">
					<div class="bot-mnu bot-mnu3">
						<h2>Оборудование:</h2>
						<ul>									
							<li><a href="#">Мебель ученическая</a></li>
							<li><a href="#">Многофункциональный комплекс преподавателя</a></li>
							<li><a href="#">Стулья из натурального дерева</a></li>
							<li><a href="#">Столовое оборудование</a></li>
							<li><a href="#">Станки для кабинета труда</a></li>
							<li><a href="#">Мебель для столовой</a></li>
							<li><a href="#">Музыкальные инструменты</a></li>
							<li><a href="#">Информационные стенды</a></li>
							<li><a href="#">Питьевые фонтанчики</a></li>
							<li><a href="#">Электронные расписания</a></li>
							<li><a href="#">Системы голосования</a></li>
						</ul>
					</div>
				</div>	
			</div>
		</div><!--light-blue-block-->
		<div class="bot-blue-block">
			<div class="w1024">
				<a href="/" class="logo2"><img src="<?php echo $this->baseurl ?>/templates/<?php echo $this->template ?>/img/logo2.png" alt=""></a>
				<div class="bot-contacts">
					<div class="bot-adress">
						<p>ООО «МОСПРОФ»<br>
							Россия,622049, г. Нижний Тагил, <br>
							Радищева, 28, оф. 1204
						</p>
					</div>
					<div class="bot-phone-mail">
						<p>+7 9 22222 0889 <br>
							<a href="mailto:info@aoosk.ru">info@aoosk.ru</a>
						</p>
					</div>
				</div>
			</div>
		</div><!--blue-block-->
	</div><!--wrapper-->
</body>
</html>