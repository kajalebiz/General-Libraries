<?php
    add_action('constant_contact_after_email_send','livinghealthy_before_constant_contact_email_send',4,10);
    function livinghealthy_before_constant_contact_email_send( $form_id, $submitted_email , $destination_email, $content) {
        
        $mail_from      = get_field( 'livinghealthy_general_mail_from','option');
        $mail_subject   = get_field( 'livinghealthy_general_mail_subject','option');
        $mail_message   = get_field( 'livinghealthy_general_thank_you_message_mail_body','option');
        $mail_pdf       = get_field( 'livinghealthy_general_mail_pdf_attachment','option');
        $pdf_url        = $mail_pdf['url'];
        $upload         = wp_upload_dir();
        $upload_path    = $upload['basedir'];
        $image_folder   = explode("/uploads",$pdf_url);
        $attachment     = $upload_path .''.$image_folder[1];
        $headers = $mail_from."\n";
        $headers .= "Content-Type: text/html\n";
        $result     = wp_mail($submitted_email, $mail_subject, $mail_message, $headers,$attachment);
        return true;
    }
	==============================================================================================================
	
	gravity form mail attahment
	
	//* Attaching file to the form notification user email
    //* in gform_notification_7, the number 7 is the FORM ID
    //* This snippet works with the newer version of Gravity Forms too
    add_filter('gform_notification_2', 'add_attachment_pdf', 10, 3); //target form id 7, change to your form id
    function add_attachment_pdf( $notification, $form, $entry ) {
        $pdf            = get_field( 'wawer_apartment_upload_pdf',$entry[4] ); 
        $pdf_url        = !empty( $pdf ) ? $pdf['url'] : '';
        $upload         = wp_upload_dir();
        $upload_path    = $upload['basedir'];
        $image_folder   = explode("/uploads",$pdf_url);
        $attachment     = $upload_path .''.$image_folder[1];
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
	
	============================================================================================================
	
	contact form 7 custom mail
	
	/*
	 * Send mail 3 setting
	 */
	add_action('wpcf7_before_send_mail', function($cf7)
	{
		$wpcf = WPCF7_ContactForm::get_current();
		$form_id = $wpcf->id;
		$field_serialize            = get_post_meta($form_id, 'enfold_cf7_form_field_array', TRUE);
		$original_field             = unserialize( $field_serialize );
		$form_from_email            = get_post_meta($form_id, 'enfold-wpcf7-mail3-from', TRUE);
		$form_to_email              = get_post_meta($form_id, 'enfold-wpcf7-mail3-recipient', TRUE);
		$form_mail_subject          = get_post_meta($form_id, 'enfold-wpcf7-mail3-subject', TRUE);
		$form_mail_addit_header     = get_post_meta($form_id, 'enfold-wpcf7-mail3-addition-header', TRUE);
		$form_mail_body             = get_post_meta($form_id, 'enfold-wpcf7-mail3-body', TRUE);
		$form_mail_attachment       = get_post_meta($form_id, 'enfold-wpcf7-mail3-attachment', TRUE);
		
		foreach ($original_field as $key => $field_name) {
			$field_name_ori = '['.$field_name.']';
			if( !empty( $_POST[$field_name] ) ) {
				$form_from_email = str_replace( $field_name_ori , $_POST[$field_name] , $form_from_email );
			}
		}    
		foreach ($original_field as $key => $field_name) {
			$field_name_ori = '['.$field_name.']';
			if( !empty( $_POST[$field_name] ) ) {
				$form_to_email = str_replace( $field_name_ori , $_POST[$field_name] , $form_to_email );
			}
		}    
		foreach ($original_field as $key => $field_name) {
			$field_name_ori = '['.$field_name.']';
			if( !empty( $_POST[$field_name] ) ) {
				$form_mail_body = str_replace( $field_name_ori , $_POST[$field_name] , $form_mail_body );
			}
		}  
		foreach ($original_field as $key => $field_name) {
			$field_name_ori = '['.$field_name.']';
			if( !empty( $_POST[$field_name] ) ) {
				$form_mail_addit_header = str_replace( $field_name_ori , $_POST[$field_name] , $form_mail_addit_header );
			}
		}  
		$template = $form_mail_attachment;
		$attachments = array();
		if ( $submission = WPCF7_Submission::get_instance() ) {
			$uploaded_files = $submission->uploaded_files();
			foreach ( (array) $uploaded_files as $name => $path ) {
				if ( false !== strpos( $template, "[${name}]" )
				and ! empty( $path ) ) {
					$attachments[] = $path;
				}
			}
		}
		foreach ( explode( "\n", $template ) as $line ) {
			$line = trim( $line );
			if ( '[' == substr( $line, 0, 1 ) ) {
				continue;
			}
			$path = path_join( WP_CONTENT_DIR, $line );
			if ( ! wpcf7_is_file_path_in_content_dir( $path ) ) {
				continue;
			}
			if ( is_readable( $path )
			and is_file( $path ) ) {
				$attachments[] = $path;
			}
		}
		$headers = "From: $form_from_email\n";
		$headers .= "Content-Type: text/html\n";
		$headers .= "X-WPCF7-Content-Type: text/html\n";

		if ( $form_mail_addit_header ) {
			$headers .= $form_mail_addit_header . "\n";
		}
		$recipient = enfold_strip_newline( $form_to_email );
		
		$result     = wp_mail($recipient, $form_mail_subject, $form_mail_body, $headers,$attachments);
		if( $result == 1 ){
			update_post_meta( $form_id, 'esb_abandoned_flag' ,'true');
		} else {
			return false;
		}
		return $wpcf;
	});
	function enfold_strip_newline( $str ) {
		$str = (string) $str;
		$str = str_replace( array( "\r", "\n" ), '', $str );
		return trim( $str );
	}
	