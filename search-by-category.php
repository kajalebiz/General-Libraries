<?php if( isset( $_REQUEST[ 'search' ] ) && $_REQUEST['search'] != '') { ?>
    <div class="search-list-wrap">
        <div class="container">
            <?php
                $search_cat = !empty( $search_cat ) ? $search_cat->term_id : '';
                $search_val = $_REQUEST[ 'search' ];
                
                $post_search_query = array(
                    'post_type' => RITEKS_TDS_POST_TYPE ,
                    'post_status' => 'publish' ,
                    's' => $search_val,
                    'tax_query' => array(
                        'relation' => 'AND',
                        array(
                            'taxonomy' => RITEKS_TDS_POST_BUSINESS_TAX,
                            'field' => 'id',
                            'terms' => $search_cat,
                        ),
                    )
                );
                
                $categories1 = get_terms( array(RITEKS_TDS_POST_TAX,'tds_tax'), array(
                    'orderby'    => 'count',
                    'hide_empty' => 0,
                    'search'     => $search_val,
                    'fields'     => 'ids', 
                ) );
                
                $category_search_query = array(
                    'post_type' => RITEKS_TDS_POST_TYPE ,
                    'post_status' => 'publish' ,
                    'tax_query' => array(
                        'relation' => 'AND',
                        array(
                            'taxonomy' => RITEKS_TDS_POST_BUSINESS_TAX,
                            'field' => 'id',
                            'terms' => $search_cat,
                        ),
                        array(
                            'taxonomy' => RITEKS_TDS_POST_TAX,
                            'field' => 'term_id',
                            'terms' => $categories1,
                            'operator' => 'IN',
                        )
                    ),
                );
                
                $tds_post = new WP_Query($post_search_query);
                if( $tds_post->post_count < 1 || empty($tds_post->posts) ){
                    $tds_post = new WP_Query($category_search_query);
                }
                    
                    
                    
                    
//                echo "<pre>";
//                print_r($tds_post->posts);
//                echo "</pre>";
                
                if ( $tds_post->have_posts() ) { 
                    while ( $tds_post->have_posts() ) {                        
                       $tds_post->the_post();
                        $id                 = get_the_ID();
                        $title              = get_the_title();
                        if( has_excerpt( $id ) ) {
                            $content    = get_the_excerpt();
                        } else {
                            $content    = get_the_content();
                            $content    = wp_trim_words( $content , 20 );
                        }
                        $post_date          = get_the_date( 'F d,Y' );
                        $featured_image     = get_the_post_thumbnail_url();
                        $post_business_terms= get_the_terms( $id , RITEKS_TDS_POST_BUSINESS_TAX );
                        $post_terms         = get_the_terms( $id , RITEKS_TDS_POST_TAX );
                        $author_id          = get_post_field( 'post_author', $id );
                        $author_name        = get_the_author_meta( 'display_name' , $author_id );
                        $permalink          = get_the_permalink(); 
                        $term_name = '';
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
                        $business_term_name = '';
                        if( !empty( $post_business_terms ) ) {
                            foreach ($post_business_terms as $business_term_key => $business_term_value) {
                                if( !empty( $business_term_name ) )
                                {
                                        $business_term_name = $business_term_name . '/'.$business_term_value->name;
                                }else{
                                        $business_term_name = $business_term_value->name;
                                }
                            }
                        } 
                        ?>
                        <div class="search-post">
                            <?php if( !empty( $title ) ) { ?>
                                <h3>
                                    <a href="<?php echo $permalink;?>"><?php echo $title;?></a>
                                </h3>
                            <?php } ?> 
                            <div class="tags">
                                <?php if( !empty( $author_name ) ) { ?>
                                    <span><?php echo 'By, '.$author_name;?></span>
                                <?php } ?>  
                                <?php if( !empty( $post_date ) ) { ?>
                                    <span><?php echo $post_date;?></span>
                                <?php } ?>
                                <?php if( !empty( $term_name ) ) { ?>
                                    <span><?php echo $term_name;?></span>
                                <?php } ?>  
                                <?php if( !empty( $business_term_name ) ) { ?>
                                    <span><?php echo $business_term_name;?></span>
                                <?php } ?>                           
                            </div>  
                            <div class="search-content">
                                <?php if( !empty( $content ) ) { ?>
                                    <p><?php echo $content;?></p>
                                <?php } ?>
                            </div>
                        </div>
                    <?php }
                } else { ?>
                    <h1 class="page-title"><?php _e( 'Nothing Found', 'riteks' ); ?></h1>
                <?php } 
                wp_reset_query();
            ?>
        </div>
    </div>
<?php } ?>