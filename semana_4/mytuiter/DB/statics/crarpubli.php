<?php
$include = include("./../dynamics/config.php");
$con = connect();
if($include && $con){
    $ID_USUARIO = 1;
    $descrpicion = "descripcion nueva";
    $fecha = "hoy";
    $hora = "ahorita";
    $corazones = 1;
    $n_comentarios = 3;
    $n_retuits = 5;

    // $peticion = "INSERT INTO publicacion VALUES(0, 1, '$descrpicion', '$fecha', '$hora', $corazones, $n_comentarios, $n_retuits)";
    // $query = mysqli_query($con, $peticion);
    // $sql = "SELECT * FROM USUARIOS";
    $sql = "SELECT * FROM publicacion";
    // var_dump($query);
    $query = mysqli_query($con, $sql);

    $datos =  mysqli_fetch_assoc($query);
    var_dump($datos);
};

?>