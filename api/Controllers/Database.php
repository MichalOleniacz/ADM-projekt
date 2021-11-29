<?php
error_reporting(E_ERROR | E_PARSE);
class Database
{

    private $dbConnection = null;

    public function __construct()
    {
        $host = 'localhost';
        $db   = 'pzpn';
        $user = 'root';
        $pass = '';

        $this->$dbConnection = new mysqli($host, $user, $pass, $db);
    }

    public function query($stmt){
        $result = array();
        $res = $this->$dbConnection->query($stmt);
        
        /** If res is bool (add / remove) */
        if(gettype($res) === "boolean")
        {
            return json_encode(["success" => $res]);
        }

        /** If query returns data */
        while($row = $res->fetch_array(MYSQLI_ASSOC)) {
                $result[] = $row;
        }

        return json_encode($result);
    }

}
?>
