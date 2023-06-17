<?php 
    include "../connection.php";

    $sql = "SELECT * FROM kegiatan";

    $result = $connect->query($sql);
    
    if($result->num_rows > 0){
       $kegiatan = array();
       while($row = $result->fetch_assoc()){
        $kegiatan[] = $row;
       }

       echo json_encode(array(
        "success"=> true,
        "kegiatan"=>$kegiatan,
       ));
    }else{
    echo json_encode(array(
        "success" => false,
    ));
    }
?>

    
