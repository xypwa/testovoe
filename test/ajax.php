<?
$request = $_POST;
$responce = array();
require './engine/db_lib.php';
if (!class_exists('PDO_lib')) {
	$responce['success'] = false;
	$responce['description'] = 'Can\'t connect db class';
	echo json_encode($responce);
	die;
} else {
	$PDO = new PDO_lib();
}

$request_function = @$request['function'];

switch ($request_function) {

	case 'show_childs':
		if(intval($request['cat_id'])) {
			$records = $PDO->getCatChildsById($request['cat_id']);
			if($records) {
				$responce['success'] = true;
				$responce['sub_cats'] = markupCats($records);
				//$responce['breadcrumb'] = $PDO->getPathTo($request['cat_id']);
				$items = $PDO->getItemsByCatId($request['cat_id']);
				// $responce['item_count'] = count($items);
				// $responce['items'] = $items ? $items : "В выбранной категории";

			}
		} else {

			$responce['success'] = false;
			$responce['description'] = 'missing or non correct category id';
		}
		break;

	case "update_title":
		if(intval($request['cat_id']) && trim($request['new_title']) !='') {

			$update = $PDO->updateCategoryTitle($request['cat_id'], $request['new_title']);
			if($update) {
				$responce['success'] = true;
			}
		} else {

			$responce['success'] = false;
			$responce['description'] = 'non-correct title';
		}
		break;

	
	default:
		$responce['success'] = false;
		$responce['description'] = 'Wrong function name';
		break;
}

echo json_encode($responce);
die;


function markupCats($arr) {
	$html = "<ul>";
	foreach ($arr as $key => $value) {
		$mark = "<span class='mark'></span>";
		$edit = "<span class='edit'></span>";
		$save = "<span class='save'></span>";
		if(isset($value['no_sib'])) {
			$mark = "";
		}
		$html.= "<li data-id={$value['id']}> <span class='title'>{$value['title']}</span> <span class='controllers'>{$mark} {$edit} {$save} </span></li>";
	}
	$html.= "</ul>";

	return $html;
}

// function markupItems($arr) {
// 	$html = "";
// 	$img = "<img src='./src/pics/237.jpg'>";
// 	foreach ($arr as $key => $value) {
// 		$html.= "<div class='item-card-wrap'>
// 					<div class='card-title'>".
// 						$value['title'].
// 					"</div>
// 					<div class='item-image'>".
// 						$value['img']."
// 					</div>
// 				</div>";
// 	}

// 	return $html;
// }
?>