<?php 
    include "../connection.php";

    $id       = $_POST['id'];
    $judul   = $_POST['judul'];
    $jenis = $_POST['jenis'];
    $deskripsi = $_POST['deskripsi'];
    $tanggal = $_POST['tanggal'];
    $jam = $_POST['jam'];
    $tempat = $_POST['tempat'];
    $nama_pnt = $_POST['nama_pnt'];
    $no_idn = $_POST['no_idn'];
    $jenis_kelamin = $_POST['jenis_kelamin'];
    $status = $_POST['status'];
    
    $sql1 = "SELECT * FROM kegiatan WHERE id = '$id'";
    $check = $connect->query($sql1);
    $reason = "";
    $success = true;

    if($check->num_rows > 0){
        $success = false;
        $reason = "Kode sudah ada";
    }else{
        $sql2 = "
        INSERT INTO kegiatan SET 
            id = '$id',
            judul = '$judul',
            jenis = '$jenis',
            deskripsi = '$deskripsi',
            tanggal = '$tanggal',
            jam = '$jam',
            tempat = '$tempat',
            nama_pnt = '$nama_pnt',
            no_idn = '$no_idn',
            jenis_kelamin = '$jenis_kelamin',
            status = '$status'
        ";
        
        $result = $connect->query($sql2);

        if(!$result){
            $success = false;
            $reason = "Gagal add kegiatan";
        }
    }

    echo json_encode(array(
        "success" => $success,
        "reason" =>$reason,
    ));
