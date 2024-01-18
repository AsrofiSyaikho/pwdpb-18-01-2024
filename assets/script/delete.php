<?php
require "connect.php";

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $insertID = $_POST["idpc"];
    $insertNokeluhan = $_POST["nokeluhan"];

    $query = "DELETE FROM formkeluhan WHERE nokeluhan = $insertNokeluhan";

    if ($conn->query($query) === TRUE) {
        echo "Berhasil Hapus Formulir";
        header('Location: ../../tabelhasilform.php');
    } else {
        echo "Gagal Hapus Formulir. Error: " . $query . "<br>" . $conn->error;
    }
}

$conn->close();
?>