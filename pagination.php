<?php
$paged = get_query_var( 'paged' ) ? get_query_var('paged') : 1 ;
$blog_post = new Wp_Query( array( 'paged' => $paged  ) );
?>
<div class="pagination-section">
            <ul class="pagination justify-content-center">
                <?php
                    $pagignation = paginate_links(array(
                        'current' => $paged,
                        'total' => $blog_post->max_num_pages,
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
<?php
   the_post_navigation( array(
                            'screen_reader_text' => ' ', 
                            'next_text' => '<span class="meta-nav" aria-hidden="true">' . __( 'Previous', 'fourbynorth' ) . '</span> ',
                            'prev_text' => '<span class="meta-nav" aria-hidden="true">' . __( 'Next', 'fourbynorth' ) . '</span> ',
                            
                    ) );