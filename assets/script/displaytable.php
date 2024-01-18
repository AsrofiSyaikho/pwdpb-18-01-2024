<?php
require "connect.php";

$query ="SELECT * FROM formkeluhan";
            $result = $conn->query($query);
            if($result->num_rows> 0){
                echo '<table >';
                echo '<thead><tr><th>No. Keluhan</th><th>ID Pc</th><th>Username</th><th>Tanggal</th><th>Servis/Perawatan</th><th>Penggantian Sparepart</th><th>Paraf</th></tr></thead>';
                echo '<tbody>';
                while ($row = $result->fetch_assoc()) {
                    echo '<tr>';
                    echo '<td>' . $row['nokeluhan'] . '</td>';
                    echo '<td>' . $row['idpc'] . '</td>';
                    echo '<td>' . $row['username'] . '</td>';
                    echo '<td>' . $row['tanggal'] . '</td>';
                    echo '<td>' . $row['servis'] . '</td>';
                    echo '<td>' . $row['gantisparepart'] . '</td>';
                    echo '<td>' . $row['paraf'] . '</td>';
                    echo '</tr>';
                }
                echo '</tbody></table>';
            } else {
                echo 'Tidak ada data.';
            }
            ?>
            </center>
            <style>
                table {
                    background-color: white;
                    padding: 20px;
                    margin-top: 20px;
                }
                th,td {
                    border: 1px solid #000;
                    padding: 5px;
                }
            </style>
            