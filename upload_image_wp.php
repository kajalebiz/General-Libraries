<?php 
    $upload_profile     = $_POST['upload_profile'];
    $url = "http://www.jotform.com/uploads/Denisestegall/".$form_id."/".$submission_id."/".$upload_profile;
    echo "<pre>";
    print_r($url);
    echo "</pre>";
    $filename = $upload_profile;
    $wp_filetype = wp_check_filetype( basename($filename), null );
    $wp_upload_dir = wp_upload_dir();

    // Move the uploaded file into the WordPress uploads directory
    $a = move_uploaded_file( $filename, $wp_upload_dir['path']  . '/' . $filename );
    echo "<pre>";
    print_r('test'.$a);
    echo "</pre>";
    $attachment = array(
        'guid' => $wp_upload_dir['url'] . '/' . basename( $filename ), 
        'post_mime_type' => $wp_filetype['type'],
        'post_title' => preg_replace( '/\.[^.]+$/', '', basename( $filename ) ),
        'post_content' => '',
        'post_status' => 'inherit'
    );

    $filename = $wp_upload_dir['path']  . '/' . $filename;

    $attach_id = wp_insert_attachment( $attachment, $filename, 37 );
    require_once( ABSPATH . 'wp-admin/includes/image.php' );
    $attach_data = wp_generate_attachment_metadata( $attach_id, $filename );
    wp_update_attachment_metadata( $attach_id, $attach_data );