<?php

$barId = $_GET["bar_id"];

$query = "SELECT b.bar_name, b.address, b.phone, n.neighborhood_name AS 'neighborhood', c.city, s.state_abbrev AS 'state',
ch.cover_type, z.zipcode, b.late_night, b.serves_food, b.cash_only, b.website, b.logo, tmo.time AS 'mon_open', tmc.time AS 'mon_close',
tto.time AS 'tue_open', ttc.time AS 'tue_close', two.time AS 'wed_open', twc.time AS 'wed_close', tro.time AS 'thu_open', trc.time AS 'thu_close',
tfo.time AS 'fri_open', tfc.time AS 'fri_close', tso.time AS 'sat_open', tsc.time AS 'sat_close', tsuno.time AS 'sun_open', tsunc.time AS 'sun_close'
FROM bars b, neighborhoods n, cities c, states s, cover_charges ch, zipcodes z, times tmo, times tmc,
            times tto, times ttc, times two, times twc, times tro, times trc, times tfo, times tfc, times tso, times tsc,
            times tsuno, times tsunc
            WHERE b.bar_id = $barId
            AND b.neighborhood_id = n.neighborhood_id
            AND b.city_id = c.city_id
            AND b.state_id = s.state_id
            AND b.cover_id = ch.cover_id
            AND b.zip_id = z.zip_id
            AND b.mon_open = tmo.time_id
            AND b.mon_close = tmc.time_id
            AND b.tue_open = tto.time_id
            AND b.tue_close = ttc.time_id
            AND b.wed_open = two.time_id
            AND b.wed_close = twc.time_id
            AND b.thu_open = tro.time_id
            AND b.thu_close = trc.time_id
            AND b.fri_open = tfo.time_id
            AND b.fri_close = tfc.time_id
            AND b.sat_open = tso.time_id
            AND b.sat_close = tsc.time_id
            AND b.sun_open = tsuno.time_id
            AND b.sun_close = tsunc.time_id";

$result = mysqli_query($connect, $query);