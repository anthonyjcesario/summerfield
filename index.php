<?php

spl_autoload_register('autoloader');

function autoloader($className) {
    if (file_exists("./src/classes/$className.php")) {
        require("./src/classes/$className.php");
    }
    if (file_exists("./src/controllers/$className.php")) {
        require("./src/controllers/$className.php");
    }
}

require_once("./routes.php");