<?php
require_once "config.php";
class ListTourism 
{

	public  function get_place()
	{
		global $mysqli;
		$query="SELECT * FROM place";
		$data=array();
		$result=$mysqli->query($query);
		while($row=mysqli_fetch_object($result))
		{
			$data[]=$row;
		}
		$response=array(
							'status' => 1,
							'message' =>'Get List Tourism Place Successfully.',
							'data' => $data
						);
		header('Content-Type: application/json');
		echo json_encode($response);
	}

	public function gettourism($id=0)
	{
		global $mysqli;
		$query="SELECT * FROM place";
		if($id != 0)
		{
			$query.=" WHERE id=".$id." LIMIT 1";
		}
		$data=array();
		$result=$mysqli->query($query);
		while($row=mysqli_fetch_object($result))
		{
			$data[]=$row;
		}
		$response=array(
							'status' => 1,
							'message' =>'Get Tourism Place Successfully.',
							'data' => $data
						);
		header('Content-Type: application/json');
		echo json_encode($response);
		 
	}

	public function insert_place()
		{
			global $mysqli;
			$arrcheckpost = array('name' => '', 'location' => '', 'imageAsset' => '', 'description' => '', 'openDay'   => '');
			$hitung = count(array_intersect_key($_POST, $arrcheckpost));
			if($hitung == count($arrcheckpost)){
			
					$result = mysqli_query($mysqli, "INSERT INTO place SET
					name = '$_POST[name]',
					location = '$_POST[location]',
					imageAsset = '$_POST[imageAsset]',
					description = '$_POST[description]',
					openDay = '$_POST[openDay]'");
					
					if($result)
					{
						$response=array(
							'status' => 1,
							'message' =>'Tourism Place Added Successfully.'
						);
					}
					else
					{
						$response=array(
							'status' => 0,
							'message' =>'Tourism Place Addition Failed.'
						);
					}
			}else{
				$response=array(
							'status' => 0,
							'message' =>'Parameter Do Not Match'
						);
			}
			header('Content-Type: application/json');
			echo json_encode($response);
		}

	function update_place($id)
		{
			global $mysqli;
			$arrcheckpost = array('name' => '', 'location' => '', 'imageAsset' => '', 'description' => '', 'openDay'   => '');
			$hitung = count(array_intersect_key($_POST, $arrcheckpost));
			if($hitung == count($arrcheckpost)){
			
		        $result = mysqli_query($mysqli, "UPDATE place SET
		        name = '$_POST[name]',
		        location = '$_POST[location]',
		        imageAsset = '$_POST[imageAsset]',
		        description = '$_POST[description]',
		        openDay = '$_POST[openDay]'
		        WHERE id='$id'");
		   
				if($result)
				{
					$response=array(
						'status' => 1,
						'message' =>'Tourism Place Updated Successfully.'
					);
				}
				else
				{
					$response=array(
						'status' => 0,
						'message' =>'Tourism Place Updation Failed.'
					);
				}
			}else{
				$response=array(
							'status' => 0,
							'message' =>'Parameter Do Not Match'
						);
			}
			header('Content-Type: application/json');
			echo json_encode($response);
		}

	function delete_place($id)
	{
		global $mysqli;
		$query="DELETE FROM place WHERE id=".$id;
		if(mysqli_query($mysqli, $query))
		{
			$response=array(
				'status' => 1,
				'message' =>'Tourism Place Deleted Successfully.'
			);
		}
		else
		{
			$response=array(
				'status' => 0,
				'message' =>'Tourism Place Deletion Failed.'
			);
		}
		header('Content-Type: application/json');
		echo json_encode($response);
	}
}
