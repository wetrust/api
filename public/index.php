<?php

try {
    if (! @include_once( '../vendor/autoload.php' ))
        throw new Exception ('Composer no ha terminado de instalar las dependencias');
        // or 
        if (!file_exists('../vendor/autoload.php' ))
            throw new Exception ('Composer no ha terminado de instalar las dependencias');
        else
            require '../vendor/autoload.php';
            new Application();
        }
catch(Exception $e) {    
    echo 'Composer no ha terminado de instalar las dependencias';
}