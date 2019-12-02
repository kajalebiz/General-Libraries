<?php


$last_page_url = $_SERVER['HTTP_REFERER'];

 $postsPageId = get_option('page_for_posts');
 
=========================================================================================================
//SEARCH WITH META FIELD USER LIST USER.PHP

//parent category
$courses_parent_terms = get_terms(ld_course_category, 'orderby=count&hide_empty=0&parent=0');

//search user with metafield in user.php
add_action('pre_user_query','yoursite_pre_user_search');
function yoursite_pre_user_search($user_search) {
    global $wpdb;
    if (!isset($_GET['s'])) return;

    //Enter Your Meta Fields To Query
    $search_array = array("feu_user_status", "mobile_field", "first_name", "last_name",'feu_capabilities');

    $user_search->query_from .= " INNER JOIN {$wpdb->usermeta} ON {$wpdb->users}.ID={$wpdb->usermeta}.user_id AND (";
    for($i=0;$i<count($search_array);$i++) {
        if ($i > 0) $user_search->query_from .= " OR ";
            $user_search->query_from .= "{$wpdb->usermeta}.meta_key='" . $search_array[$i] . "'";
        }
    $user_search->query_from .= ")";        
    $custom_where = $wpdb->prepare("{$wpdb->usermeta}.meta_value LIKE '%s'", "%" . $_GET['s'] . "%");
    $user_search->query_where = str_replace('WHERE 1=1 AND (', "WHERE 1=1 AND ({$custom_where} OR ",$user_search->query_where);    
}
======================================================================================================

//SORT WITH META FIELD USER LIST USER.PHP

//sortdata in user.php

add_filter('manage_users_columns', 'fun_add_user_columns');
add_filter('manage_users_sortable_columns', 'fun_add_user_columns');

function fun_add_user_columns($column) {
    $column['mobile_column'] = 'Mobile';
    $column['status_column'] = 'Status';
    $column['role'] = 'Role';
    $column['register_date'] = 'Registration date';
    $column['posts'] = 'Posts';
    return $column;
}

add_filter('manage_users_custom_column', 'fun_add_user_column_data', 10, 3);
add_filter( 'manage_users_sortable_columns', 'rudr_make_registered_column_sortable' );
 
function rudr_make_registered_column_sortable( $columns ) {
	return wp_parse_args( array( 'register_date' => 'registered' ), $columns );
}
function fun_add_user_column_data($val, $column_name, $user_id) {
    $user = get_userdata($user_id);
//    if ($column_name == 'mobile_column') {
//        return get_the_author_meta('mobile_field',$user_id);
//    }
    switch ($column_name) {
        case 'register_date' :
            return $user->user_registered;
            break;
        case 'mobile_column' :
            return $user->mobile_field;
            break;
        case 'status_column' :
            return $user->feu_user_status;
            break;
        default:
    }
}

add_action('pre_get_users', 'fun_before_get_users', 10, 1);

function fun_before_get_users($query) {
    $orderby = $query->get('orderby');
     
    if ('Role' == $orderby) {
        $query->set('meta_key', 'feu_user_level');
        $query->set('orderby', 'role');
    }
    if ('Mobile' == $orderby) {
        $query->set('meta_key', 'mobile_field');
        $query->set('orderby', 'meta_value_num');
    }
    if ('Status' == $orderby) {
        $query->set('meta_key', 'feu_user_status');
        $query->set('orderby', 'meta_value_num');
    }
    return $query;
}
27
==========================================================================================

//cookie get JQUERY

function getCookie1() {
    var nameEQ = name + "=";
    var ca = document.cookie.split(';');
    for (var i = 0; i < ca.length; i++) {
        var c = ca[i];
        while (c.charAt(0) == ' ')
            c = c.substring(1, c.length);
        if (c.indexOf(nameEQ) == 0)
            return c.substring(nameEQ.length, c.length);
        var a = c.split('=');
    }
    return a[1];
}

=================================================================================================

 ---------------------------Single.php-------------------------
 //filter by dates
        $post_type = get_post_type(get_the_ID());
       
        if ($post_type == DEMOTHEME_PRODUCT_POST_TYPE) {
            the_ID();
//            $today = date("Y-m-d");
            $today = '2018-08-25';
            $old_view_count = get_post_meta(get_the_ID(), '_demotheme_view_post_count', TRUE);
            if (!empty($old_view_count)) {
                $old_view_count = unserialize($old_view_count);
                $check_exist = array_key_exists($today, $old_view_count);
                if ($check_exist) {
                    $old_view_count[$today] = $old_view_count[$today] + 1;
                } else {
                    $old_view_count[$today] = 1;
                }
                $serialize_view_count = serialize($old_view_count);
                echo "<pre>";
                print_r($serialize_view_count);
                echo "</pre>";
                update_post_meta(get_the_ID(), '_demotheme_view_post_count', $serialize_view_count);
            }else{
                $view_count=array($today => 1);
                $serialize_view_count= serialize($view_count);
                  echo "<pre>";
                print_r($serialize_view_count);
                echo "</pre>";
                update_post_meta(get_the_ID(), '_demotheme_view_post_count', $serialize_view_count);
            }

//            update_post_meta(get_the_ID(), '_demotheme_view_post_count', $view_count);
        }
        the_content();
?>		
----------------------Filter Page------------------- 

<div class="container">
    <h2>Filter By Date</h2>
    <form class="form-inline" method="post" id="date_filter_form" >
        <div class="form-group">
            <label for="start_date">Start Date:</label>
            <input type="text" class="form-control" id="start_date" placeholder="Y-m-d" name="start_date" value="<?php echo!empty($_POST['start_date']) ? $_POST['start_date'] : ''; ?>">
        </div>
        <div class="form-group">
            <label for="end_date">End Date:</label>
            <input type="text" class="form-control" id="end_date" placeholder="Y-m-d" name="end_date"  value="<?php echo!empty($_POST['end_date']) ? $_POST['end_date'] : ''; ?>">
        </div>
        <button type="button" class="btn btn-default reset">Reset</button>
        <button type="submit" class="btn btn-default submit_btn">Filter</button>
    </form>
</div>

<br>
<table id="customers">
    <tr>
        <th>Title</th>
        <th>View Count</th>
    </tr>
    <?php
    $product_post = new WP_Query(array('post_type' => DEMOTHEME_PRODUCT_POST_TYPE, 'posts_per_page' => -1));
    while ($product_post->have_posts()) {
        $product_post->the_post();
        $total_count = 0;

        if (!empty($_POST['start_date']) && !empty($_POST['end_date'])) {

            global $start_date, $end_date;
            $start_date = $_POST['start_date'];
            $end_date = $_POST['end_date'];

            if ($start_date < $end_date) {
                $dates = array();
                $dates_val = array();
                $old_view_count = get_post_meta(get_the_ID(), '_demotheme_view_post_count', TRUE);
                if (!empty($old_view_count)) {
                    $old_view_count = unserialize($old_view_count);

                    $date_from = $start_date;
                    $date_from = strtotime($date_from); // Convert date to a UNIX timestamp  
                    $date_to = $end_date;
                    $date_to = strtotime($date_to); // Convert date to a UNIX timestamp  
                    for ($i = $date_from; $i <= $date_to; $i += 86400) {
                        $date = date("Y-m-d", $i);
                        array_push($dates, $date);
                        if (array_key_exists($date, $old_view_count)) {
                            array_push($dates_val, $old_view_count[$date]);
                        };
                    }
                    $total_count = array_sum($dates_val);
                }
            }
        } else {

            $old_view_count = get_post_meta(get_the_ID(), '_demotheme_view_post_count', TRUE);
            if (!empty($old_view_count)) {
                $old_view_count = unserialize($old_view_count);
                $total_count = array_sum($old_view_count);
            }
        }
        ?>
        <tr>
            <td><?php echo get_the_title(); ?></td>
            <td><?php echo $total_count; ?></td>
        </tr>
        <?php
    }
    ?>

</table>

<script>

----------------jQUERY for reset------------------
 jQuery(document).on('click','.reset',function (){
            jQuery('#date_filter_form').find('input:text').val('');
            jQuery('.submit_btn').trigger('click');
        });


===========================================================================================================

//gravity   form with anchor tag
	jQuery(document).ready(function() {
 		jQuery(".gchoice_46_1 label").html('I have read and agree to Athleticode's <a href="http://www.athleticode.com/terms-conditions/" target="blank">Terms & Conditions</a>.');
	});


===========================================================================================================

//slick-slider

    
//    jQuery(document).on('click','.slick-next',function(){
//        jQuery(".tmry_wast_to_energy_in_section ul li.slick-active").prevAll().hide();
//        var li_len = jQuery(".tmry_wast_to_energy_in_section ul li.slick-active").nextAll().length;
//        if(li_len == 1)
//        {
//            jQuery(".tmry_wast_to_energy_in_section ul li").first().css('display','inline-block');
//        }else if(li_len == 0)
//        {
//            jQuery(".tmry_wast_to_energy_in_section ul li").first().css('display','inline-block');
//            jQuery(".tmry_wast_to_energy_in_section ul li:eq(2)").css('display','inline-block');
//        }else{
//            jQuery(".tmry_wast_to_energy_in_section ul li.slick-active").next().css('display','inline-block');
//            jQuery(".tmry_wast_to_energy_in_section ul li.slick-active").next().next().css('display','inline-block');
//        }
//    });
</script>

===========================================================================================================
<?php
//REMOVE  img tag from the content and get img src attr from the content
    $content = preg_replace("/<img[^>]+\>/i","", $item->get_description());
    echo $content;
    preg_match_all('/<img[^>]+>/i', $item->get_description(), $imgTags); 
    preg_match('/src="([^"]+)/i',$imgTags[0][0], $imgage);
    $featured_img_src = str_ireplace( 'src="', '',  $imgage[0]);
    echo $featured_img_src;
    
=====================================================================================================
    
//get child pages
    
$args = array(
    'post_type' => 'page',
    'post_parent' => get_the_ID(),
    'order' => 'ASC'
);
$the_query = new WP_Query( $args );
while ( $the_query->have_posts() ) {
    $the_query->the_post();
    echo get_the_title().'<br>';
}
wp_reset_postdata();


===========================================================================================================
?>
<script>
    //js for not allow special charcter and allow dot(.) and not allow 1 to 9
    jQuery(document).ready(function (){
        $("#esb_eu_settings_extension").keypress(function(e) {
            $("#esb_eu_error_msg").remove();
            var k = e.keyCode;
            $return = ((k > 64 && k < 91) || (k > 96 && k < 123) || k == 8 || k == 32 || k == 110 || k == 46 || k == 13 );
            if(!$return) {
                $("<span id='esb_eu_error_msg' class='esb_eu_error_msg'>Special characters not allowed !!!!!</span>").insertAfter($(this));
                return false;
            }
        });
    });
</script>
<?php
========================================================================================================================
//change url add extension to page and post type

add_action( 'current_screen', 'fun_current_screen',10 );

function fun_current_screen( $current_screen ){

    $current_post_type = $current_screen->post_type;
    
    if( $current_post_type != 'attachment' ){
       
        global $wp_rewrite, $esb_eu_settings ;

        if( !empty( $esb_eu_settings['extension'] ) && trim( $esb_eu_settings['extension'] != '' ) ) {

            $extension = $esb_eu_settings['extension'];
            $last_char_extension = substr( $extension, -1);

            if( !strpos( $wp_rewrite->get_page_permastruct(), $extension ) && $last_char_extension != '.' ) {

                preg_match('/\.[^\.]+$/i',$extension,$ext);
                if(!empty($ext)){
                    $extension = $ext[0];
                }else{
                    $extension = '';
                }
                $wp_rewrite->page_structure = $wp_rewrite->page_structure . $extension;
            }else{
		substr_replace( $extension , "", -1);
                preg_match('/\.[^\.]+$/i',$extension,$ext);
                if(!empty($ext)){
                    $extension = $ext[0];
                }else{
                    $extension = '';
                }
                $wp_rewrite->page_structure = $wp_rewrite->page_structure;
            }

            if($last_char_extension != '.'){
                preg_match('/\.[^\.]+$/i',$extension,$ext);
               if(!empty($ext)){
                    $extension = $ext[0];
                }else{
                    $extension = '';
                }
                $permalink_structure = '/%postname%' . $extension;
                update_option( 'permalink_structure', $permalink_structure );
            }else{
		substr_replace( $extension , "", -1);
                preg_match('/\.[^\.]+$/i',$extension,$ext);
                if(!empty($ext)){
                    $extension = $ext[0];
                }else{
                    $extension = '';
                }
                $permalink_structure = '/%postname%';
                update_option( 'permalink_structure', $permalink_structure );
            }
            
            $wp_rewrite->flush_rules();
        }
    }
}
=================================================================================================================
//API KEY weekapauginn
AIzaSyDx_4q61ZmLhky5ZIOKP-f5vYrat7NueRo

====================================================================================================================

//COOKIE IN JQUERY


function createCookie(name,value,days) {
    if (days) {
        var date = new Date();
        date.setTime(date.getTime()+(days*24*60*60*1000));
        var expires = "; expires="+date.toGMTString();
    }
    else var expires = "";
    document.cookie = name+"="+value+expires+"; path=/";
}

function readCookie(name) {
    var nameEQ = name + "=";
    var ca = document.cookie.split(';');
    for(var i=0;i < ca.length;i++) {
        var c = ca[i];
        while (c.charAt(0)==' ') c = c.substring(1,c.length);
        if (c.indexOf(nameEQ) == 0) return c.substring(nameEQ.length,c.length);
    }
    return null;
}

function eraseCookie(name) {
    createCookie(name,"",-1);
}

// Create a Cookie for one week
createCookie('myCookie', 'The value of my cookie...', 7)

// Read the cookie (note this will only work on the page loads after the cookie is created)
var myCookie = readCookie('myCookie');
console.log(myCookie); // Outputs: "The value of my cookie..."

// Erase the cookie (only works on page loads after the cookie was created)
eraseCookie('myCookie');

==========================================================================================
//FACEBOOK FEED
?>
    <div id="fb-root"></div>
    <script>
        (function(d, s, id) {
          var js, fjs = d.getElementsByTagName(s)[0];
          if (d.getElementById(id)) return;
          js = d.createElement(s); js.id = id;
          js.src = "//connect.facebook.net/fi_FI/sdk.js#xfbml=1&version=v2.9";
          fjs.parentNode.insertBefore(js, fjs);
        }(document, 'script', 'facebook-jssdk'));
    </script>
     
    <div class="fb-page" data-href="https://www.facebook.com/sjkkaupunki/" data-tabs="timeline" data-width="600" data-height="658" data-small-header="false" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="true">
        <blockquote cite="https://www.facebook.com/sjkkaupunki/" class="fb-xfbml-parse-ignore">
            <a href="https://www.facebook.com/sjkkaupunki//">
                Sjkkaupunki
            </a>
        </blockquote>
    </div>
    
=====================================================================================================

   <?php 
//add language menu to header
function language_selector(){
    $languages = icl_get_languages('skip_missing=0&orderby=code');
    if(!empty($languages)){
        echo '<ul id="lansel">';
        foreach($languages as $l){
            echo '<li>';
            if(!$l['active']) echo '<a href="'.$l['url'].'">';
            echo ''.$l['language_code'].'';
            if(!$l['active']) echo '</a>';
            echo '</li>';
        }
    }
    echo '</ul>';
}