<?php
/**
 * Created by PhpStorm.
 * User: faysal
 * Date: 20-03-17
 * Time: 16:06
 */
    echo "Ce site a été créé par: \n";
try{
    $db = new PDO('mysql:host=172.17.0.4;dbname=groupe12','root','123');

    $req = $db->prepare('SELECT * FROM tbtest');
    $req->execute();
    $res = $req->fetchAll();
    foreach ($res as $personne ){
        echo "-" . $personne['nom'] . " " . $personne['prenom'] . "\n";
    }

}catch(PDOException $e){
    printf('<br><b>SQL Error</b>:'.$e->getMessage().'<br>');
    die();
}
