<?php
const DBHOST = "localhost";
const DBUSER = "root";
const PASSWORD = "";
const DB = "tuiter";
function connect(){
    $conexion = mysqli_connect(DBHOST, DBUSER, PASSWORD, DB);
    return $conexion;//si la conexion falla regresa un FALSE, si es exitosa te devuelve un objeto de conexion
}

// var_dump(connect());
?>