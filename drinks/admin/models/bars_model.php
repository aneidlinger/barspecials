<?php

// Get All Bars
$strSQL = "SELECT * FROM bars ORDER BY bar_id";

// Get Result
$result = mysqli_query($connect, $strSQL);

// Fetch Data
$productList = mysqli_fetch_all($result, MYSQLI_ASSOC);

// Free Result
mysqli_free_result($result);

// Close Connection
mysqli_close($connect);