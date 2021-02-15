<!DOCTYPE html>
<html>
<head>
	<title>Каталог книг</title>
	<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
	<link rel='stylesheet' href='./src/style.css'>
	<script src='./src/script.js'></script>
</head>
<header>
	<div class='header'>
		
	</div>
</header>
<body>
<pre>
<?
require './engine/db_lib.php';
$PDO = new PDO_lib();
$RoyalCategories = $PDO->getAllRoyalCategories();

?>
</pre>
	<aside>
		<div class='side-header'>Категории книг:</div>
		<div class='side-content-wrapper'>
			<div class='side-content'>
				<ul>
				<?
				foreach ($RoyalCategories as $key => $value) {

					echo "<li data-id={$value['id']}>{$value['title']}<span class='mark'></span></li>";
				}
				?>
				</ul>
			</div>
		</div>
	</aside>

	<div id='main'>
		<div class='main-content-wrapper'>
			<div class='main-content-header'>
<!-- 				<div class='main-content-cat-title'>Вы просматриваете категорию </div>
				<div class='breadcrumb'>

				</div> -->
				
			</div>
			
			<div class='main-content'>
				<div class='item-card-wrap'>
					<div class='card-title'>
						IIII
					</div>
					<div class='item-image'>
						<img src='./src/pics/237.jpg'>
					</div>
				</div>
				<div class='item-card-wrap'>
					<div class='card-title'>
						IIII
					</div>
					<div class='item-image'>
						<img src='./src/pics/237.jpg'>
					</div>
				</div>
				<div class='item-card-wrap'>
					<div class='card-title'>
						IIII
					</div>
					<div class='item-image'>
						<img src='./src/pics/237.jpg'>
					</div>
				</div>
				<div class='item-card-wrap'>
					<div class='card-title'>
						IIII
					</div>
					<div class='item-image'>
						<img src='./src/pics/237.jpg'>
					</div>
				</div>
				<div class='item-card-wrap'>
					<div class='card-title'>
						IIII
					</div>
					<div class='item-image'>
						<img src='./src/pics/237.jpg'>
					</div>
				</div>
			</div>
		</div>
	</div>
	<footer>
		
	</footer>
</body>
</html>
