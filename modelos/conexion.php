<?php

class Conexion{

	static public function conectar(){

		$link = new PDO("mysql:host=localhost;dbname=1pos",
			            "mrayala0927",
			            "j3102542129");

		$link->exec("set names utf8");

		return $link;

	}

}