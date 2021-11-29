<?php
error_reporting(E_ERROR | E_PARSE);
require_once("../Controllers/Database.php");
Class Referees
{

    private $db = null;

    public function __construct()
    {
        $this->$db = new Database();
    }

    public function get_all()
    {
        $res = $this->$db->query("SELECT * FROM referees;");
        return $res;
    }

    public function get_by_id($id)
    {
        $res = $this->$db->query("SELECT * FROM referees WHERE id=$id;");
        return $res;
    }

    public function get_stats($id)
    {
        $res = $this->$db->query("SELECT referees.first_name, referees.last_name, COUNT(matches.referee) AS total FROM matches INNER JOIN referees ON referees.id = matches.referee WHERE referees.id=$id;");
        return $res;
    }

    public function remove($id)
    {
        $res = $this->$db->query("DELETE FROM referees WHERE id=$id;");
        return $res;
    }

    public function update($id, $toUpdate, $value)
    {
        $res = $this->$db->query("UPDATE referees SET $toUpdate='$value' WHERE id=$id;");
        return $res;
    }

    public function add($values)
    {
        $first_name = $values['first_name'];
        $last_name = $values['last_name'];
        $res = $this->$db->query("INSERT INTO referees (id,first_name,last_name) VALUES(NULL,'$first_name', '$last_name');");
        return $res;
    }
}
?>
