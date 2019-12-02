<?php 
    /*
     * shortcode for expert popup
     */
    function livinghealthy_shortcode_category_selection($atts) {
        $id_attr = shortcode_atts( array(), $atts );
        extract($id_attr);
        ob_start();
        $paged = get_query_var( 'paged' ) ? get_query_var('paged') : 1 ;
        $news_post = new WP_Query( array( 
            'post_type' => RITEKS_NEWS_POST_TYPE,
            'post_status'=>'publish',
            'paged' => $paged 
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
        <div class="pagination-section">
            <ul class="pagination justify-content-center">
                <?php
                    $pagignation = paginate_links(array(
                        'current' => $paged,
                        'total' => $news_post->max_num_pages,
                        'type' => 'array',
                        'prev_text' => '<span aria-hidden="true"><<</span>',
                        'next_text' => '<span aria-hidden="true">>></span>',
                    ));
                    if (!empty($pagignation)) {
                        foreach ($pagignation as $pagignation_val) {
                            $pagignation_val = str_replace('page-numbers', 'page-numbers page-link', $pagignation_val);
                            echo '<li class="page-item">';
                            echo $pagignation_val;
                            echo '</li>';
                        }
                    }
                ?>
            </ul>
        </div>
        <?php return ob_get_clean();
    }
    add_shortcode('category-selection', 'livinghealthy_shortcode_category_selection');