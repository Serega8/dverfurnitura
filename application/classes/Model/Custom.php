<?php

defined('SYSPATH') or die('No direct script access.');

class Model_Custom extends ORM {

    protected $_table_name = 'custom';

    public function get_tree($client = false) {
        if ($client) {
            $op = '=';
            $status = 0;
        } else {
            $op = '!=';
            $status = 3;
        }
        $result = array();
        $m = ORM::factory('Custom');
        $all = $m->where('status', $op, $status)->find_all();
        foreach ($all as $a) {
            $res['id'] = $a->id;
            $res['pid'] = $a->pid;
            $res['name'] = $a->name;
            $res['translit'] = $a->translit;
            $res['status'] = $a->status;
            $res['sort'] = $a->sort;
            $res['level'] = $a->level;
            $result[] = $res;
        }
        return $result;
    }

}

?>