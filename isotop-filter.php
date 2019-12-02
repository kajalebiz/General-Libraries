/*
* isotop js path : Z:\TRAINING 2018\Kajal Dhameliya\BackUp\livinghealthylist\28-3-2019\livinghealthylist\js
*/



<?php 
$blog_id = get_option( 'page_for_posts' );
if( class_exists('acf') ) {
    $banner_bg_image    = get_field( 'livinghealthy_insight_banner_background_image',$blog_id );
    $banner_desc        = get_field( 'livinghealthy_insight_description',$blog_id );
    $banner_bg_image = !empty( $banner_bg_image ) ? $banner_bg_image['url'] : get_stylesheet_directory_uri().'/images/dummy.jpg';
} ?>
<section class="insight mt-0 clearfix">
    <div class="insight-inner mt-0" style="background-image: url('<?php echo $banner_bg_image;?>');">
        <div class="mask">
            <div class="bluredBackground" style="background-image: url('<?php echo $banner_bg_image;?>');"></div>
        </div>
        <div class="insight-desc-wrap">
            <div class="insight-desc">
                <?php if( !empty( $banner_desc ) ) { ?>
                    <p><?php echo $banner_desc;?></p>     
                <?php } ?>
            </div>
        </div>
    </div>
</section>
  
<div class="container">
    <div id="filters" class="button-group filter"> 
        <?php foreach ($terms as $term) {
            $term_id   = $term->term_id;
            $term_name = $term->name;
            $term_image = get_field( 'livinghealth_taxonomy_image','term_' . $term_id );
            
            $term_image = !empty( $term_image ) ? $term_image['url'] : get_stylesheet_directory_uri().'/images/dummy.jpg';
            if( $term->parent == 0 ) { ?>
                <button class="button" data-filter=".<?php echo $term_id;?>" id="<?php echo $term_name;?>"><img src="<?php echo $term_image;?>"></button>
            <?php } 
        } ?>
    </div>
    <div class="isotope">
        <?php
            $args = array(
                'post_type' => 'post', 
                'posts_per_page' => -1, 
                'post_status'=>'publish'
            );
            $blog_posts = new WP_Query($args);
            if( $blog_posts->have_posts() ) {
                while($blog_posts->have_posts()) { 
                    $blog_posts->the_post();
                    $id             = get_the_ID();
                    $title          = get_the_title();
                    $featured_image = get_the_post_thumbnail_url( $id );
                    $featured_image = !empty($featured_image) ? $featured_image : get_stylesheet_directory_uri().'/images/dummy.jpg';
                    $permalink      = get_the_permalink();
                    $post_terms     = get_the_terms( get_the_ID() , 'category' );
                    $filtness_post  = get_field( 'livinghealthyl_post_select_fitness_category' );
                    $filtness_post_title  = get_the_title( $filtness_post );
                    if( !empty( $post_terms ) )
                    {
                        $post_term_id = '';
                        $post_cat = '';
                        foreach ($post_terms as $term_key => $term_value) {
                            if( $post_term_id == '' || $post_cat == '' )
                            {
                                $post_cat = $term_value->name;
                                $post_term_id = $term_value->term_id; 
                                $term_color = get_field( 'livinghealth_taxonomy_select_color','term_' . $post_term_id );
                            } else {
                                $post_cat1 = $term_value->name;
                                $post_term_id1  = $term_value->term_id;
                                $post_term_id   = $post_term_id . ' ' .$post_term_id1 ;
                                $term_color = get_field( 'livinghealth_taxonomy_select_color','term_' . $post_term_id );
                                $post_cat   =  $post_cat1 ;
                            }
                        }
                    }
                    if( !empty( $featured_image ) )  { ?>
                        <div class="element-item <?php echo $post_term_id.' '.$term_color;?> " data-category="<?php echo $post_term_id;?>">
                            <a href="<?php echo $permalink;?>">
                                <img height="100" width="100" src="<?php echo $featured_image; ?>" alt="<?php the_title(); ?>" />
                                <div class="element-desc">
                                    <p><?php echo $title;?></p>
                                    <?php if( !empty( $filtness_post_title ) ) { ?>
                                        <span><?php echo $filtness_post_title;?></span>
                                    <?php } ?>  
                                </div>
                            </a>
                        </div>
                    <?php } 
                }
            }
            wp_reset_query();
        ?>
    </div>
</div>


<script>
jQuery( document ).ready( function($) {
    /*
     * init Isotope
     */ 
    container = jQuery('.isotope').isotope({
        itemSelector: '.element-item',
        layoutMode: 'fitRows',
    });
    /*
     * bind filter button click
     */
    jQuery('#filters').on('click', 'button', function() {
        var filterValue = jQuery(this).attr('data-filter');
        var filterValueName = jQuery(this).attr('id');
        if( jQuery(this).hasClass('filtername') ) {
            jQuery(this).removeClass('filtername');
            if( filterValueName != 'all' )
            {
                jQuery('.element-item h5').text('');
            }
        }
        container.isotope({
            filter: filterValue
        });
    });

    /*
     * change is-checked class on buttons
     */ 
    jQuery('.button-group').each(function(i, buttonGroup) {
        var $buttonGroup = jQuery(buttonGroup);
        $buttonGroup.on('click', 'button', function() {
            $buttonGroup.find('.is-checked').removeClass('is-checked');
            $buttonGroup.find('.filtername').removeClass('filtername');
            jQuery(this).addClass('is-checked');
            jQuery(this).addClass('filtername');
        });
    });
	
	
	//****************************
    // Isotope Load more button
    //****************************
    initShow = 4; //number of items loaded on init & onclick load more button
    counter = initShow; //counter for load more button
    iso = container.data('isotope'); // get Isotope instance


    //append load more button
    container.after('<button id="load-more"> Load More</button>');

    if (jQuery('body').hasClass('page-template-gallery-template'))
    {
        loadMore(initShow); //execute function onload
    }

    //when load more button clicked
    $("#load-more").click(function () {
        if ($('#filters').data('clicked')) {
            //when filter button clicked, set initial value for counter
            counter = initShow;
            $('#filters').data('clicked', false);
        } else {
            counter = counter;
        }
        ;

        counter = counter + initShow;

        loadMore(counter);
    });

    //when filter button clicked
    $("#filters").click(function () {
        $(this).data('clicked', true);
        loadMore(initShow);
    });


});

</script>