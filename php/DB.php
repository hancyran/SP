<?php
class DB{
  public static $host= "localhost";
  public static $port= "5432";
  public static $dbname= "teaching_skills";
  public static $username= "haoxiran";
  public static $password= "rhx1198129562+";
  public $result;
  public $db;
  public $row;
  public $row_num;
  public $all_row;
  public $preq;
  public function connect(){
    $this->db= new PDO("pgsql:host=" . DB::$host . " port=". DB::$port . " dbname=". DB::$dbname, DB::$username, DB::$password);
    if (!$this->db) {
      print "Cannot access to database";
    }
    else{
      return $this->db;
    }
  }
  public function query($sq){
    $this->result= $this->db->query($sq);
    if(!$this->result){
      print "Query not valid";
    }
    else {
      return $this->result;
    }
  }
  public function getRow(){
    $this->row= $this->result->fetch();
    if ($this->row) {
      return $this->row;
    }
    else{
      print "All rows fetched";
    }
  }
  public function getAllRow(){
    $this->all_rows= $this->result->fetchAll();
    return $this->all_rows;
  }
  public function getRowNum(){
    $this->row_num= $this->result->rowCount();
    return $this->row_num;
  }
  //here I need to add both prepare and execute function;
  public function prepare(){

  }
  public function execute(){

  }
  public function close(){
    $this->result= null;
    $this->db= null;
  }
}
?>