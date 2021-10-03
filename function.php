<?php

function my_func_elements($taskinfo, $project) {

    $number_of_elements = 0;

    foreach ($taskinfo as $task) {

        if($task['cat'] == $project)  {

            $number_of_elements = $number_of_elements + 1;


        }


    }

    return $number_of_elements;

}

?>
