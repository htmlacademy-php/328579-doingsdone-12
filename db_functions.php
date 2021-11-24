<?php

//Функция соощения об ошибке при подключении к базе

function checkdberr($lik, $result) {

    if (!$result) {
        print('Ошибка MySQL ' . mysqli_error($link));
        die();
    }
}

//Функция подключения к базе данных

function connectdb($host, $user, $pass, $dbname) {

    $lnk = mysqli_connect($host, $user, $pass, $dbname );
    mysqli_set_charset($lnk, "utf8");
    checkdberr($lnk, $lnk);
    return $lnk;


}

$connect = connectdb($hostname, $username, $password, $database);
