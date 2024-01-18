<?php
require "connect.php";


if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $enteredUsername = $_POST["loginuser"];
    $enteredPassword = $_POST["password"];

    $query = "SELECT * FROM useraccount WHERE username = '$enteredUsername' AND password = '$enteredPassword'";
    $result = $conn->query($query);

    if ($result->num_rows > 0) {
        echo "Login successful!";
        header('Location: ../../mainpage.php');
    } else {
        echo "Invalid username or password.";
    }
}

$conn->close();

?>