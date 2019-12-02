<?php 
	map key ------ AIzaSyB4xMYIuIjTBlXiJMAXjn04hnTwa5Cbn7M
	
	wp_enqueue_script( 'sara-map-api-script', 'https://maps.googleapis.com/maps/api/js?key='.$map_api_key, array(), NULL );
	wp_enqueue_script( 'sara-markerwithlabel-script', get_template_directory_uri() . '/js/markerwithlabel.js', array(), NULL );
	
    function my_acf_init() {
            $map_api_key = get_field('sara_general_google_map_api_key','option');	
            acf_update_setting('google_api_key', $map_api_key );
    }
    add_action('acf/init', 'my_acf_init');
	
	<div id='map1'></div>
	
    /*
     * shortcode for google map
     */
    function sara_shortcode_google_map($atts) {
        ob_start();
        $map_location       = get_field('sara_general_map_add_map','option');
        $map_infowindow     = get_field('sara_general_map_add_map_infowindow','option'); 
        $map_infowindow     = preg_replace('/(\r\n|\r|\n)+/', " ", $map_infowindow); ?>
            <div class="google-map">
                <div id="map1" style="height: 300px"></div>
                <?php if( !empty($map_location)){ ?>
                        <script>
                            jQuery( document ).ready(function() {
                                google.maps.event.addDomListener(window, 'load', init);
                                var stockholm1 = new google.maps.LatLng(<?php echo $map_location['lat'] ?>, <?php echo $map_location['lng'] ?>);
                                var parliament1 = new google.maps.LatLng(<?php echo $map_location['lat'] ?>, <?php echo $map_location['lng'] ?>);
                                var iconBase = "<?php echo get_template_directory_uri() . '/images/' ?>";
                                var map1;
                                var marker1;
                                function init() {
                                    var mapOptions = {
                                        zoom: 15,
                                        center: stockholm1,
                                        scaleControl: false,
                                        scrollwheel: false
                                    };
                                    var mapElement = document.getElementById('map1');
                                    var info_txt =  '<?php echo $map_infowindow;?>';
                                    var contentString ='<?php echo "<strong>".get_bloginfo()."</strong><hr>";?>'+info_txt;
                                    map1 = new google.maps.Map(mapElement, mapOptions);
                                    marker1 = new MarkerWithLabel({ //new google.maps.Marker
                                        map: map1,
                                        draggable: false,
                                        animation: google.maps.Animation.DROP,
                                        position: parliament1,
                                        icon: '',
                                        title: '<?php echo $map_location['address']; ?>',
                                        labelContent: '<span><?php echo $map_location['address']; ?></span>',
                                        labelAnchor: new google.maps.Point(-12, 20),
                                        labelClass: ""
                                    });
                                    infowindow = new google.maps.InfoWindow({
                                        content: contentString
                                    });
                                    infowindow.open(map1, marker1);
                                    google.maps.event.addListener(marker1, 'click', function() {
                                        infowindow.open(map1, marker1);
                                    });
                                }
                            });
                        </script>
                <?php } ?>
            </div>
        <?php return ob_get_clean();
    }
    add_shortcode('google-map', 'sara_shortcode_google_map');
	
	