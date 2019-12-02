
<?php
 global $wp_query; 
 // Load public script
	wp_enqueue_script( 'fourbynorth-public-script', get_template_directory_uri() . '/js/public-script.js', array(), time() );
        
        wp_localize_script( 'fourbynorth-public-script', 'loadmore_params', array(
		'ajaxurl'       => site_url() . '/wp-admin/admin-ajax.php', // WordPress AJAX
		'current_page'  => get_query_var( 'paged' ) ? get_query_var('paged') : 1,
		'max_page'      => $wp_query->max_num_pages
	) );
?>	
	
<section class="blog-section inner-page">
    <div class="container">
        <h1 class="page-header"><?php single_post_title(); ?></h1>
        <div class="row ml-lg-0">
            <?php loadmore_ajax_handler(); ?>
        </div>
    </div>
</section>

<script>

    $(document).on('click','.loadmore',function(){
        var button = $(this);
        var button_txt = button.text();
        cu_page = jQuery(this).attr('data-page');
        data = {
                'action': 'loadmore',
                'page' : parseInt( cu_page ),
        };
        $.ajax({
                url : loadmore_params.ajaxurl, 
                data : data,
                type : 'POST',
                beforeSend : function ( xhr ) {
                        button.text('Loading...');
                },
                success : function( data ){
                    if( data ) {
                        button.text( button_txt ).before(data);
                        jQuery('.loadmore').first().remove();
                        button.attr('data-page', parseInt( cu_page ) + 1  );
                    } else {
                        button.remove();
                    }
                }
        });
    });
	</script>
<?php	
	
function loadmore_ajax_handler(){
    $default_posts_per_page = get_option( 'posts_per_page' );
    if( !empty( $_POST['page'] ) ) {
        $paged = $_POST['page'] + 1;
    }
    $count_post     = wp_count_posts()->publish;
    $max_page       = ceil($count_post / $default_posts_per_page);
    $blog_post      = new WP_Query(array(
        'post_type'         => 'post',
        'posts_per_page'    => !empty($post_per_page) ? $post_per_page : $default_posts_per_page,
        'paged'             => $paged,
        'post_status'=>'publish'
    ));
    if( $blog_post->have_posts() ) {
        $title              =   get_the_title();
        $blog_id            =   get_option('page_for_posts');
        $permalink          =   get_the_permalink();
        $post_date          =   date('F jS Y');
        $featured_image     =   get_the_post_thumbnail_url();
        while ( $blog_post->have_posts() ) { 
            $blog_post->the_post();
            if( !empty( $featured_image ) )  {?>
                <img src="<?php echo $featured_image;?>">
            <?php } ?> 
            <?php if( !empty( $title ) ) { ?>
                <a href="<?php echo $permalink;?>"><h3><?php echo $title;?></h3></a>
            <?php } ?>
            <?php if( !empty( $content ) ) { ?>
                <p><?php echo $content;?></p>
            <?php } ?>
            <a href="<?php echo $permalink;?>">Read More</a>
            <hr>
        <?php } 
        if ($max_page != $paged) {
            echo '<div class="loadmore" data-page="1">Load More Post</div>';
        }
    }
    if( $_POST ) {
        die; 
    }
}
add_action('wp_ajax_loadmore', 'loadmore_ajax_handler');
add_action('wp_ajax_nopriv_loadmore', 'loadmore_ajax_handler');