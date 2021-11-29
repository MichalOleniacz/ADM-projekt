<?php

$route = explode('/', $_SERVER['REQUEST_URI']);
$params = parse_url($_SERVER['REQUEST_URI'], PHP_URL_QUERY);
$method = $_SERVER['REQUEST_METHOD'];
parse_str($params, $params_array);

header('Content-Type: application/json; charset=utf-8');

if(isset($route[2]) && $route[2] === 'api'){
    require_once('../Models/Players.php');
    $players = new Players();


    if($method == "GET")
    {
        if(isset($params_array["id"])) {
           echo $players->get_by_id($params_array["id"]);
        } else {
           echo $players->get_all();
        }
    }

    if($method == "DELETE")
    {
        if(isset($params_array["id"])) {
           echo $players->remove($params_array["id"]);
        } else {
           http_response_code(400);
        }
    }

    if($method == "PUT") 
    {
        $body = json_decode(@file_get_contents('php://input'), true);

        if(isset($body["id"], $body['toUpdate'], $body['value'])) {
            echo $players->update($params_array["id"], $body['toUpdate'], $body['value']);
        } else {
           http_response_code(400);
        }
    }

    if($method == "POST") 
    {
        $body = json_decode(@file_get_contents('php://input'), true);
        if(isset($body['first_name'], $body['last_name'], $body['number'], $body['position'], $body['club'], $body['goals_total'])) {
            echo $players->add($body);
        } else {
            http_response_code(400);
        }
    }

} else {
    http_response_code(404);
}
