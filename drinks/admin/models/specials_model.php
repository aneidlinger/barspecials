<?php

// Get All Specials
$strSQL = "SELECT * FROM bars b, specials s
            WHERE b.bar_id = s.bar_id
            ORDER BY b.bar_id, s.day_id";

// Get Result
$result = mysqli_query($connect, $strSQL);

// Fetch Data
$categoryList = mysqli_fetch_all($result, MYSQLI_ASSOC);

// Free Result
mysqli_free_result($result);

// Close Connection
mysqli_close($connect);
