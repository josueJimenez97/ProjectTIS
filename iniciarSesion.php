<?php
    function conectarBD(){
        $dbservername = "localhost";
        $dbusername = "postgres";
        $dbname = "prueba";
        $dbpassword = "postgres";
        $puerto = "5432";
        $con=pg_connect("host=$dbservername port=$puerto dbname=$dbname user=$dbusername password=$dbpassword");
        return $con;
    }
    $usr=$_POST['nombreUser'];
    $pass=$_POST['password'];
    $conexion=conectarBD();
    //$usr='usr';
    //$pass='usr';
    if($usr!="" AND $pass != ""){
        $result = pg_query($conexion, "SELECT validar_usuario('$usr','$pass')");
        if (!$result) {
            echo "Ocurrió un error.\n";
        }else{
            while ($row = pg_fetch_row($result)) {
                $res=$row[0];
            }
            if($res){ 
                //echo "datos correctos"; 
                header("Location: informacion.php");
            }else{
                echo "datos incorrectos";
            }
        }
    }else{

    }
    
 
?>