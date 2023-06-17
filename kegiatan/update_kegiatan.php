<?php
include "../connection.php";

    $id               = $_POST['id'];
    $judul            = $_POST['judul'];
    $jenis            = $_POST['jenis'];
    $deskripsi        = $_POST['deskripsi'];
    $tanggal          = $_POST['tanggal'];
    $jam              = $_POST['jam'];
    $tempat           = $_POST['tempat'];
    $nama_pnt         = $_POST['nama_pnt'];
    $no_idn           = $_POST['no_idn'];
    $jenis_kelamin    = $_POST['jenis_kelamin'];
    $status           = $_POST['status'];


$sql = "
        UPDATE kegiatan 
        SET 
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
        WHERE
        id = '$id'
        ";

$result = $connect->query($sql);
echo json_encode(array(
    "success" => $result
));
