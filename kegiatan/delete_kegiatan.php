<?php
include "../connection.php";

$id = $_POST['id'];

$sql = "
        DELETE FROM kegiatan 
        WHERE
        id = '$id'
        ";
$result = $connect->query($sql);

echo json_encode(array(
    "success" => $result
));

?>