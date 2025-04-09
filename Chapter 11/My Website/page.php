<?php
class Page
{
  // class Page's attributes
  public $content;

  // class Page's operations
  public function __set($name, $value)
  {
    $this->$name = $value;
  }

  public function Display()
  {
    $this -> DisplayHeader();
    echo $this->content;
    $this -> DisplayFooter();
  }

  public function DisplayHeader()
  {
    require("header.php");
  }

  public function DisplayFooter()
  {
    require("footer.php");
  }


}
?>