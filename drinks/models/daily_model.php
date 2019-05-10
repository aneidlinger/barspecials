<?php

$day = $_GET['day'];

$query = "SELECT s.special_desc, b.bar_name AS 'bar', c.category, d.day_name
            FROM specials s, days d, bars b, categories c
            WHERE d.day_name = '$day'
            AND b.bar_id = s.bar_id
            AND s.category_id = c.category_id
            AND s.day_id = d.day_id";

$result = mysqli_query($connect, $query);