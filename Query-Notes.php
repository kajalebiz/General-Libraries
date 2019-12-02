Query For Insert User::
 INSERT INTO `databasename`.`wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES ('4', 'demo', MD5('demo'), 'Your Name', 'test@yourdomain.com', 'http://www.test.com/', '2011-06-07 00:00:00', '', '0', 'Your Name');
 
INSERT INTO `databasename`.`cjxwd_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES (NULL, '4', 'cjxwd_capabilities', 'a:1:{s:13:"administrator";s:1:"1";}');
 
INSERT INTO `databasename`.`cjxwd_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES (NULL, '4', 'cjxwd_user_level', '10');




//retrive taxonomy by term_order

SELECT t.*, tt.* FROM wp_terms AS t INNER JOIN wp_term_taxonomy AS tt ON t.term_id = tt.term_id INNER JOIN wp_termmeta t1 ON (t.term_id = t1.term_id AND t1.meta_key = 'term_order') WHERE tt.taxonomy IN ('category') ORDER BY ABS(t1.meta_value) ASC, t.name ASC


$all_selected_taxonomy = esb_pto_get_selected_taxonomies();
    foreach ($all_selected_taxonomy as $tax_key => $tax_value) {
            $terms = get_terms( $tax_value, array( 'hide_empty' => 0 ) );

            if( ! empty( $terms ) ) {
                
                // Search terms for term_order meta
                foreach( $terms as $term ) {
                    $term_order = get_term_meta( $term->term_id, 'term_order', $single = true );

                    // If the term_order is empty then add the metadata
                    // Need to rework this to add default value as increment of the highest previous value
                    if( empty( $term_order ) ) {
                        
                        add_term_meta( $term->term_id, 'term_order', '0', true );
                    }
                }
            }
    }

SELECT t.*, tt.* FROM wp_terms AS t INNER JOIN wp_term_taxonomy AS tt ON t.term_id = tt.term_id INNER JOIN wp_termmeta t1 ON (t.term_id = t1.term_id AND t1.meta_key = 'term_order') WHERE tt.taxonomy IN ('product_cat') GROUP BY t.term_id ORDER BY ABS(t1.meta_value) ASC, t.name ASC