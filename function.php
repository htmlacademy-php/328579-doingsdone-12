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


function my_rem_hours($inputdate, $time = HDAY) {

    $current_timestamp = time();

    $task_timestamp = strtotime($inputdate);

    $imp_date = floor(($task_timestamp - $current_timestamp)/3600);

    if ($imp_date <= $time && $task_timestamp != false ) {

      return true;

    }  else

        return false;


}

?>
