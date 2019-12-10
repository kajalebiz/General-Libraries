<?php 
//Instagram feed plugin name : Instagram Slider and Carousel Plus Widget

//Plugin

1.    Autoptimize
2.    W3 Total Cache  


.to('.box1', 1, {x:-2,y:180}).to('.box2', 1, {y:240}).to('.box3', 1, {x:-1,y:223}).to('.box4', 1, {y:190,delay:1}).to('.box5', 1, {x:-2,y:155,delay:1}).to('.box6', 1, {x:-5,y:231,delay:1}).to('.box7', 1, {y:280}).to('.box8', 1, {x:2,y:248,delay:1}).to('.box9', 1, {x:-5,y:254.5,delay:1}).to('.box10', 1, {x:-40,y:257,delay:1}).to('.box11', 1, {x:-10,y:232,delay:1})

tl.to('.box1', 1, {duration: 1,y:50 },1).to('.box2', 2, {duration: 1,y:50 },1);

joshua@digitalparc.com

var re = /^\d+(\.\d+)?$/; ?>
-------------------------------------------------------------------------------------------------------
<?php 
// Exit if accessed directly
if ( !defined( 'ABSPATH' ) ) exit;

/**
 * Template Name: About Template
 *
 * @package WordPress
 * @subpackage riteks
 * @since riteks 1.0
 */



get_header();?>

<?php get_footer();?>

-------------------------------------------------------------------------------------------------------
<?php 

WP EVENT MANAGER

define('FS_METHOD', 'direct');

$title_id      = trim(str_replace( ' ', '_', strtolower( $title ) ) );

$banner_image  = !empty( $banner_image ) ? $banner_image['url'] : get_stylesheet_directory_uri().'/images/dummy.jpg';

?>
-------------------------------------------------------------------------------------------------------
<script>
   
    setTimeout(function(){ 
        alert("Hello"); 
    }, 3000);
    
    var hash1 = window.location.hash.substr(1);
    if ( jQuery('#'+hash1).length > 0 ) {
        setTimeout(function() {window.scrollTo(0, 0);},1);
    }
    
    $('html,body').animate({
            scrollTop: jQuery('.facility-content').outerHeight()- jQuery('header').outerHeight() 
    }, '1000');
    
     jQuery(document).on('click','#menu-about-us a',function (){
        var hrefval = jQuery(this).attr('href');
        if( hrefval != '' ){
            var hrefhash = hrefval.split('#');
            var hashval = '';
            if( hrefhash.length > 1 ){
                if( jQuery('#'+hrefhash[1]).length > 0 ){
                    $('html,body').animate({
                        scrollTop: $("#" + hrefhash[1] ).offset().top - jQuery('.navbar').outerHeight()
                    }, '1000');
                    return ;
                }
            }
        }
    });
    
    jQuery(document).ready(function (){ 
        if( jQuery(window).width() < 769 ) {
            setTimeout(function(){ 
                console.log('in');
                jQuery('#menu-top-nav-menu').appendTo('#et_mobile_nav_menu .mobile_nav  #mobile_menu');
            }, 50);
        }
    });
    jQuery(window).resize(function(){
        if( jQuery(window).width() < 769 ) {
            setTimeout(function(){ 
                console.log('in');
                jQuery('#menu-top-nav-menu').appendTo('#et_mobile_nav_menu .mobile_nav  #mobile_menu');
            }, 50);
        } else {
            setTimeout(function(){ 
                console.log('in');
                jQuery('#et_mobile_nav_menu .mobile_nav  #mobile_menu #menu-top-nav-menu').appendTo('.top-header section .menu-top-nav-menu-container');
            }, 50);
        }
    });
    
</script>
-------------------------------------------------------------------------------------------------------
<?php

$project_content    = apply_filters( 'the_content', get_post_field('post_content', $project_id) );

add_filter( 'gform_enable_field_label_visibility_settings', '__return_true' );

?>
-------------------------------------------------------------------------------------------------------

<?php if(function_exists('bcn_display')) {
    bcn_display();
}?>

-------------------------------------------------------------------------------------------------------

<?php if( has_nav_menu( 'primary' ) ) {
    wp_nav_menu( array(
        'theme_location' => 'primary',
        'container'      => 'ul',
        'menu_class'     => 'mainmenu',
    ) );
} ?>
<?php

wp_nav_menu( array(
    'theme_location' => 'primary',
    'container'      => 'ul',
    'menu_class'     => 'mainmenu',
) );

wp_nav_menu( array(
    'menu'          => $left_menu,
    'container'     => 'ul',
    'menu_class'    =>'mainmenu'
) ); 

?>
=============================================================================================
<?php
    $content_cta            = get_field('amb_calender_content_cta', get_the_ID());
    if( !empty( $content_cta ) ) {
        $link_url               = $content_cta['url'];
        $link_title             = $content_cta['title'];
        $link_target            = $content_cta['target'] ? $content_cta['target'] : '_self';
    }
?>
    <?php if( !empty( $link_url ) && !empty( $link_title ) ) { ?>
        <a class="more-button" href="<?php echo ($link_url); ?>" target="<?php echo ($link_target); ?>"><?php echo ($link_title); ?></a>
    <?php } ?>
===================================================================================================
<?php

    $enquire_cta_link_popup = get_field( 'alj_footer_enquire_now_cta_link_popup', 'option' );
    $enquire_cta            = get_field( 'alj_footer_enquire_now_cta', 'option' );
    if( !empty( $enquire_cta ) ) {
        $cta_link_url               = $enquire_cta['url'];
        $cta_link_title             = $enquire_cta['title'];
        $cta_link_target            = $enquire_cta['target'] ? $enquire_cta['target'] : '_self';
    }
    $popup = '';
    if( $enquire_cta_link_popup == 'popup' ) {
        $popup = 'data-fancybox';
    } else {
        $popup = '';
    }
    
?> 

    <?php if( !empty( $cta_link_url ) && !empty( $cta_link_title ) ) { ?>
        <a class="more-button" href="<?php echo ($cta_link_url); ?>" target="<?php echo ($cta_link_target); ?>" <?php echo $popup;?> ><?php echo ($cta_link_title); ?></a>
    <?php } ?>
        
<?php if( !empty( $product_show_all_cta['url'] ) && !empty( $product_show_all_cta['title'] ) ) { ?>
    <a href="<?php echo $product_show_all_cta['url'];?>" target="<?php echo $product_show_all_cta['target'];?>"><?php echo $product_show_all_cta['title'];?></a>
<?php } ?>   
    
-------------------------------------------------------------------------------------------------------

<?php if( is_active_sidebar('footer') ){
    dynamic_sidebar( 'footer' );
} ?>
<?php if( is_active_sidebar('footer') ){ ?>
    <?php dynamic_sidebar( 'footer' ); ?>
<?php } ?>
-------------------------------------------------------------------------------------------------------

<?php if( class_exists('acf') ) {
    $business_unit = get_field( 'riteks_home_add_business_unit_section' );
	
} ?>
-------------------------------------------------------------------------------------------------------

<?php 
add_action('init', 'add_category_tags_to_cpt');
function add_category_tags_to_cpt() {
    register_taxonomy_for_object_type('category', 'your-cpt-name');
    register_taxonomy_for_object_type('post_tag', 'your-cpt-name');
}
?>

------------------------------------------------------------------------------------------------------------

<?php if( !empty( $business_unit ) ) { ?>
    <?php foreach( $business_unit as $business_unit_key => $business_unit_value ) { 
        $business_title                     = $business_unit_value['riteks_home_business_title'];
        $business_image                     = !empty( $business_image ) ? $business_image['url'] : '';
        $business_desc_trim                 = wp_trim_words( $business_desc , 20 );
        ?>
        <?php if( !empty( $business_title )) { ?>
            <h1><?php echo $business_title ; ?></h1>
        <?php } ?>
    <?php } ?>
<?php } ?>

----------------------------------------------------------------------------------------------------------------------- 

<?php if( !empty( $cta_section ) ) { ?>
    <?php foreach( $cta_section as $cta_key => $cta_value ) { 
        $cta_label         = $cta_value['riteks_overview_cta_sec_label']; 
        $cta_link_or_pdf   = $cta_value['riteks_overview_cta_link_or_pdf']; 
        if( $cta_link_or_pdf  == 'pdf' ) {
            $cta_link          = $cta_value['riteks_overview_cta_sec_pdf']; 
            $cta_link          = !empty( $cta_link ) ? $cta_link['url'] : '';
            $target            = TRUE;
        } else {
            $cta_link          = $cta_value['riteks_overview_cta_sec_link']; 
            $cta_link          = !empty( $cta_link ) ? $cta_link : ''; 
            $target            = FALSE;
        }
        ?>
        <?php if( !empty( $cta_label ) && !empty( $cta_link ) ) { ?>
            <a href="<?php echo $cta_link;?>"  <?php echo ( $target == TRUE ) ? 'target="_blank"' : '';?>><?php echo $cta_label;?></a>
        <?php }?>
    <?php } ?>
<?php } ?>

----------------------------------------------------------------------------------------------------------------------- 

<?php if( !empty( $cta_section ) ) { ?>
    <?php foreach( $cta_section as $cta_key => $cta_value ) { 
        $cta_label         = $cta_value['riteks_overview_cta_sec_label']; 
        $cta_link          = $cta_value['riteks_overview_cta_sec_pdf']; ?>
        <?php if( !empty( $cta_label ) && !empty( $cta_link ) ) { ?>
            <a href="<?php echo $cta_link;?>"><?php echo $cta_label;?></a>
        <?php }?>
    <?php } ?>
<?php } ?>

----------------------------------------------------------------------------------------------------------------------- 

<?php if( !empty( $business_title )) { ?>
	<h3><?php echo $business_title ; ?></h3>
<?php } ?>   

----------------------------------------------------------------------------------------------------------------------
        
<?php if( !empty( $product_desc ) ) { ?>
    <p><?php echo $product_desc;?></p>     
<?php } ?>

--------------------------------------------------------------------------------------------------------------------
            
<?php if( !empty( $product_resource_cta_label ) && !empty( $product_resource_cta_link ) ) { ?>
    <a href="<?php echo $product_resource_cta_link;?>"><?php echo $product_resource_cta_label;?></a>
<?php } ?>

---------------------------------------------------------------------------------------------------------------

<?php if( !empty( $business_pop_up_featured_image ) ) { ?>
	<img src='<?php echo $business_pop_up_featured_image;?>'>
<?php } ?>     

------------------------------------------------------------------------------------------------------------

<div class="modal" id="expertcontactModal">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-body">
                <button type="button" class="close" data-dismiss="modal"><img src="http://taskgrids.com/livinghealthylist/wp-content/uploads/2019/03/close-btn.png"></button>
                <h2><?php echo $contact_form_title;?></h2>
                <?php echo $contact_form;?>
            </div>
        </div>
    </div>
</div>

---------------------------------------------------------------------------------------------------------------
<?php 
$video              = get_field( 'livinghealth_expert_upload_video');

$video_subtype      = !empty( $video ) ? $video['subtype'] : '';
$video              = !empty( $video ) ? $video['url'] : '';
?>
<?php if( !empty( $banner_video_thumbnail ) || !empty( $banner_video ) ) { ?>
    <video id="videoId" controls autoplay="" muted="" class="w100 video" poster="<?php echo $banner_video_thumbnail; ?>">
        <?php if( $video_subtype == "mp4" ){ ?>
            <source src="<?php echo $banner_video; ?>" type="video/mp4">
        <?php } ?>
        <?php if( $video_subtype == "webm" ){ ?>
            <source src="<?php echo $banner_video; ?>" type="video/webm">
        <?php } ?>
        <?php if( $video_subtype == "ogg" ){ ?>
            <source src="<?php echo $banner_video; ?>" type="video/ogg">
        <?php } ?>
    </video>
<?php } else { ?>
    <img class="no-brd w100" src="<?php echo ADAVIATION_DUMMY_BANNER_URL;?>">
<?php } ?>  

------------------------------------------------------------------------------------------------------------

<?php if( !empty( $test ) || !empty( $test ) ) { ?>
	
<?php } ?>     

------------------------------------------------------------------------------------------------------------
<?php 
/*
 * add custom select drop down of acf for selecting menus
 */
add_filter('acf/prepare_field/name=sara_choose_menu_in_sidebar', 'acf_dynamic_dropdown_menus');
function acf_dynamic_dropdown_menus($field) {
    $menu['nothing'] = 'Select Options';
    $menus = get_terms( 'nav_menu' );
    $menus = array_combine( wp_list_pluck( $menus, 'term_id' ), wp_list_pluck( $menus, 'name' ) );
    $menus = $menu + $menus;
    $field['choices'] = $menus;
    return $field;
}


add_filter('acf/validate_value/name=4bynor_home_featured_work', 'my_acf_validate_value', 10, 4);

function my_acf_validate_value( $valid, $value, $field, $input ){
    $my_max_posts = 8;
    if (count($value) > $my_max_posts) {
        $valid = 'No more than '.$my_max_posts.' allowed';
    }
    return $valid;
}

?>
------------------------------------------------------------------------------------------------------------
<?php 
function my_post_object_result( $args, $field, $post_id ) {
    $args['meta_key'] = 'livinghealthy_expert_status';
    $args['meta_value'] =  TRUE;
    $args['meta_compare'] = '=';
    $args['meta_type'] = 'BOOLEAN';
    return $args;
}
add_filter('acf/fields/post_object/query/name=livinghealth_fitness_select_experts', 'my_post_object_result', 10, 3);
?>
------------------------------------------------------------------------------------------------------------------------
<?php
/*
 * allow svg
 */
function cc_mime_types($mimes) {
  $mimes['svg'] = 'image/svg+xml';
  return $mimes;
}
add_filter('upload_mimes', 'cc_mime_types');

?>
----------------------------------------------------------------------------------------------------------

<?php
$news_post = new WP_Query( array( 
    'post_type' => RITEKS_NEWS_POST_TYPE,
    'posts_per_page' => 2,
    'post_status'=>'publish'
) );
if( $news_post ) { ?>
    <?php while ( $news_post->have_posts() ) { 
        $news_post->the_post();
        $id                 = get_the_ID();
        $featured_image     = get_the_post_thumbnail_url();
        $title              = get_the_title();
        $content            = get_the_content();
        $content            = wp_trim_words( $content , 15 );
        $post_date          = get_the_date( 'M d,Y' );
        $post_date          = get_the_date('F jS Y' , $id );
        $post_terms         = get_the_terms( $id , 'category');
        $author_id          = get_post_field( 'post_author', $id );
        $author_name        = get_the_author_meta( 'display_name' , $author_id );
        $author_bio         = get_the_author_meta( 'description' , $author_id ); 
        $author_link        = get_author_posts_url( $author_id ); 
        $author_bio         = get_the_author_meta( 'description' , $author_id ); 
        $author_avatar      = get_avatar( $author_id ); 
        $permalink          = get_the_permalink(); 
	if( !empty( $post_terms ) ) {
            foreach ($post_terms as $term_key => $term_value) {
                    if( !empty( $term_name ) )
                    {
                            $term_name = $term_name . '/'.$term_value->name;
                    }else{
                            $term_name = $term_value->name;
                    }
            }
        } 
        ?>
        <?php if( !empty( $title ) ) { ?>
            <h1><?php echo $title;?></h1>
        <?php } ?> 
        <?php if( !empty( $post_date ) ) { ?>
            <small><?php echo $post_date;?></small>
        <?php } ?>  
        <?php if( !empty( $content ) ) { ?>
            <p><?php echo $content;?></p>
        <?php } ?>
        <?php if( !empty( $featured_image ) ) { ?>
            <img src='<?php echo $featured_image;?>'>
        <?php } ?> 
    <?php } ?>
<?php } ?>

--------------------------------------------------------------------------------------------------------------------

<?php if( !empty( $business_pop_up_case_study ) ) { 
                $case_study_id          = $business_pop_up_case_study->ID; 
                $case_study_title       = $business_pop_up_case_study->post_title; 
                $case_study_content     = $business_pop_up_case_study->post_content; 
                $case_study_content     = wp_trim_words( $case_study_content , 20 );
                $featured_image 	= get_the_post_thumbnail_url( $case_study_id );
                $post_date          	= get_the_date('F jS Y' , $case_study_id );
                $post_terms             = get_the_terms( $case_study_id , 'category');
                $author_id              = $business_pop_up_case_study->post_author; 
                $author_name            = get_the_author_meta( 'display_name' , $author_id );
                $author_bio             = get_the_author_meta( 'description' , $author_id ); 
                $author_id          = get_post_field( 'post_author', $id );
                $author_link        = get_author_posts_url( $author_id ); 
                $author_bio         = get_the_author_meta( 'description' , $author_id ); 
                $author_avatar      = get_avatar( $author_id ); 
                $case_study_link        = get_the_permalink( $case_study_id ); 
                if( !empty( $post_terms ) ) {
                     foreach ($post_terms as $term_key => $term_value) {
                        
                        if( !empty( $term_name ) ) {
                            $term_name = $term_name . '/<a href="'.$term_link.'">'.$term_value->name.'</a>';
                        } else {
                            $term_name = '<a href="'.$term_link.'">'.$term_value->name.'</a>';
                        }
                    }
                } 
                ?>
                <?php if( !empty( $case_study_title )) { ?>
                    <h1><?php echo $case_study_title ; ?></h1>
                <?php } ?>
                <?php if( !empty( $case_study_content ) ) { ?>
                    <p><?php echo $case_study_content;?></p>     
                <?php } ?>
                <a href="<?php echo $case_study_link;?>">Continue Reading</a>
<?php } ?>

--------------------------------------------------------------------------------------------------------------------------------


<?php if( $news ) { ?>
    <?php foreach ($news as $news_key => $news_value) { 
        $news_id                 = $news_value->ID;
        $news_featured_image     = get_the_post_thumbnail_url( $news_id );
        $news_title              = get_the_title( $news_id );
        $news_permalink          = get_the_permalink( $news_id ); 
        $news_content            = $news_value->post_content;
        $news_content            = wp_trim_words( $news_content , 15 );
        $news_date               = get_the_date( 'M d,Y',$news_id );
        $news_terms              = get_the_terms( $news_id , ALJ_NEWS_POST_TAX);
        $author_id               = get_post_field( 'post_author', $news_id );
        $author_name             = get_the_author_meta( 'display_name' , $author_id );
        $author_link             = get_author_posts_url( $author_id );
        $term_name = '';
        $term_link = '';
        if( !empty( $news_terms ) ) {
            foreach ($news_terms as $term_key => $term_value) {
                $term_link = get_term_link( $term_value->term_id , ALJ_NEWS_POST_TAX );
                if( !empty( $term_name ) )
                {
                    $term_name = $term_name . '/<a href="'.$term_link.'">'.$term_value->name.'</a>';
                }else{
                    $term_name = '<a href="'.$term_link.'">'.$term_value->name.'</a>';
                }
            }
        } 
	?>
        <?php if( !empty( $post_date ) ) { ?>
            <small><?php echo $post_date;?></small>
        <?php } ?> 
        
        <?php if( !empty( $news_title ) ) { ?>
            <h1><?php echo $news_title;?></h1>
        <?php } ?> 
        <?php if( !empty( $news_content ) ) { ?>
            <p><?php echo $news_content;?></p>
        <?php } ?> 
        <?php if( !empty( $term_name ) ) { ?>
            <small><?php echo __('in','alj'); echo $term_name;?></small>
        <?php } ?>  
        <?php if( !empty( $author_name ) ) { ?>
            <small><a href="<?php echo $author_link;?>"><?php echo __('posted by','alj'); echo $author_name;?></a></small>
        <?php } ?>  
    <?php } ?>
<?php } ?>

--------------------------------------------------------------------------------------------------------------------
<?php 

/* Function which displays your post date in time ago format */
function partycenter_time_ago() {
    return human_time_diff( get_the_time( 'U' ), current_time( 'timestamp' ) ).' '.__( 'ago' );
}

$post_date          = partycenter_time_ago();
 
?>

--------------------------------------------------------------------------------------------------------------------

<?php 

//MULTIPLE SORT QUERY
$apartment_post = new WP_Query( array(
                'post_type'         => WAWERTOWN_APARTMENT_POST_TYPE,
                'posts_per_page'    => -1,
                'post_status'       => 'publish',
//                "orderby" => 'meta_value',
//                "meta_type" => 'NUMERIC',
//                "meta_key" => 'wawer_apartment_no',
//                "order" => 'ASC',
                'meta_query' => array(
                    'relation' => 'AND',
                    'wawer_apartment_floor_no_clause' => array(
                        'key' => 'wawer_apartment_floor_no',
                        'type'=>'NUMERIC'
                        
                    ),
                    'wawer_apartment_no_clause' => array(
                        'key' => 'wawer_apartment_no',
                        'type'=>'NUMERIC'
                    ), 
                ),
                'orderby' => array(
                    'wawer_apartment_floor_no_clause' => 'ASC',
                    'wawer_apartment_no_clause' => 'ASC',
                ),
            ) ); 
?>
--------------------------------------------------------------------------------------------------------------------
<?php 
WPML NOTES

if( !defined( 'TERACON_PORTFOLIO_PAGE_ID' ) ) {
    define( 'TERACON_PORTFOLIO_PAGE_ID', 2192 );
}
$my_home_url                    = apply_filters( 'wpml_home_url', get_option( 'home' ) );
$portfolio_current_lan_id       = icl_object_id( TERACON_PORTFOLIO_PAGE_ID , 'page', false,ICL_LANGUAGE_CODE); 
$portfolio_current_lan_url      = get_the_permalink( $portfolio_current_lan_id );
$portfolio_current_lan_title    = get_the_title( $portfolio_current_lan_id );
if ( defined( 'ICL_LANGUAGE_CODE' ) ) {
    if( ICL_LANGUAGE_CODE == fi )
    {
        echo _e(utf8_encode('T�n��n'),'Divi');?><br><?php echo _e('auki','Divi');
    }else{
        echo _e('Auki','Divi'); ?><br><?php echo _e(utf8_encode('T�n��n'),'Divi');
    }
}                                         
?>
        
 <?php        
        
//add language menu to header
function language_selector(){
    $languages = icl_get_languages('skip_missing=0&orderby=custom');
//    $languages = icl_get_languages('skip_missing=0&orderby=code');
    if(!empty($languages)){
        echo '<ul id="lansel">';
        foreach($languages as $l){
            echo '<li>';
            if(!$l['active']) echo '<a href="'.$l['url'].'">';
            echo ''.ucwords($l['language_code']).'';
            if(!$l['active']) echo '</a>';
            echo '</li>';
        }
    }
    echo '</ul>';
} ?>
------------------------------------------------------------------------------------------------------------------------------
<?php 
    /*
     * shortcode for expert popup
     */
    function livinghealthy_shortcode_category_selection($atts) {
        $id_attr = shortcode_atts( array(), $atts );
        extract($id_attr);
        ob_start();
        $terms = get_terms( array(
            'taxonomy' =>  'category',
            'hide_empty' => false,
        ) );
        ?>  
        <div id="filters" class="button-group filter"> 
            <?php foreach ($terms as $term) {
                $term_id        = $term->term_id;
                $term_name      = $term->name;
                $term_image     = get_field( 'livinghealth_taxonomy_image','term_' . $term_id );
                $term_image     = !empty( $term_image ) ? $term_image['url'] : '';
                $term_link      = get_term_link( $term_id,'category' );
                if( $term->parent == 0 ) { ?>
                    <a href="<?php echo $term_link;?>"><img src="<?php echo $term_image;?>"></a>
                <?php } 
            } ?>
        </div>
            <?php return ob_get_clean();
    }
    add_shortcode('category-selection', 'livinghealthy_shortcode_category_selection');
    ?>
        
-------------------------------------------------------------------------------------------------------------------
<?php 
    $upload_profile     = $_POST['upload_profile'];
    $url = "http://www.jotform.com/uploads/Denisestegall/".$form_id."/".$submission_id."/".$upload_profile;
    echo "<pre>";
    print_r($url);
    echo "</pre>";
    $filename = $upload_profile;
    $wp_filetype = wp_check_filetype( basename($filename), null );
    $wp_upload_dir = wp_upload_dir();

    // Move the uploaded file into the WordPress uploads directory
    $a = move_uploaded_file( $filename, $wp_upload_dir['path']  . '/' . $filename );
    echo "<pre>";
    print_r('test'.$a);
    echo "</pre>";
    $attachment = array(
        'guid' => $wp_upload_dir['url'] . '/' . basename( $filename ), 
        'post_mime_type' => $wp_filetype['type'],
        'post_title' => preg_replace( '/\.[^.]+$/', '', basename( $filename ) ),
        'post_content' => '',
        'post_status' => 'inherit'
    );

    $filename = $wp_upload_dir['path']  . '/' . $filename;

    $attach_id = wp_insert_attachment( $attachment, $filename, 37 );
    require_once( ABSPATH . 'wp-admin/includes/image.php' );
    $attach_data = wp_generate_attachment_metadata( $attach_id, $filename );
    wp_update_attachment_metadata( $attach_id, $attach_data );
    
===========================================================================================
    
    /*
    * disable acf fields
    */
    function disable_acf_load_field( $field ) {
        $field['disabled'] = 1;
        return $field;
    }
    add_filter('acf/load_field/name=wawer_apartment_floor_no', 'disable_acf_load_field');
    add_filter('acf/load_field/name=wawer_apartment_floor_name', 'disable_acf_load_field');
    add_filter('acf/load_field/name=wawer_floor_number_available_apartments_on_floor', 'disable_acf_load_field');
    
===================================================================================================
    
    /*
     * search
     */
    function livinghealthy_searchfilter($query) {
        if ($query->is_search && !is_admin() ) {           
            $query->set('post_type',array( LIVINGHEALTHYLIST_EXPERTS_POST_TYPE ));
        }
        return $query;
    }
    add_filter('pre_get_posts','livinghealthy_searchfilter');
    
=================================================================================   
    
    /*
     * disable store locator plugin update
     */
    function filter_plugin_updates( $value ) {
        unset( $value->response['wp-store-locator/wp-store-locator.php'] );
        return $value;
    }
    add_filter( 'site_transient_update_plugins', 'filter_plugin_updates' );
    
    $externalContent    = file_get_contents('http://checkip.dyndns.com/');
    preg_match('/Current IP Address: \[?([:.0-9a-fA-F]+)\]?/', $externalContent, $m);
    $externalIp = $m[1];
    $ip                 = $externalIp;  //$_SERVER['REMOTE_ADDR']
    $ipInfo             = file_get_contents('http://ip-api.com/json/' . $ip);
    $ipInfo             = json_decode($ipInfo);
    $timezone           = $ipInfo->timezone;
//                $timezone           = get_option('timezone_string');
    $target_time_zone   = new DateTimeZone($timezone);
    $date_time          = new DateTime('now', $target_time_zone);
    $event_timezone_gmt = $date_time->format('P');
    
    
========================================================================================
$video_url      = get_field( 'summer_single_blog_video_url' ,get_the_ID());
if( !empty($video_url) && $post_format == 'video') {
   if ( strpos($video_url,'youtu' ) !== false ) {
        $video_embed_url    = str_replace('watch?v=', 'embed/', $video_url);
        $video_embed_url    = str_replace('//youtu.be/', '//www.youtube.com/embed/', $video_embed_url);
        $video_id           = explode('/', $video_embed_url);
        $video_id           = $video_id[end(array_keys($video_id))];
        $image_url          = 'http://i1.ytimg.com/vi/'. $video_id .'/mqdefault.jpg';
    } else if( strpos($video_url,'vimeo' ) !== false ) {
        $video_embed_url    = str_replace('//vimeo.com/', '//player.vimeo.com/video/', $video_url);
        $video_id = explode('/', $video_embed_url);
        $video_id = $video_id[end(array_keys($video_id))];
        $hash               = unserialize(file_get_contents("http://vimeo.com/api/v2/video/$video_id.php"));
        if( !empty( $hash[0] ) && !empty( $hash[0]['thumbnail_large'] ) ) {
            $image_url = $hash[0]['thumbnail_large'];
        }
    }
    $thumbnail_image =  !empty($thumbnail_url[0]) ? $thumbnail_url[0] : $image_url;
    if( !empty($thumbnail_image) || !empty($video_embed_url) ) { ?>
        <div class="arti_feature_img arti_video">
            <a href="<?php echo $video_embed_url; ?>" data-fancybox>
                <img src="<?php echo $thumbnail_image; ?>" alt="<?php echo $title; ?>" />
            </a>
        </div>
    <?php } 
}

?>
==================================================================================================================
RELATED POST
<?php
$post_terms         = get_the_terms( $id , BLOG_POST_TAX);
$term_idArray = array();
if( !empty( $post_terms ) ) {
    foreach ($post_terms as $term_key => $term_value) {
        array_push($term_idArray, $term_value->term_id);
    }
} 
?>
<?php if( !empty( $term_idArray ) ) {
    $args = array('post_type' => BLOG_POST_TYPE,
        'posts_per_page' => 3,
        'post__not_in'   => array( $id ),
        'tax_query' => array(
            array(
                'taxonomy' => BLOG_POST_TAX,
                'field' => 'id',
                'terms' => $term_idArray,
            ),
        ),
    );
    $blog_post = new WP_Query($args);
    if( $blog_post->have_posts() ) { ?>
        <div class="right">
            <div class="update-section blog">
                <h3><?php _e('Related Posts', 'ambassador' ); ?></h3>
                <?php while ( $blog_post->have_posts() ) { 
                    $blog_post->the_post();
                    $blog_id                 = get_the_ID();
                    $blog_featured_image     = get_the_post_thumbnail_url();
                    $blog_title              = get_the_title();
                    $blog_content            = get_the_content();
                    $blog_content            = wp_trim_words( $blog_content , 15 );
                    $blog_post_date          = get_the_date( 'd M Y' );
                    $blog_permalink          = get_the_permalink(); 
                    ?>
                    <div class="blog-wrapper list-blog-wrapper">
                        <?php if( !empty( $blog_featured_image ) ) { ?>
                            <div class="list-img" style="background-image: url(<?php echo $blog_featured_image; ?>);"></div>
                        <?php } ?> 
                        <div class="blog-discription">
                            <?php if( !empty( $blog_post_date ) ) { ?>
                                <time><i class="far fa-calendar-alt"></i> <?php echo $blog_post_date;?></time>
                            <?php } ?>  
                            <?php if( !empty( $blog_title ) ) { ?>
                               <h3><a href="<?php echo $blog_permalink;?>"><?php echo $blog_title;?></a></h3>
                            <?php } ?> 
                            <?php if( !empty( $blog_content ) ) { ?>
                                <p><?php echo $blog_content;?></p>
                            <?php } ?>
                        </div>
                    </div>
                <?php } ?>
            </div>
        </div>
    <?php } wp_reset_query();
} else {
    echo 'No Results Found. ';
} ?>
============================================================================================================

tag.php

<?php
get_header();
$term_id    = get_queried_object_id();
$term       = get_term_by( 'id', $term_id, 'post_tag');
$paged      = get_query_var( 'paged' ) ? get_query_var('paged') : 1 ;
$blog_post  = new WP_Query( array( 
    'post_type' => 'post',
    'post_status'=>'publish',
    'paged' => $paged,
    'tag__in' => array($term_id)
) );
if( $blog_post ) { ?>
    <div class="container">
        <div class="tag-title">
            <h2 class="entry-title">
                <?php 
                echo __('Tag:','gpd');
                echo $term->name; 
                ?>
            </h2>
        </div>
        <div class="blog_main_section tag-post">
            <?php while ( $blog_post->have_posts() ) { 
                $blog_post->the_post();
                $id                 = get_the_ID();
                $featured_image     = get_the_post_thumbnail_url();
                $title              = get_the_title();
                $permalink          = get_the_permalink(); 
                ?>
                <div class="blog_listing_wrp">
                    <?php if( !empty( $featured_image ) ) { ?>
                       <img src='<?php echo $featured_image;?>'>
                    <?php } ?> 
                    <?php if( !empty( $title ) ) { ?>
                        <h1><?php echo $title;?></h1>
                    <?php } ?>
                    <a href="<?php echo $permalink;?>"><?php echo __('Read More','gpd');?></a>
                </div>
            <?php } ?>
        </div>
    </div>
<?php } ?>
<?php get_footer(); ?>

================================================================================================
<?php
 $meta_query = array( 'relation'=>'AND' );
        $meta_query[] = array(
                'key' => '_event_start_date',
                'value' => date('Y-m-d'),
                'compare' => '>=',
                'type' => 'DATE'
        );
        if( !empty( $event_start_date ) ) {
            $meta_query[] = array(
                            'key'     => '_event_start_date',
                            'value'   => date('Y-m-d', strtotime($event_start_date)),
                            'compare' => '=',
                            'type'    => 'DATE',
                    );
        }
        if( !empty( $event_zipcode ) ) {
            $meta_query[] = array(
                            'key'     => '_event_pincode',
                            'value'   => $event_zipcode,
                            'compare' => '=',
                    );
        }
==========================================================================================================
    
    /*
     * disable store locator plugin update
     */
    function filter_plugin_updates( $value ) {
        unset( $value->response['wp-store-locator/wp-store-locator.php'] );
        return $value;
    }
    add_filter( 'site_transient_update_plugins', 'filter_plugin_updates' );
    
    
    
=================================================================================================================
    $left_banner_image_video = get_field( 'sfc_fp_left_banner_image_or_video', $fp_ID );
    if( $left_banner_image_video == 'image' ) {
        $left_banner_image = get_field( 'sfc_fp_left_banner_image', $fp_ID );
        if( !empty($left_banner_image) ) { ?>
            <div class="banner-left">
                <img src="<?php echo $left_banner_image['url']; ?>"> 
            </div>
        <?php }  
    } else if( $left_banner_image_video == 'youtube_video' ) { 
        $left_banner_youtube_video = get_field( 'sfc_fp_left_banner_youtube_video', $fp_ID );
        $video_url      = $left_banner_youtube_video;
        if( !empty($video_url)) {
            if ( strpos($video_url,'youtu' ) !== false ) {
                $video_embed_url    = str_replace('watch?v=', 'embed/', $video_url);
                $video_embed_url    = str_replace('//youtu.be/', '//www.youtube.com/embed/', $video_embed_url);
                $video_id           = explode('/', $video_embed_url);
                $video_id           = $video_id[end(array_keys($video_id))];
                $image_url          = 'http://i1.ytimg.com/vi/'. $video_id .'/mqdefault.jpg';
            } else if( strpos($video_url,'vimeo' ) !== false ) {
                $video_embed_url    = str_replace('//vimeo.com/', '//player.vimeo.com/video/', $video_url);
                $video_id = explode('/', $video_embed_url);
                $video_id = $video_id[end(array_keys($video_id))];
                $hash               = unserialize(file_get_contents("http://vimeo.com/api/v2/video/$video_id.php"));
                if( !empty( $hash[0] ) && !empty( $hash[0]['thumbnail_large'] ) ) {
                    $image_url = $hash[0]['thumbnail_large'];
                }
            }
            if( !empty($video_embed_url) ) { ?>
                <div class="banner-left">
                    <iframe src="<?php echo $video_embed_url;?>?rel=0" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                </div>
            <?php } 
        }
    } else if( $left_banner_image_video == 'upload_video' ) { 
        $left_banner_video  = get_field( 'sfc_fp_left_banner_upload_video', $fp_ID );
        $video_subtype      = !empty( $left_banner_video ) ? $left_banner_video['subtype'] : '';
        $left_banner_video  = !empty( $left_banner_video ) ? $left_banner_video['url'] : '';
        if( !empty($left_banner_video) ) { ?>
            <div class="banner-left">
                <?php if( !empty( $left_banner_video ) ) { ?>
                <video id="videoId" controls autoplay="" muted="" class="w100 video">
                        <?php if( $video_subtype == "mp4" ){ ?>
                            <source src="<?php echo $left_banner_video; ?>" type="video/mp4">
                        <?php } ?>
                        <?php if( $video_subtype == "webm" ){ ?>
                            <source src="<?php echo $left_banner_video; ?>" type="video/webm">
                        <?php } ?>
                        <?php if( $video_subtype == "ogg" ){ ?>
                            <source src="<?php echo $left_banner_video; ?>" type="video/ogg">
                        <?php } ?>
                    </video>
                <?php } ?>
            </div>
        <?php }  
    } ?>


<?php if( !empty( $gallery ) ) { ?>
    <div class="product-slider">
        <?php foreach( $gallery as $gallery_key => $gallery_value ) { 
            $type       = $gallery_value['type'];
            $caption    = $gallery_value['caption'];
            $url        = $gallery_value['url'];
            if( $type == 'video' ) { 
                $video_subtype           = !empty( $gallery_value ) ? $gallery_value['subtype'] : ''; ?>
                <div class="product-single-slider">
                    <div class="product-single-image">
                        <a href="<?php echo $url; ?>" data-fancybox="images-<?php echo $product_id;?>" data-caption="<?php echo $caption;?>">
                            <video class="w100 video" height="100" width="100">
                                <?php if( $video_subtype == "mp4" ){ ?>
                                    <source src="<?php echo $url; ?>" type="video/mp4">
                                <?php } ?>
                                <?php if( $video_subtype == "webm" ){ ?>
                                    <source src="<?php echo $url; ?>" type="video/webm">
                                <?php } ?>
                                <?php if( $video_subtype == "ogg" ){ ?>
                                    <source src="<?php echo $url; ?>" type="video/ogg">
                                <?php } ?>
                            </video>
                            <span class="video-play"><i class="fal fa-play"></i></span>
                        </a>
                    </div>
                    <?php if( !empty( $caption ) ) { ?>
                        <h5><?php echo $caption;?></h5>
                    <?php } ?> 
                </div> 
            <?php }  else { ?>
                <div class="product-single-slider">
                    <div class="product-single-image" >
                        <a href="<?php echo $url; ?>" data-fancybox="images-<?php echo $product_id;?>" data-caption="<?php echo $caption;?>">
                            <img src="<?php echo $url; ?>" alt="product image">
                        </a>
                    </div>
                    <?php if( !empty( $caption ) ) { ?>
                        <h5><?php echo $caption;?></h5>
                    <?php } ?>  
                </div>
            <?php } ?>
        <?php } ?>
    </div>
<?php } ?>

================================================================================================
<?php 

add_action('admin_head', 'fontawesome_icon_dashboard');
function fontawesome_icon_dashboard() {
    echo "<style type='text/css' media='screen'>
        #adminmenu #menu-posts-client_stories div.wp-menu-image:before {
        font-family:'FontAwesome' !important; content:'\\f2b9'; }	
        </style>";
}