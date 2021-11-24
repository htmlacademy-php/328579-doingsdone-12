<?php



//Функция берет прожект лист из базы по юзерайди

function getprojectlist($link, $userID) {

    $sql = "SELECT * FROM projects WHERE user_id = $userID";
    $result = mysqli_query($link, $sql);
    $list = mysqli_fetch_all($result, MYSQLI_ASSOC);
    return $list;

}

//Функиця берет задачи из базы по юзерайди

function getprojecttask($link, $userID) {

    $sql = "SELECT * FROM task WHERE user_id = $userID";;
    $result = mysqli_query($link, $sql);
    $list = mysqli_fetch_all($result, MYSQLI_ASSOC);
    return $list;

}

//Функиця считает кол-во задач в каждом проекте для указанного пользователя

function my_func_elements($taskinfo, $userID) {

    $number_of_elements = 0;

    foreach ($taskinfo as $task) {

        if($task['project_id'] == $userID)  {

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
