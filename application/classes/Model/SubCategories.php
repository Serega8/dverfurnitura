<?php

defined('SYSPATH') OR die('No direct access allowed.');

class Model_SubCategories extends ORM {

    protected $_table_name = 'sub_categories';
    protected $_belongs_to = array(
        'category' => array(
            'model' => 'Categories',
            'foreign_key' => 'pid',
    ));

    public function get_menu($p = FALSE) {
        $menu = ORM::factory('SubCategories');
        $main = array();
        $sub = array();
        $all = array();
        $res = NULL;
        if (!$p) {
            $cats = $menu->category->where('status', '!=', '1')->find_all();
        } else {
            $cats = $menu->category->find_all();
        }
        foreach ($cats as $cat) {
            $res['name'] = $cat->cat_name;
            $res['status'] = $cat->status;
            $res['id'] = $cat->id;
            $res['translit'] = $cat->translit;
            $main[] = $res;
        }
        $res = NULL;
        $sub_cats = $menu->find_all();
        foreach ($sub_cats as $cat) {
            $res['name'] = $cat->cat_name;
            $res['pid'] = $cat->pid;
            $res['translit'] = $cat->translit;
            $sub[] = $res;
        }
        $all['main_menu'] = $main;
        $all['sub_menu'] = $sub;
        return $all;
    }

    public function get_sub_categories($level2) {
        $sub = array();
        $model = ORM::factory('SubCategories');
        $id = $model->category->where('translit', '=', $level2)->find();
        $data = $model->where('pid', '=', $id)->find_all();
        foreach ($data as $d) {
            $res['name'] = $d->cat_name;
            $res['img'] = $d->img;
            $res['translit'] = $d->translit;
            $sub[] = $res;
        }
        return $sub;
    }

    public function get_info($level3) {
        $sub = array();
        $model = ORM::factory('SubCategories');
        $d = $model->where('translit', '=', $level3)->find();
        $res['name'] = $d->cat_name;
        $res['id'] = $d->id;
        $res['img'] = $d->img;
        $res['translit'] = $d->translit;
        
        return $res;
    }
    
    
    public function add_sub($filename, $level2, $name) {
        $model = ORM::factory('SubCategories');
        $id = $model->category->where('translit','=',$level2)->find();
        $id=$id->id;
        echo $id;
        $model->img = $filename;
        $model->pid = $id;
        $model->cat_name = $name;
        $model->translit = $this->translit($name);
        if ($model->save()) {
            return TRUE;
        }
        else {
            return FALSE;
        }
    }
    
    public function update_sub_info($filename,$id,$name) {
        $model = ORM::factory('SubCategories');
        $model->where('id','=',$id)->find();
        if ($filename) {
            $model->img = $filename;
        }
        $model->cat_name = $name;
        $model->translit = $this->translit($name);
        if ($model->save()) {
            return TRUE;
        }
        else {
            return FALSE;
        }
        
    }

    public static function translit($string) {
        $converter = array(
            'а' => 'a', 'б' => 'b', 'в' => 'v',
            'г' => 'g', 'д' => 'd', 'е' => 'e',
            'ё' => 'e', 'ж' => 'zh', 'з' => 'z',
            'и' => 'i', 'й' => 'y', 'к' => 'k',
            'л' => 'l', 'м' => 'm', 'н' => 'n',
            'о' => 'o', 'п' => 'p', 'р' => 'r',
            'с' => 's', 'т' => 't', 'у' => 'u',
            'ф' => 'f', 'х' => 'h', 'ц' => 'c',
            'ч' => 'ch', 'ш' => 'sh', 'щ' => 'sch',
            'ь' => '\'', 'ы' => 'y', 'ъ' => '\'',
            'э' => 'e', 'ю' => 'yu', 'я' => 'ya',
            'А' => 'A', 'Б' => 'B', 'В' => 'V',
            'Г' => 'G', 'Д' => 'D', 'Е' => 'E',
            'Ё' => 'E', 'Ж' => 'Zh', 'З' => 'Z',
            'И' => 'I', 'Й' => 'Y', 'К' => 'K',
            'Л' => 'L', 'М' => 'M', 'Н' => 'N',
            'О' => 'O', 'П' => 'P', 'Р' => 'R',
            'С' => 'S', 'Т' => 'T', 'У' => 'U',
            'Ф' => 'F', 'Х' => 'H', 'Ц' => 'C',
            'Ч' => 'Ch', 'Ш' => 'Sh', 'Щ' => 'Sch',
            'Ь' => '\'', 'Ы' => 'Y', 'Ъ' => '\'',
            'Э' => 'E', 'Ю' => 'Yu', 'Я' => 'Ya',
        );
        $str = strtr($string, $converter);
        $str = strtolower($str);
        $str = preg_replace('~[^-a-z0-9_]+~u', '-', $str);
        $str = trim($str, "-");
        return $str;
    }

}

//    public function add_translit() {
//         $model = ORM::factory('SubCategories');
//         $res = $model->find_all('cat_name');
//         foreach($res as $i) {
//            echo $i->cat_name."-----------".$this->translit($i->cat_name)."<br>";
//            $model = ORM::factory('SubCategories');
//            $model->where('cat_name', '=', $i->cat_name)->find();;
//            $model->translit =$this->translit($i->cat_name);
//            
//         $model->save();
//         }
//    }
?>