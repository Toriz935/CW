<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>BoletosDonGerardo.com</title>
    <link rel="icon" href="https://www.shutterstock.com/image-photo/middle-age-latin-man-wearing-260nw-2191637135.jpg" type="icon-x/image"></icon>
</head>
<body>
    <h1><strong><u>Boletos:</u></strong></h1><br><br>
    <?php
        $nombre = (isset($_POST["nombre"]) && $_POST["nombre"] != "")? $_POST["nombre"] : "Falta nombre";//recibe "nombre" del formulario php
        $apellido = (isset($_POST["apellido"]) && $_POST["apellido"] != "")? $_POST["apellido"] : "Faltan apellidos";//recibe "apellido" de php
        $zona = (isset($_POST["zona"]) && $_POST["zona"] != "")? $_POST["zona"] : "Falta zona";//recibe "zona"
        $num_boletos = (isset($_POST["num_boletos"]) && $_POST["num_boletos"] != "" )? $_POST["num_boletos"] :"Numero incorrecto de boletos";// recibe el número de boletos
        $artista = (isset($_POST["artista"]) && $_POST["artista"] != "")? $_POST["artista"] : "Falta artista";//reibe "artista"
        $fecha = (isset($_POST["fecha"]) && $_POST["fecha"] != "")? $_POST["fecha"]  : "Eliga una fecha";//recibe  "fecha"
        $lugar = (isset($_POST["lugar"]) && $_POST["lugar"] != "")? $_POST["lugar"] : "Eliga un lugar";//recibe "lugar"
        $extra_1 = (isset($_POST["extra_1"]) && $_POST["extra_1"] != "")? "Palomitas, " : "";// verifica si se agrego "extra_1", de no ser así en valor es nulo
        $extra_2 = (isset($_POST["extra_2"]) && $_POST["extra_2"] != "")? "Refresco, " : "";
        $extra_3 = (isset($_POST["extra_3"]) && $_POST["extra_3"] != "")? "VIP, " : "";
        $extra_4 = (isset($_POST["extra_4"]) && $_POST["extra_4"] != "")? "Regalo " : "";
/////////////////////////Asignar una foto de acuerdo al artista elegido//////////////////////////////////////////////////////
        switch($artista){
            //roberto
            case "Roberto Musso":
                $foto_artista = "<img src='./../fotos/roberto.png' height='500px' width='500'>";
                $frase_chida = "'<i>No soy un cordero a matar con cianuro, soy un guerrero y todavía respiro.</i>'";
                break;
            //cuarteto
            case "El cuarteto de Nos":
                $foto_artista = "<img src='./../fotos/cuarteto.png' height='500px' width='500'>";
                $frase_chida = "'<i>Antes de dormirme hoy quiero afirmar que este un día más y no un día menos.</i>'";
                break;
            //Taylor
            case "Taylor Swift":
                $foto_artista = "<img src='./../fotos/taylor.png' height='500px' width='500'>";
                $frase_chida = "'<i>Ninguna voz es tan cruel como la voz que cada uno de nosotros tiene en la cabeza.</i>'";
                break;
            //Rosalía
            case "Rosalía":
                $foto_artista = "<img src='./../fotos/rosalia.png' height='500px' width='500'>";
                $frase_chida = "'<i>Si yo supiera compañero, que el sol que sale te ofende, con el sol me peleara.</i>'";
                break;
            //Chayanne
            case "Chayanne":
                $foto_artista = "<img src='./../fotos/chayanne.png' height='500px' width='500'>";
                $frase_chida = "'<i>Que se confundan la verdad y la mentira y que sólo tu amor ilumine mi vida.</i>'";
                break;
            }
///////////////////////////Asignar una foto dependiendo del lugar//////////////////////////////////////////////// 
        switch($lugar){
            //Auditorio Nacional
            case "Auditorio Nacional":
                $foto_lugar = "<img src='./../fotos/auditorio.png' height='250px' width='250'>";
                break;
             //La explanada del Zócalo de la CDMX
            case "La explanada del Zócalo de la CDMX":
                $foto_lugar = "<img src='./../fotos/zocalo.png' height='250px' width='250'>";
                break;
            //La casa de Joaquín
            case "La casa de Joaquín":
                $foto_lugar = "<img src='./../fotos/casa.png' height='250px' width='250'>";
                break;
            //tepocueva
            case "Tepocueva":
                $foto_lugar = "<img src='./../fotos/tepocueva.png' height='250px' width='250'>";
                break;
            //Foro sol
            case "Foro sol":
                $foto_lugar = "<img src='./../fotos/foro.png' height='250px' width='250'>";
                break;
        }
////////////////////////Asignar una foto dependiedno de la zona///////////////////////////////////////////////////////////
      switch($zona){
            //Gradas
            case "Gradas":
                $foto_zona = "<img src='./../fotos/gradas.png' height='250px' width='250'>";
                break;
            //Butacas
            case "Butacas":
                $foto_zona = "<img src='./../fotos/butacas.png' height='250px' width='250'>";
                break;
            //Balcón
            case "Balcón":
                $foto_zona = "<img src='./../fotos/balcon.png' height='250px' width='250'>";
                break;
            //De pie
            case "De pie":
                $foto_zona = "<img src='./../fotos/de_pie.png' height='250px' width='250'>";
                break;
            //Hasta el frente
            case "Hasta el frente":
                $foto_zona = "<img src='./../fotos/enfrente.png' height='250px' width='250'>";
                break;
            //Estacionamiento
            case "Estacionamiento":
                $foto_zona = "<img src='./../fotos/estacionamiento.png' height='250px' width='250'>";
                break;
        }
///////////////////////////////////Verificar los extras///////////////////////////////////
        //junta los extras en una sola variable para imprimirlos con más sencillez, de no haber selecionado nada, guarda "ninguno"
        if($extra_1.$extra_2.$extra_3.$extra_4 != ""){
            $extras = $extra_1.$extra_2.$extra_3.$extra_4;
        }else{
            $extras = "Ninguno";
        }
/////////////////////////////Verificar los Boletos/////////////////////////////////////
        //Asegura que solo se puedan imprimir 15 boletos.
        if($num_boletos > 15){
            $exceso = $num_boletos;
            $num_boletos = 15;
        }else{
            $exceso = 0;
        }
        $sobrante = $exceso - $num_boletos;
///////////////////////////Imprimir los boletos////////////////////////////////
        for($i=1;$i<=$num_boletos;$i++)
        {
            echo "
                <table align='center' border='10' style='border-collapse: inherit;' cellpadding='15px'>
                    <thead>
                        <tr>
                        <th colspan='4'><strong>Boletos para</strong> $artista</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><strong>Nombre:</strong> $nombre</td>
                            <td><strong>Apellidos:</strong> $apellido</td>
                            <td><strong>Fecha:</strong> $fecha</td>
                            <td rowspan='4'><img src='./../fotos/codigo.png' alt='codigo de barras'></td>
                        </tr>
                        <tr>
                            <td><strong>Lugar:</strong> $lugar</td>
                            <td>$foto_lugar</td>
                            <td rowspan='2'>$foto_artista</td>
                        </tr>
                        <tr>
                            <td><strong>Zona:</strong> $zona</td>
                            <td>$foto_zona</td>
                        </tr>
                        <tr>
                            <td colspan='2'><strong>Extras:</strong>$extras</td>
                            <td><i><strong>$frase_chida</strong></i></td>
                        </tr>
                    </body>
                </table>
            "."<br>"; 
        }
        //anunciar que no se terminaron de imprimir boletos
        if($sobrante > 0){
            echo "<p align='center'><strong>Se imprimieron 15 boletos, faltaron $sobrante.</strong></p>";
        }
    ?>
</body>
</html>
