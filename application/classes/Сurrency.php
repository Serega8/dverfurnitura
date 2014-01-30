<?php

defined('SYSPATH') or die('No direct script access.');

require(APPPATH . 'classes/phpQuery/phpQuery/phpQuery.php');

define('URL', 'http://belarusbank.by/');

class Сurrency {

    private function __construct() {
        
    }

    protected function __clone() {
        
    }

    public static function info_nacbank() {
        try {
            ini_set("allow_url_fopen", TRUE);
            $data = file_get_contents(URL);

            $doc = phpQuery::newDocument($data);
            $rates = $doc->find('.rate__i *');
            $temp = explode("\n", $rates->text());
            $data = array();
            for ($i = 0; $i < count($temp) - 1; $i += 2):
                $data[$temp[$i]] = $temp[$i + 1];
            endfor;
            return $data;
        } catch (Exception $e) {
            return FALSE;
        }
    }

    public static function info_benzin() {
        try {
            ini_set("allow_url_fopen", TRUE);
            $data = file_get_contents('http://forexbrest.info/toplivo/');

            $doc = phpQuery::newDocument($data);
            $rates = $doc->find('.box table');
            $temp = explode("\n", $rates->text());
            $data = array();
            for ($i = 0; $i < count($temp) - 1; $i += 2):
                $data[$temp[$i]] = $temp[$i + 1];
            endfor;
            return $data;
        } catch (Exception $e) {
            return FALSE;
        }
    }

}
