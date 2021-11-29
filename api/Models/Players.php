<?php
error_reporting(E_ERROR | E_PARSE);
require_once("../Controllers/Database.php");
Class Players
{

    private $db = null;

    public function __construct()
    {
        $this->$db = new Database();
    }

    public function get_all()
    {
        $res = $this->$db->query("SELECT * FROM players;");
        return $res;
    }

    public function get_by_id($id)
    {
        $res = $this->$db->query("SELECT * FROM players WHERE id = $id;");
        return $res;
    }

    public function get_top_scoring_players()
    {
        $res = $this->$db->query("SELECT * FROM players ORDER BY goals_total DESC LIMIT 10;");
        return $res;
    }

    public function remove($id)
    {
        $res = $this->$db->query("DELETE FROM players WHERE id = $id;");
        return $res;
    }

    public function update($id, $toUpdate, $value)
    {
        $res = $this->$db->query("UPDATE players SET $toUpdate='$value' WHERE id = $id;");
        return $res;
    }

    public function add($values)
    {
        $first_name = $values['first_name'];
        $last_name = $values['last_name'];
        $number = $values['number'];
        $position = $values['position'];
        $club = $values['club'];
        $goals_total = $values['goals_total'];

        $res = $this->$db->query("INSERT INTO players (id,first_name,last_name,number,position,club,goals_total) VALUES(NULL,'$first_name', '$last_name', '$number', '$position','$club', '$goals_total');");
        return $res;
    }

}
?>
