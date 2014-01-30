<?php

defined('SYSPATH') OR die('No direct access allowed.');

class Model_Info extends ORM {

    protected $_table_name = 'information';
    public function get_all() {
        $info = array();
        $model = ORM::factory('Info');
        $all = $model->where('status','!=','1')->find_all();
        foreach($all as $one) {
            $res['name']=$one->name;
            $res['id']=$one->id;
            $res['descr']=$one->descr;
            $res['date']=$one->date;
            $res['status']=$one->status;
            $info[]=$res;
        }
        return $info;
    }
    
    public function delete_info($id) {
        $model = ORM::factory('Info');
        $model->where('id','=',$id)->find();
        $model->status = '1';
        if ($model->save()) {
            return true;
        }
        else {
            return false;
        }
    }
    
    
    public function add_info($data) {
        $model = ORM::factory('Info');
        $model->name = $data['name'];
        $model->descr = $data['descr'];
        if ($model->save()) {
            return true;
        }
        else {
            return false;
        }
    }
    
    
    
    public function update_info($data) {
        $model = ORM::factory('Info');
        $model->where('id','=',$data['id_info'])->find();
        $model->name = $data['name'];
        $model->descr = $data['descr'];
        if ($model->save()) {
            return true;
        }
        else {
            return false;
        }
    }
}
?>