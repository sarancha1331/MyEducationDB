<?php
class Db{
	public static function getConnection(){
		$user='root';
		$password='root';
		$dbn= new PDO('mysql:host=127.0.0.1;dbname=mybase',$user,$password);
        $dbn->exec("set names CP-1251");
return $dbn;
	}
}