<?php
//add_action('init','test_test');
function test_test(){
    if( !is_admin() ){
    $args = array(
	'post_type' => 'fourbynorth_project',
        'posts_per_page' => '-1',
        'post_status' => 'any'
    );
    
    $the_query = new WP_Query( $args );

    // The Loop
    if ( $the_query->have_posts() ) {
            echo '<ul>';
            while ( $the_query->have_posts() ) { $the_query->the_post();
                $post_id = get_the_ID();
                $content = get_post_field('post_content', $post_id);
                $content = preg_replace('/\[\/?fusion.*?\]/', '', $content);
                $content = preg_replace('/\[\/?one_full.*?\]/', '', $content);
                $content = preg_replace('/\[\/?slider.*?\]/', '', $content);
                $content = preg_replace('/\[\/?slide.*?\]/', '', $content);
                $my_post = array(
                  'ID'           => $post_id,
                  'post_title'   => get_the_title( $post_id ),
                  'post_content' => $content,
                );
                echo "<pre>";
                print_r( $my_post );
                echo "</pre>";
                wp_update_post( $my_post );
            }
            echo '</ul>';
            /* Restore original Post Data */
            wp_reset_postdata();
    }

    
    }
}
//add_filter('the_content', 'remove_fusion_shortcodes', 20, 1);
function remove_fusion_shortcodes( $content ) {
    $content = preg_replace('/\[\/?fusion.*?\]/', '', $content);
    $content = preg_replace('/\[\/?one_full.*?\]/', '', $content);
    $content = preg_replace('/\[\/?slider.*?\]/', '', $content);
    $content = preg_replace('/\[\/?slide.*?\]/', '', $content);
    return $content;
}