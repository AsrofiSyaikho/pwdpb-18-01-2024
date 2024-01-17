<?php
require "connect.php";

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $insertID = $_POST["idpc"];
    $insertUser = $_POST["username"];
    $insertDate = $_POST["tanggal"];
    $insertSparePart = $_POST["gantisparepart"];
    $insertService = $_POST["perbaikan"];
    $insertSignature = $_POST["paraf"];

    $query = "INSERT INTO inputform (idpc, username, tanggal, perbaikan, gantisparepart, paraf) VALUES ('$insertID', '$insertUser', '$insertDate',
    '$insertService', ' $insertSparePart', '$insertSignature')";

    if ($conn->query($query) === TRUE) {
        echo "Berhasil Kirim Formulir";
    } else {
        echo "Gagal Kirim Formulir. Error: " . $query . "<br>" . $conn->error;
    }
}

$conn->close();
?>