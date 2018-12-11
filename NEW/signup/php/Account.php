<?php
include 'DB.php';

class Account
{
  public $id;
  public $name;
  public $password;
  public $do;
  public function setName()
  {
    $this->name = $_POST['username'];//获取用户输入的姓名
  }
  public function setPassword()
  {
    $this->password = $_POST['password'];//获取用户输入的密码
  }
  public function __construct()
  {
    $this->setName();
    $this->setPassword();
  }
  public function getDo()
  {
    if(isset($_GET['do'])){
      $this->do = $_GET['do'];
    }
  }
  public function DBselect()//数据库操作
  {
    $db_o = new DB();
    $db_o->connect();
    $sql = "SELECT * FROM account where username='" . $this->name . "'";
    $db_o->query($sql);
    $row = $db_o->getRow();//取出查询结果
    return $row;
  }

  public function login()
  {
    $result_arr = $this->DBselect();
    if($result_arr){
      if($result_arr['password']==$this->password)
      {
        $this->id = $result_arr['id'];
        echo "<script>alert(登陆成功！)</script>";
        $time = time()+24*60*60;
        setCookie("uid", $this->id, $time, "/"); //设置COOKIE
        setCookie("username", $this->name, $time, "/"); //设置一个用户名COOKIE
        setCookie("isLogin", 1, $time, "/"); // 设置一个登录判断的标记isLogin
        echo '<script type="text/javascript">
        alert("登陆成功！");
        window.location.href="../signup.html";
        </script>';//返回主页
      }
      else{
        echo '<script type="text/javascript">
        alert("登录名或密码错误！请重新输入");
        window.location.href="../login.html";
        </script>';
      }
    }
    else{
      echo '<script type="text/javascript">
      alert("登录名或密码错误！请重新输入");
      window.location.href="../login.html";
      </script>';
    }
  }

  public function logout()
  {
    if(isset($_GET['do']) && $_GET['do']=='logout'){
    setCookie("uid", '', time()-3600, "/");
    setCookie("username", '', time()-3600, "/");
    setCookie("isLogin", '', time()-3600, "/");
    echo '<script>alert("退出成功");location="../login.html"</script>';
    }
  }

  public function signup()
  {
    $result_arr = $this->DBselect();
    if($result_arr){
      echo "<script type='text/javascript'>
      alert('用户名不可用！请重新输入');
      window.location.href='../signup.html';
      </script>";
    }
    else{
      $sql1 = "insert into account(username,password) values(" . "'" . $this->name . "','" . $this->password . "')";
      $sql2 = "insert into user_info(username) values(" . "'" . $this->name . "')";
      $db_o = new DB();
      $db_o->connect();
      $db_o->execute($sql1);
      $db_o->execute($sql2);
      echo "<script type='text/javascript'>
      alert('注册成功！请登录');
      window.location.href='../login.html';
      </script>";
    }
  }

}

$test = new Account();
$test->getDo();
$funName = (string)$test->do;
$test->$funName();
 ?>