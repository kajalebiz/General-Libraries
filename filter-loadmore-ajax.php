<?php 

    // Load public script
	global $wp_query; 
	wp_enqueue_script( 'project38-public-script', get_template_directory_uri() . '/js/public-script.js', array(), NULL );
        wp_localize_script( 'project38-public-script', 'PROJECT38PUBLIC', array(
		'ajaxurl'       => site_url() . '/wp-admin/admin-ajax.php', // WordPress AJAX
		'current_page'  => get_query_var( 'paged' ) ? get_query_var('paged') : 1,
		'max_page'      => $wp_query->max_num_pages
	) );
	
?>

			<?php
            $terms = get_terms( array(
                'taxonomy' =>  'category',
                'hide_empty' => false,
            ) );
            if( !empty( $terms ) ) { ?>
                <div id="filter-blog" class="tabing-title magazine-tabing-title">
                    <div class="tabs-title">
                        <a class="button active project-terms" id ="all_blogs"><?php _e(hebrev ("×œ×›×”"),"project38"); ?></a>
                    </div>
                    
                        <?php foreach ($terms as $term) {
                            $term_id   = $term->term_id;
                            $term_name = $term->name; ?>
                            <div class="tabs-title">
                                <a class="button project-terms"  id ="<?php echo $term_id;?>"><?php echo $term_name; ?></a>
                            </div>
                        <?php } ?>
                </div>   
			<?php } ?>
			<div class="magazine-listing">
				<div class="container">
					<div class="info-inner-content text-right row isotope">
						<?php filter_blog_post_ajax_handler(); ?>
					</div>
				</div>
			</div>
			
			<script>
			
				jQuery(document).ready(function ($) {

					$(document).on('click','#filter-blog .tabs-title a',function(){
						jQuery('#filter-blog .tabs-title a').removeClass('active');
						jQuery(this).addClass('active');
						var button = $(this);
						var btn_txt = button.text();
						var term_id = $(this).attr('id');
						jQuery('.magazine-listing .container .info-inner-content').html('');

						data = {
							action  : 'filter_blog_post',
							term_id : term_id,
						};
						$.ajax({
							url : PROJECT38PUBLIC.ajaxurl, 
							data : data,
							type : 'POST',
							beforeSend : function ( xhr ) {
								jQuery(button).html('Loading...');
							},
							success : function( data ){
								jQuery(button).html(btn_txt);
								jQuery('.magazine-listing .container .info-inner-content').html(data);
							}
						});
					});
					
					$(document).on('click','.loadmore',function(){
						var button = $(this);
						var btn_txt = button.text();
						cu_page = jQuery(this).attr('data-page');
						term_id = jQuery(this).attr('data-id');
						data = {
								'action': 'filter_blog_post',
								'page' : parseInt( cu_page ),
								term_id : term_id
						};
						$.ajax({
								url : PROJECT38PUBLIC.ajaxurl, 
								data : data,
								type : 'POST',
								beforeSend : function ( xhr ) {
										button.text('Loading...');
								},
								success : function( data ){
									if( data ) {
										button.text( btn_txt ).before(data);
										jQuery('.loadmore').first().remove();
										button.attr('data-page', parseInt( cu_page ) + 1  );
									} else {
										button.remove();
									}
								}
						});
					});
					
				});
				
			</script>
<?php
	/*
	 * filter by category or loadmore
	 */
	function filter_blog_post_ajax_handler()
	{
		$default_posts_per_page = get_option( 'posts_per_page' );
		$default_posts_per_page = 2;
		if( isset( $_POST['page'] ) && !empty( $_POST['page'] ) ) {
			$paged          = $_POST['page'] + 1;
		} else {
			$paged = 1;
		}
		if( isset( $_POST['term_id'] ) && !empty( $_POST['term_id'] ) )
		{   
			$term_id   = $_POST['term_id'];
			if( $term_id == 'all_blogs' )
			{
				$args = array('post_type' => 'post','posts_per_page' => $default_posts_per_page,'post_status' => 'publish','paged' => $paged);
				$args_count = array('post_type' => 'post','post_status' => 'publish');
			}else{
				$args = array('post_type' => 'post',
					'posts_per_page' => $default_posts_per_page,
					'tax_query' => array(
						array(
							'taxonomy' => 'category',
							'field' => 'id',
							'terms' => $term_id,
						),
					),
					'post_status' => 'publish',
					'paged' => $paged
				);
				$args_count = array('post_type' => 'post',
					'tax_query' => array(
						array(
							'taxonomy' => 'category',
							'field' => 'id',
							'terms' => $term_id,
						),
					),
					'post_status' => 'publish',
				);
			}
		}else{
			$args = array( 'post_type' => 'post','posts_per_page' => $default_posts_per_page,'post_status' => 'publish','paged' => $paged );
			$args_count = array( 'post_type' => 'post','post_status' => 'publish');
		}
		$project_posts = new WP_Query($args);
		$project_posts_count = new WP_Query($args_count);
		$count_post     = $project_posts_count->post_count;
		$max_page       = ceil($count_post / $default_posts_per_page);
		if( $project_posts->have_posts() ) {
			while($project_posts->have_posts()) { 
				
				$project_posts->the_post();
				$title          =   get_the_title();
				$featured_image =   get_the_post_thumbnail_url();
				$content        =   get_the_content();
				$permalink      =   get_the_permalink();
				$post_categories = get_the_category();
				$categories = !empty( $post_categories ) ? implode(", ",array_column($post_categories,'name')) : "";
				$featured_image = !empty( $featured_image ) ? $featured_image : get_template_directory_uri().'/images/placeholder.jpg';
				?>
				<div class="info-comman-part">
					<a href="<?php echo $permalink; ?>" class="info-comman-part-inner">
						<?php if( !empty( $featured_image ) ) { ?>
							<div class="info-img">
								<img src="<?php echo $featured_image; ?>">
							</div>
						<?php } ?>  
						<div class="info-content">
								<span class="txt-orange post-category">
									<?php echo get_the_date("d.m.Y")." / ".$categories; ?>
								</span>
								<?php if( !empty( $title ) ) { ?>
									<h6><?php the_title(); ?></h6>
								<?php } ?>  
								<p></p>
								<p>
									<?php echo get_the_excerpt(); ?>
								</p>
								<p></p>
						</div>
					</a>
				</div>
				<?php 
			}
			if ($max_page != $paged) { ?>
				<div class="loadmore" data-page="1" data-id="<?php echo $term_id;?>">
					<?php echo __('Load More','project38');?>
				</div>
			<?php }
		}
		wp_reset_query();
		if ( isset( $_POST['term_id'] ) || !empty( $_POST['term_id'] ) || !empty( $_POST['page'] ) )
		{
			exit();
		}
	}

	add_action('wp_ajax_filter_blog_post', 'filter_blog_post_ajax_handler');
	add_action('wp_ajax_nopriv_filter_blog_post', 'filter_blog_post_ajax_handler');
?>

	