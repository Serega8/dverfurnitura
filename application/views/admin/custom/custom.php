<?function fn_category_tree($array, $parent) {
    $result = '';
    foreach ($array as $value) {
        $has_children = false;
        if ($value['pid'] == $parent) {
            if ($has_children == false) {
                $has_children = true;
                $result .= '<ul>';
            }
            $result .= '<li> <a href=/admin/custom/' . $value['translit'] . '>' . $value['name'] . '</a>';
            $result .= fn_category_tree($array, $value['id']);
            $result .= '</li>';
        }

        if ($has_children == true)
            $result .= '</ul>';
    }
    return $result;
}































echo fn_category_tree($tree, 0);
//    function tr($array) {
//        $tree = $array;
//        $str = '';
//        foreach ($tree as $key => $node) {
//            if ($key == 0) {
//                $str.='<ul><li>' . $node['name'];
//            } else {
//                $str.='</li><li>' . $node['name'];
//            }
//            $count = 0;
//            foreach ($array as $k => $node2) {
//                if ($node['id'] == $node2['pid']) {
//                    if (abs($node['level'] - $node2['level']) == 1) {
//                        if ($count == 0) {
//                            $str.='<ul><li>' . $node2['name'] . '</li>';
//                        } else {
//                            $str.='<li>' . $node2['name'] . '</li>';
//                        }
//                        $count++;
//                    }
//                }
//                if ($k == count($node2) - 1) {
//                    $str.='</ul>';
//                }
//            }
//        }
//        $str.='</li></ul>';
//        print($str);
//    }
//
//    tr($tree);
?>
<style>
    ul {
        margin-left:50px;
    }
</style>