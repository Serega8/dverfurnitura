<?php

defined('SYSPATH') OR die('No direct access allowed.');

class Model_ImagesProd extends ORM {

    protected $_table_name = 'product_images';
    protected $_belongs_to = array(
        'prod' => array(
            'model' => 'Product',
            'foreign_key' => 'pid',
    ));

    public function get_images($level4) {
        $img = array();
        $model = ORM::factory('ImagesProd');
        $id = $model->prod->where('translit', '=', $level4)->find();
        $images = $model->where('pid', '=', $id)->and_where('status', '!=', '1')->find_all();
        foreach ($images as $image) {
            $res['url'] = $image->url;
            $res['id'] = $image->id;
            $img[] = $res;
        }

        return $img;
    }

    public function get_image_id($id) {
        $res = array();
        $path = '';
        $model = ORM::factory('ImagesProd');
        $img = $model->where('pid', '=', $id)->find_all();
        foreach ($img as $k=>$i) {
           if ($k == 0) {
               $path = $i->url;
           }
        }
        return $path;
    }

    public function isset_images($id) {
        $model = ORM::factory('ImagesProd');
        $count = $model->where('pid', '=', $id)->and_where('status', '!=', '1')->count_all();
        return $count;
    }

    public function add_images($filename, $id) {
        $model = ORM::factory('ImagesProd');
        $model->pid = $id;
        $model->url = $filename;
        if ($model->save()) {
            return TRUE;
        } else {
            return FALSE;
        }
    }

    public function delete_images($id) {
        $model = ORM::factory('ImagesProd');
        $model->where('id', '=', $id)->find();
        $model->status = '1';
        if ($model->save()) {
            return TRUE;
        } else {
            return FALSE;
        }
    }

}
?>