<?php

$barId = $_GET["bar_id"];

$query = "SELECT * FROM bars b, neighborhoods n, cities c, states s, cover_charges ch, zipcodes z, times t
            WHERE b.bar_id = $barId
            AND b.neighborhood_id = n.neighborhood_id
            AND b.city_id = c.city_id
            AND b.state_id = s.state_id
            AND b.cover_id = ch.cover_id
            AND b.zip_id = z.zip_id
            AND b.mon_open = t.time_id
            AND b.mon_close = t.time_id
            AND b.tue_open = t.time_id
            AND b.tue_close = t.time_id
            AND b.wed_open = t.time_id
            AND b.wed_close = t.time_id
            AND b.thu_open = t.time_id
            AND b.thu_close = t.time_id
            AND b.fri_open = t.time_id
            AND b.fri_close = t.time_id
            AND b.sat_open = t.time_id
            AND b.sat_close = t.time_id
            AND b.sun_open = t.time_id
            AND b.sun_close = t.time_id";

$result = mysqli_query($connect, $query);