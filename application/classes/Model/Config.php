<?php

defined('SYSPATH') OR die('No direct access allowed.');

class Model_Config extends ORM {

    protected $_table_name = 'config';

    public function setValue($key, $value)
    {
        $config = ORM::factory('Config')
                ->where('key', '=', $key)
                ->find();
        $config->key = $key;
        $config->value = serialize($value);
        $config->save();
    }

    public function getValue($key)
    {
        $config = ORM::factory('Config')
                ->where('key', '=', $key)
                ->find();
        if (!$config->loaded()):
            return NULL;
        endif;
        return unserialize($config->value);
    }

    public function free($key)
    {
        $config = ORM::factory('Config')
                ->where('key', '=', $key)
                ->find();
        if (!$config->loaded()):
            return;
        endif;
        $config->delete();
    }

}
