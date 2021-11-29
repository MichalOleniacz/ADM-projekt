<?php

$route = explode('/', $_SERVER['REQUEST_URI']);
$params = parse_url($_SERVER['REQUEST_URI'], PHP_URL_QUERY);
$method = $_SERVER['REQUEST_METHOD'];
parse_str($params, $params_array);

header('Content-Type: application/json; charset=utf-8');

if(isset($route[2], $route[3]) && $route[2] === 'api' && $route[3] === "referees"){
    require_once('../Models/Referees.php');
    $referees = new Referees();


    if($method == "GET")
    {
        if(isset($params_array["id"])) {
           echo $referees->get_by_id($params_array["id"]);
        } else {
           echo $referees->get_all();
        }
    }

    if($method == "DELETE")
    {
        if(isset($params_array["id"])) {
           echo $referees->remove($params_array["id"]);
        } else {
           http_response_code(400);
        }
    }

    if($method == "PUT") {
        $body = json_decode(@file_get_contents('php://input'), true);

        if(isset($body["id"], $body['toUpdate'], $body['value'])) {
            echo $referees->update($body["id"], $body['toUpdate'], $body['value']);
        } else {
           http_response_code(400);
        }
    }

    if($method == "POST") {
        $body = json_decode(@file_get_contents('php://input'), true);
        
        if(isset($body['first_name'], $body['last_name'])){
            echo $referees->add($body);
        } else {
            http_response_code(400);
        }
    }

} else {
    http_response_code(404);
}

?>