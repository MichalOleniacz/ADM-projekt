<?php

$route = explode('/', $_SERVER['REQUEST_URI']);
$params = parse_url($_SERVER['REQUEST_URI'], PHP_URL_QUERY);
$method = $_SERVER['REQUEST_METHOD'];
parse_str($params, $params_array);

header('Content-Type: application/json; charset=utf-8');

if(isset($route[2], $route[3]) && $route[2] === 'api' && $route[3] == "matches"){
    require_once('../Models/Matches.php');
    $matches = new Matches();

    try {

        if($method == "GET")
        {
            if(isset($params_array['upcoming'])) {
                echo $matches->get_upcoming();
                exit();
            }
            if(isset($params_array["id"])) {
                echo $matches->get_by_id($params_array["id"]);
            } else {
                echo $matches->get_all();
            }
        }

        if($method == "DELETE")
        {
            if(isset($params_array["id"])) {
                echo $matches->remove($params_array["id"]);
            } else {
                http_response_code(400);
            }
        }

        if($method == "PUT") {
            $body = json_decode(@file_get_contents('php://input'), true);

            if(isset($body["id"], $body['toUpdate'], $body['value'])) {
                echo $matches->update($params_array["id"], $body['toUpdate'], $body['value']);
            } else {
                http_response_code(400);
            }
        }

        if($method == "POST") {
            $body = json_decode(@file_get_contents('php://input'), true);
            if(isset($body['date'], $body['team_a'], $body['score_team_a'], $body['team_b'], $body['score_team_b'], $body['winner'], $body['referee'])) {
                echo $matches->add($body);
            } else {
                http_response_code(400);
            }
        }
    } catch (PDOException $e) {
        exit($e->getMessage());
    }

} else {
    http_response_code(404);
}

?>