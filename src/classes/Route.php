<?php

class Route {
    public static $validRoutes = array();

    public static function setRoute($path, $function) {
        self::$validRoutes = $path;

        if ($_GET['url'] == $path) {
            $function->__invoke();
        }
    }

}