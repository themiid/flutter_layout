<?php
require_once "method.php";
$place = new ListTourism();
$request_method=$_SERVER["REQUEST_METHOD"];
switch ($request_method) {
	case 'GET':
			if(!empty($_GET["id"]))
			{
				$id=intval($_GET["id"]);
				$place->get_place($id);
			}
			else
			{
				$place->get_place();
			}
			break;
	case 'POST':
			if(!empty($_GET["id"]))
			{
				$id=intval($_GET["id"]);
				$place->update_place($id);
			}
			else
			{
				$place->insert_place();
			}		
			break; 
	case 'DELETE':
		    $id=intval($_GET["id"]);
            $place->delete_place($id);
            break;
	default:
			header("HTTP/1.0 405 Method Not Allowed");
			break;
		break;
}




?>