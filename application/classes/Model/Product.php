<?php

defined('SYSPATH') OR die('No direct access allowed.');

class Model_Product extends ORM {
    protected $_primary_key ='id';
    protected $_table_name = 'products_info';
    protected $_belongs_to = array(
        'sub_category' => array(
            'model' => 'SubCategories',
            'foreign_key' => 'pid',
        ),
        'brands' => array(
            'model' => 'Brands',
            'foreign_key' => 'brand',
    ));
    public function get_products($level3) {
        $all = array();
        $new = array();
        $model = ORM::factory('Product');
        $id = $model->sub_category->where('translit', '=', $level3)->and_where('status', '!=', '1')->find();
        $id = $id->id;
        $all = array();
        $products = $model->where('pid', '=', $id)->and_where('status', '!=', '1')->find_all();

        $active_brands = $model->brands->where('status', '!=', '1')->find_all();
        foreach ($active_brands as $ab) {
            $active_ids[] = $ab->id;
            $active_name[] = $ab->name;
        }

        foreach ($products as $product) {
            $pr['name'] = $product->name;
            $pr['id'] = $product->id;
            $pr['translit'] = $product->translit;
            $pr['img'] = $product->img;
            $pr['brand_id'] = $product->brand;
            $pr['brand_name'] = null;
            if (in_array($pr['brand_id'], $active_ids)) {
                $all[] = $pr;
            }
        }
        
        $model_images = ORM::factory('ImagesProd');
        
        
        foreach ($all as $k=>$v) {
            foreach ($active_ids as $key2=>$ai) {
                if ($v['brand_id'] == $ai) {
                    $v['brand_name'] = $active_name[$key2];
                    $v['img'] = $model_images->get_image_id($v['id']);
                    $new[$v['brand_name']][] = $v;
                }
            }
        }

        return $new;
    }

    public function get_name_translit_for_brands($params) {
        $model = ORM::factory('Product');
        $cat_name = $model->sub_category->category->where('translit', '=', $params['level3'])->find();
        $cat_name = $cat_name->cat_name;
        $sub_cat_name = $model->sub_category->where('translit', '=', $params['level4'])->find();
        $sub_cat_name = $sub_cat_name->cat_name;
        $product_name = $model->where('translit', '=', $params['level5'])->find();
        $product_name = $product_name->name;
        $params['level2_rus'] = NULL;
        $params['level3_rus'] = $cat_name;
        $params['level4_rus'] = $sub_cat_name;
        $params['level5_rus'] = $product_name;
        return $params;
    }

    public function get_name_translit($params) {
        $model = ORM::factory('Product');
        $cat_name = $model->sub_category->category->where('translit', '=', $params['level2'])->find();
        $cat_name = $cat_name->cat_name;
        $sub_cat_name = $model->sub_category->where('translit', '=', $params['level3'])->find();
        $sub_cat_name = $sub_cat_name->cat_name;
        $product_name = $model->where('translit', '=', $params['level4'])->find();
        $product_name = $product_name->name;
        $params['level2_rus'] = $cat_name;
        $params['level3_rus'] = $sub_cat_name;
        $params['level4_rus'] = $product_name;
        return $params;
    }

    public function get_product_info($level4) {
        $res = array();
        $model = ORM::factory('Product');
        $data = $model->where('translit', '=', $level4)->and_where('status','!=','1')->find();
        $res['name'] = $data->name;
        $res['id'] = $data->id;
        $res['descr'] = $data->descr;
        $res['img'] = $data->img;
        $res['cost'] = $data->cost;
        $res['brand'] = $data->brand;
        $res['mejosevoe_rasst'] = $data->mejosevoe_rasst;
        $res['front_planka'] = $data->front_planka;
        $res['vhod'] = $data->vhod;
        $res['zapiranie_kluchom'] = $data->zapiranie_kluchom;
        
        $id = $model->brands->where('id', '=', $res['brand']);
        
        $res['brand'] = $id->name;
        
        return $res;
    }

    public function brand_cat($level2) {
        $first_res = array();
        $sec_res = array();
        $third_res = array();
        $model = ORM::factory('Product');
        $id = $model->brands->where('name', '=', $level2)->find();
        $id_sub_cat = $model->where('brand', '=', $id)->find_all();
        foreach ($id_sub_cat as $item) {
            $res[] = $item->pid;
            $first_res = $res;
        }
        $first_res = array_unique($first_res);
        if (empty($first_res)) return array();
        $id_cat = $model->sub_category->where('id', 'IN', $first_res)->find_all();
        foreach ($id_cat as $item) {
            $res[] = $item->pid;
            $sec_res = $res;
        }
        $sec_res = array_unique($sec_res);
    if (empty($sec_res)) return array();
        $cat = $model->sub_category->category->where('id', 'IN', $sec_res)->find_all();
        foreach ($cat as $item) {
            $res['name'] = $item->cat_name;
            $res['img'] = $item->img;
            $res['translit'] = $item->translit;
            $third_res[] = $res;
        }
        return $third_res;
    }

    public function brand_sub_cat($level2, $level3) {
        $first_res = array();
        $sec_res = array();
        $model = ORM::factory('Product');
        $id = $model->brands->where('name', '=', $level2)->and_where('status','!=','1')->find();
        $id_sub_cat = $model->where('brand', '=', $id)->and_where('status','!=','1')->find_all();
        foreach ($id_sub_cat as $item) {
            $res[] = $item->pid;
            $first_res = $res;
        }
        $first_res = array_unique($first_res);

        $id = $model->sub_category->category->where('translit', '=', $level3)->and_where('status','!=','1')->find();
        $id = $id->id;
        $id_cat = $model->sub_category->where('id', 'IN', $first_res)->and_where('pid', '=', $id)->find_all();
        foreach ($id_cat as $item) {
            $res['name'] = $item->cat_name;
            $res['img'] = $item->img;
            $res['translit'] = $item->translit;
            $sec_res[] = $res;
        }
        return $sec_res;
    }

    public function brand_products($level2, $level4) {
        $first_res = array();
        $sec_res = array();
        $model = ORM::factory('Product');
        $id = $model->sub_category->where('translit', '=', $level4)->and_where('status','!=','1')->find();
        $pid = $id->id;
        
        $brand = $model->brands->where('name', '=', $level2)->and_where('status','!=','1')->find();
        $brand_name = $brand->name;
        $brand_id = $brand->id;
         $model_images = ORM::factory('ImagesProd');
        $id_sub_cat = $model->where('brand', '=', $brand_id)->and_where('pid', '=', $pid)->and_where('status','!=','1')->find_all();
        foreach ($id_sub_cat as $item) {
            $res['id'] = $item->id;
            $res['name'] = $item->name;
            $res['img'] = $model_images->get_image_id($res['id']);
            $res['brand_id'] = $item->brand;
            $res['translit'] = $item->translit;
            $res['brand_name'] =$brand_name;
            $sec_res[] = $res;
        }
        return $sec_res;
    }

    public function update_info_product($data_form) {
        
        $model = ORM::factory('Product');
        
        $model->where('id', '=', $data_form['id'])->find();
        $model->name = $data_form['name'];
        $model->translit = $this->translit($data_form['name']);
        $model->descr = $data_form['descr'];
        $model->brand = $data_form['brand'];
        $model->mejosevoe_rasst = $data_form['mejosevoe_rasst'];
        $model->vhod = $data_form['vhod'];
        $model->zapiranie_kluchom = $data_form['zapiranie_kluchom'];
        $model->front_planka = $data_form['front_planka'];
        
        if ($model->save()) {
            return TRUE;
        } else {
            return FALSE;
        }
    }
    
    
    public function add_info_product($data_form) {
        
        $model = ORM::factory('Product');
        $model->pid = $data_form['id'];
        $model->name = $data_form['name'];
        $model->translit = $this->translit($data_form['name']);
        $model->descr = $data_form['descr'];
        $model->brand = $data_form['brand'];
        $model->mejosevoe_rasst = $data_form['mejosevoe_rasst'];
        $model->vhod = $data_form['vhod'];
        $model->zapiranie_kluchom = $data_form['zapiranie_kluchom'];
        $model->front_planka = $data_form['front_planka'];
        
        if ($model->save()) {
            return TRUE;
        } else {
            return FALSE;
        }
    }
    
    
    

//        public function add_translit() {
//         $model = ORM::factory('Product');
//         $res = $model->find_all('name');
//         foreach($res as $i) {
//            echo $i->name."-----------".$this->translit($i->name)."<br>";
//            $model = ORM::factory('Product');
//            $model->where('name', '=', $i->name)->find();;
//            $model->translit =$this->translit($i->name);
//            
//         $model->save();
//         }
//    }







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

?>