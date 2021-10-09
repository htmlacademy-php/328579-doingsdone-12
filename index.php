<?php

date_default_timezone_set('Europe/Moscow');

const HDAY = 24;



$user_name = 'Константин';

$show_complete_tasks = rand(0, 1);

$projectlist = ["Входящие", "Учеба", "Работа", "Домашние дела", "Авто"];

$taskinfo = [

[
      'task'  => 'Собеседование в IT компании' ,
      'datecom' => '06.10.2021' ,
      'cat' => 'Работа' ,
      'done' => 'false'

],

[
     'task'  => 'Выполнить тестовое задание' ,
     'datecom' => '05.10.2021' ,
     'cat' => 'Работа' ,
     'done' => 'false'
],

[
     'task'  => 'Сделать задание первого раздела' ,
     'datecom' => '21.12.2021' ,
     'cat' => 'Учеба' ,
     'done' => 'true'
],

 [
     'task'  => 'Встреча с другом' ,
     'datecom' => '22.12.2021' ,
     'cat' => 'Входящие' ,
     'done' => 'false'
],

 [
     'task'  => 'Купить корм для кота' ,
     'datecom' => 'null' ,
     'cat' => 'Домашние дела' ,
     'done' => 'false'
],

 [
     'task'  => 'Заказать пиццу' ,
     'datecom' => 'null' ,
     'cat' => 'Домашние дела' ,
     'done' => 'false'
]

];

require_once('helpers.php');

require_once('function.php');



$mainContent = include_template('main.php',['projectlist' => $projectlist, 'taskinfo'=> $taskinfo, 'show_complete_tasks' => $show_complete_tasks]);

print(include_template('layout.php', ['title' => 'Дела в порядке', 'content' => $mainContent, 'user_name' => $user_name]));

?>


