<?php
error_reporting(E_ERROR | E_PARSE);
require_once("../Controllers/Database.php");

Class Clubs
{

    private $db = null;

    public function __construct()
    {
        $this->$db = new Database();
    }

    public function get_all()
    {
        $res = $this->$db->query("SELECT * FROM clubs;");
        return $res;
    }

    public function get_by_id($id)
    {
        $res = $this->$db->query("SELECT * FROM clubs WHERE id=$id;");
        return $res;
    }

    public function remove($id)
    {
        $res = $this->$db->query("DELETE FROM clubs WHERE id=$id;");
        return $res;
    }

    public function update($id, $toUpdate, $value)
    {
        $res = $this->$db->query("UPDATE clubs SET `$toUpdate`='$value' WHERE clubs.id=$id;");
        return $res;
    }

    public function add($values)
    {
        $name = $values['name'];
        $chairman = $values['chairman'];
        $code = $values['code'];
        $email = $values['email'];
        $facebook_url = $values['facebook_url'];
        $foundation_year = $values['foundation_year'];
        $instagram_url = $values['instagram_url'];
        $main_team_coach = $values['main_team_coach'];
        $background_photo = $values['background_photo'];
        $logo = $values['logo'];
        $address = $values['address'];
        $venue_name = $values['venue_name'];
        $website_url = $values['website_url'];

        $res = $this->$db->query(
            "INSERT INTO clubs (id,name,chairman,code,email,facebook_url,foundation_year,instagram_url,main_team_coach,background_photo,logo,address,venue_name,website_url) 
            VALUES(NULL,'$name', '$chairman', '$code', '$email', '$facebook_url', '$foundation_year', '$instagram_url', '$main_team_coach', '$background_photo', '$logo', '$address', '$venue_name', '$website_url');"
            );
        return $res;
    }

}
?>
