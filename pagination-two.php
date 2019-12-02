<?php
/*
 * pagination 1
 */
$paged1 = isset($_GET['paged1']) ? (int) $_GET['paged1'] : 1;
$paged2 = isset($_GET['paged2']) ? (int) $_GET['paged2'] : 1;
$event_args = array(
    'post_type' => ESHARAH_EVENTS_POST_TYPE,
    'posts_per_page' => $sel_no_of_event,
    'meta_query' => array(
        array(
            'key' => 'esharah_ent_ending_date',
            'value' => date("Y-m-d H:i:s"),
            'compare' => '>=',
            'type' => 'DATETIME'
        ),
    ),
    'paged' => $paged1,
);
$event_query = new WP_Query($event_args);
?>

<?php
$paginate_links1 = paginate_links(array(
    'format' => '?paged1=%#%',
    'current' => $paged1,
    'total' => $event_query->max_num_pages,
    'add_args' => array('paged2' => $paged2),
    'prev_text' => __('<i class="fa fa-angle-double-left"></i>'),
    'next_text' => __('<i class="fa fa-angle-double-right"></i>'),
        ));
?>
<?php if ($paginate_links1) { ?>
    <div class="pagination">
        <?php echo $paginate_links1; ?>
    </div>
<?php } ?>












<?php
/*
 * pagination 2
 */
$news_args = array(
    'post_type' => ESHARAH_POST_POST_TYPE,
    'paged' => $paged2,
    'posts_per_page' => $sel_no_of_news,
);
$new_query = new WP_Query($news_args);
?>

<?php
$paginate_links2 = paginate_links(array(
    'format' => '?paged2=%#%',
    'current' => $paged2,
    'total' => $new_query->max_num_pages,
    'add_args' => array('paged1' => $paged1),
    'prev_text' => __('<i class="fa fa-angle-double-left"></i>'),
    'next_text' => __('<i class="fa fa-angle-double-right"></i>'),
        ));
?>
<?php if ($paginate_links2) { ?>
    <div class="pagination">
        <?php echo $paginate_links2; ?>
    </div>
<?php } ?>

