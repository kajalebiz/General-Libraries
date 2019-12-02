
<?php 
 global $wp_query; 
// Load public script
	wp_enqueue_script( 'fourbynorth-public-script', get_template_directory_uri() . '/js/public-script.js', array(), time() );
        
        wp_localize_script( 'fourbynorth-public-script', 'loadmore_params', array(
		'ajaxurl'       => site_url() . '/wp-admin/admin-ajax.php', // WordPress AJAX
		'current_page'  => get_query_var( 'paged' ) ? get_query_var('paged') : 1,
		'max_page'      => $wp_query->max_num_pages
	) );
	
	
	
function filter_project_post_ajax_handler()
{
    if( isset( $_POST['term_id'] ) && !empty( $_POST['term_id'] ) )
    {   
        $term_id   = $_POST['term_id'];
        if( $term_id == 'all_projects' )
        {
            $args = array('post_type' => FOURBYNORTH_PROJECT_POST_TYPE,'posts_per_page' => -1,'post_status'=>'publish');
        }else{
            $args = array('post_type' => FOURBYNORTH_PROJECT_POST_TYPE,
                'posts_per_page' => -1,
                'tax_query' => array(
                    array(
                        'taxonomy' => FOURBYNORTH_PROJECT_CATEGORY,
                        'field' => 'id',
                        'terms' => $term_id,
                    ),
                ),
                'post_status'=>'publish'
            );
        }
    }else{
        $args = array( 'post_type' => FOURBYNORTH_PROJECT_POST_TYPE,'posts_per_page' => -1 ,'post_status'=>'publish');
    }
    $project_posts = new WP_Query($args);
    
    if( $project_posts->have_posts() ) {
        while($project_posts->have_posts()) { 
            
            $project_posts->the_post();
            $title          =   get_the_title();
            $featured_image =   get_the_post_thumbnail_url();
            $content        =   get_the_content();
            $permalink      =   get_the_permalink();
            
            if( class_exists('acf') ) {
                $company_name = get_field( '4bynor_project_company_name', get_the_ID() );
            }
            
            if( !empty( $featured_image ) )  {?>
                <img src="<?php echo $featured_image;?>">
            <?php } ?> 
            <?php if( !empty( $title ) ) { ?>
                <a href="<?php echo $permalink;?>"><h3><?php echo $title;?></h3></a>
            <?php } ?>
            <?php if( !empty( $content ) ) { ?>
                <p><?php echo $content;?></p>
            <?php } ?>
            <?php if( !empty( $company_name ) ) { ?>
                <p><?php echo $company_name;?></p>
            <?php } ?>
            <a href="<?php echo $permalink;?>">Read More</a>
            <hr>
            <?php
        }
    }
    wp_reset_query();
    if ( isset( $_POST['term_id'] ) && !empty( $_POST['term_id'] ) )
    {
        exit();
    }
}

add_action('wp_ajax_filter_project_post', 'filter_project_post_ajax_handler');
add_action('wp_ajax_nopriv_filter_project_post', 'filter_project_post_ajax_handler');
?>
            
<script>
  $(document).on('click','.project-terms',function(){
        var button = $(this);
        var btn_txt = button.text();
        var term_id = $(this).attr('id');
        jQuery('.past-work').html('');

        data = {
            action  : 'filter_project_post',
            term_id : term_id
        };
        $.ajax({
            url : loadmore_params.ajaxurl, 
            data : data,
            type : 'POST',
            beforeSend : function ( xhr ) {
                jQuery(button).html('Loading...');
            },
            success : function( data ){
                jQuery(button).html(btn_txt);
                jQuery('.past-work').html(data);
            }
        });
    });
</script>
	
	
<?php 	
	
    if( fourbynorth_check_acf_activation()){
        $past_work_title = get_field( '4bynor_past_work_heading' );
    }
    $terms = get_terms( array(
        'taxonomy' =>  FOURBYNORTH_PROJECT_CATEGORY,
        'hide_empty' => false,
    ) );
    
?>

<div class="past-work-wrap">
    <div class="contanier">
        <div class="button-group filters-button-group" id="filters">
            <button class="button is-checked project-terms" id ="all_projects">Show all</button>
            <?php if( !empty( $terms ) ) {
                foreach ($terms as $term) {
                    $term_id   = $term->term_id;
                    $term_name = $term->name; ?>
                        <button class="button project-terms"  id ="<?php echo $term_id;?>"><?php echo $term_name; ?></button>
                <?php }
            } ?>
        </div>    
        <div class="past-work">
            <?php filter_project_post_ajax_handler(); ?>
        </div>  
    </div>
</div>








