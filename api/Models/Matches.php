<?php
error_reporting(E_ERROR | E_PARSE);
require_once("../Controllers/Database.php");

Class Matches
{
    private $db = null;

    public function __construct()
    {
        $this->$db = @new Database();
    }

    public function get_all()
    {
        $res = $this->$db->query("SELECT * FROM matches;");
        return $res;
    }

    public function get_by_id($id)
    {
        $res = $this->$db->query("SELECT * FROM matches WHERE id=$id;");
        return $res;
    }

    public function get_upcoming()
    {
        $res = $this->$db->query("SELECT * FROM matches WHERE date > TIME(NOW()) ;");
        return $res;
    }

    public function remove($id)
    {
        $res = $this->$db->query("DELETE FROM matches WHERE id=$id;");
        return $res;
    }

    public function update($id, $toUpdate, $value)
    {
        $res = $this->$db->query("UPDATE matches SET $toUpdate='$value' WHERE id=$id;");
        return $res;
    }

    public function add($values)
    {
        $date = $values['date'];
        $team_a = $values['team_a'];
        $team_b = $values['team_b'];
        $score_team_a = $values['score_team_a'];
        $score_team_b = $values['score_team_b'];
        $winner = $values['winner'];
        $referee = $values['referee'];
        $res = $this->$db->query("INSERT INTO matches (id,date,team_a, score_team_a, team_b, score_team_b, winner, referee) VALUES(NULL,'$date', '$team_a', '$score_team_a', '$team_b', '$score_team_b', '$winner', '$referee');");
        return $res;
    }

}
?>
