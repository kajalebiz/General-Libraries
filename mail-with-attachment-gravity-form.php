
<?php 
//* Attaching file to the form notification user email
    //* in gform_notification_7, the number 7 is the FORM ID
    //* This snippet works with the newer version of Gravity Forms too
    add_filter('gform_notification_2', 'add_attachment_pdf', 10, 3); //target form id 7, change to your form id
    function add_attachment_pdf( $notification, $form, $entry ) {
        $pdf            = get_field( 'wawer_apartment_upload_pdf',$entry[4] ); 
        $pdf_url        = !empty( $pdf ) ? $pdf['url'] : '';
        $upload         = wp_upload_dir();
        $upload_path    = $upload['path'];
        $attachment     = $upload_path . '/'.$pdf['filename'];
        GFCommon::log_debug( __METHOD__ . '(): file to be attached: ' . $attachment );
        if ( file_exists( $attachment ) ) {
            $notification['attachments']   = rgar( $notification, 'attachments', array() );
            $notification['attachments'][] = $attachment;
            GFCommon::log_debug( __METHOD__ . '(): file added to attachments list: ' . print_r( $notification['attachments'], 1 ) );
        } else {
            GFCommon::log_debug( __METHOD__ . '(): not attaching; file does not exist.' );
        }
        return $notification;
    }