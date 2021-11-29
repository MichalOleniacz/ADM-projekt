<?php
error_reporting(E_ERROR | E_PARSE);
require_once("../Controllers/Database.php");

Class Coaches
{

    private $db = null;

    public function __construct()
    {
        $this->$db = new Database();
    }

    public function get_all()
    {
        $res = $this->$db->query("SELECT * FROM coaches;");
        return $res;
    }

    public function get_by_id($id)
    {
        $res = $this->$db->query("SELECT * FROM coaches WHERE id == $id;");
        return $res;
    }

    public function remove($id)
    {
        $res = $this->$db->query("DELETE FROM coaches WHERE id == $id;");
        return $res;
    }

    public function update($id, $toUpdate, $value)
    {
        $res = $this->$db->query("UPDATE coaches SET $toUpdate=$value WHERE id == $id;");
        return $res;
    }

    public function add($values)
    {
        $first_name = $values['first_name'];
        $last_name = $values['last_name'];
        $res = $this->$db->query("INSERT INTO coaches (id,first_name,last_name) VALUES(NULL,'$first_name', '$last_name');");
        return $res;
    }

}
?>
