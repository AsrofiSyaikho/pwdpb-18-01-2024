<?php
require "connect.php";

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $createUsername = $_POST["createuser"];
    $createEmail = $_POST["createemail"];
    $createPassword = $_POST["createpassword"];

    $query = "INSERT INTO userlogin (username, email, password) VALUES ('$createUsername', '$createEmail', '$createPassword')";

    if ($conn->query($query) === TRUE) {
        echo "Berhasil Buat Akun!";
        header ('Location: ../../loginpage.php');
    } else {
        echo "Gagal Buat Akun. Error: " . $query . "<br>" . $conn->error;
    }
}

$conn->close();
?>
