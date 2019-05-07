<?php

$dbhost = 'cis282final.cympi2lq5cp1.us-east-1.rds.amazonaws.com';
$dbuser = 'aneidlinger';
$dbpass = 'red8blue';
$dbname = 'drinkSpecials';
$connect = mysqli_connect($dbhost, $dbuser, $dbpass, $dbname);

if (!$connect) {
    die('Could not connect to instance: ' . mysqli_error($connect));
}