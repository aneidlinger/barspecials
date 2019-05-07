<?php

// Get All Bars
$strSQL = "SELECT * FROM bars b, neighborhoods n
            WHERE b.neighborhood_id = n.neighborhood_id
            ORDER BY b.neighborhood_id, b.bar_id";

// Get Result
$result = mysqli_query($connect, $strSQL);

// Fetch Data
// $barList = mysqli_fetch_all($result, MYSQLI_ASSOC);

// // Free Result
// // mysqli_free_result($result);

// // Close Connection
// mysqli_close($connect);
