<?php
function my_post_object_result( $args, $field, $post_id ) {
        // Search based on custom field
        $args['meta_key'] = 'livinghealthy_expert_status';
        $args['meta_value'] =  TRUE;
        $args['meta_compare'] = '=';
        $args['meta_type'] = 'BOOLEAN';
        // return
        return $args;
    }
    add_filter('acf/fields/post_object/query/name=livinghealth_fitness_select_experts', 'my_post_object_result', 10, 3);
    