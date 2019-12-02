<script>
jQuery(window).scroll(function(e) {
    if( jQuery('.blog-sub-form').length > 0 ) {
        if(jQuery(window).scrollTop() > jQuery('.blog-sub-form').offset().top - 10){
            e.preventDefault();
            jQuery(".blog-list-view div.list-mtl:hidden").slice(0, 5).show();
        } 
    }
    if( jQuery('.suce-pagination-load-more .x-recent-posts').length > 0 ) {
        var load_more = jQuery('.suce-pagination-load-more').attr('data-suce-post-grid-load-more-count');
        console.log( load_more );
        if( load_more == '' ) {
            load_more = 9;
        }
        if(jQuery(window).scrollTop() > jQuery('.suce-pagination-load-more .x-recent-posts div.active:last').offset().top - 10){
            e.preventDefault(); 
            jQuery('.suce-pagination-load-more .x-recent-posts div:hidden').each( function ( key ){
                jQuery(this).addClass('active in');
                if( key == load_more ) {
                    return false; 
                }
            });
        }
    }
});
 

if(jQuery('.blog-list-view').length > 0){
        jQuery(".blog-list-view div.list-mtl").hide();
        jQuery(".blog-list-view div.list-mtl").slice(0, 7).show();
        jQuery(".blog-post-load-more").on('click', function (e) {
			e.preventDefault();
			jQuery(".blog-list-view div.list-mtl:hidden").slice(0, 5).show();
			if(jQuery(".blog-list-view div.list-mtl:hidden").length == 0){
				jQuery(".blog-post-load-more").hide();
			}
		});
} 
</script>