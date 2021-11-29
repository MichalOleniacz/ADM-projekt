<?php

$route = explode('/', $_SERVER['REQUEST_URI']);
$params = parse_url($_SERVER['REQUEST_URI'], PHP_URL_QUERY);
$method = $_SERVER['REQUEST_METHOD'];
parse_str($params, $params_array);

header('Content-Type: application/json; charset=utf-8');

if(isset($route[2], $route[3]) && $route[2] === 'api'){
    
    
    if($method == "GET")
    {
        if(isset($params_array["type"])) {
            switch ($params_array["type"]) {
                case 'top_scorers':
                    require_once('../Models/Players.php');
                    $players = new Players();
                    
                    try {
                        echo $players->get_top_scoring_players();
                    } catch (PDOException $e) {
                        exit($e->getMessage());
                    }

                    break;
                
                case 'referee_stats':
                    require_once('../Models/Referees.php');
                    $referees = new Referees();
                    if(isset($params_array['id'])) {
                        try {
                            echo $referees->get_stats($params_array['id']);
                        } catch (PDOException $e) {
                            exit($e->getMessage());
                        }
                    } else {
                        http_response_code(400);
                    }


                default:
                    # code...
                    break;
            }
           echo $matches->get_by_id($params_array["id"]);
        } else {
            http_response_code(400);
        }
    }

} else {
    http_response_code(404);
}


?>