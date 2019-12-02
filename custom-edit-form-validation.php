<script>
    /*
     * Edit Form Ajax
     */
    jQuery('#paperfig-edit-user').on('click', function (e) {
        jQuery('.error-box').hide();
        jQuery('.error-message-text').html( '' );
        var userid = jQuery(document).find('#paperfig-user-id').val();
        var usermail = jQuery(document).find('#paperfig-user-email').val();
        var fname = jQuery(document).find('#paperfig-edit-fname').val();
        var lname = jQuery(document).find('#paperfig-edit-lname').val();
        var email = jQuery(document).find('#paperfig-edit-email').val();
        var mobile = jQuery(document).find('#paperfig-edit-mobile').val();
        var add1 = jQuery(document).find('#paperfig-edit-add1').val();
        var add2 = jQuery(document).find('#paperfig-edit-add2').val();
        var city = jQuery(document).find('#paperfig-edit-city').val();
        var country = jQuery(document).find('#paperfig-edit-country').val();
        var wp_nonce = jQuery(document).find('#paperfig_edit_user_nonce').val();
        jQuery.ajax({
            url: PAPERFIGPUBLIC.ajaxurl,
            type: 'POST',
            data: {
                action : 'edit_user_action',
                userid : userid,
                usermail : usermail,
                fname : fname,
                lname : lname,
                email : email,
                mobile : mobile,
                add1 : add1,
                add2 : add2,
                city : city,
                country : country,
                wp_nonce : wp_nonce
            },
            beforeSend : function ( xhr ) {
                jQuery('#paperfig-edit-user').text('Loading...');
            },
            success: function (response) {
                jQuery('#paperfig-edit-user').text('SIGN UP');
                var obj = jQuery.parseJSON( response );
                if(obj.error == 1){ //has errors
                    jQuery('.error-box').show();
                    jQuery('.error-message-text').html( obj.notice );
                }
                else{
                    jQuery("#myModal-edit-user").modal('show');
                }
            }
        });
    });
	</script>
	<?php
	
	
	
/*
 * SignUp Ajax
 */
add_action('wp_ajax_register_user_action','fun_paperfig_register_ajax');
add_action('wp_ajax_nopriv_register_user_action','fun_paperfig_register_ajax');
function fun_paperfig_register_ajax(){
    // Verify nonce
    if( !isset( $_POST['wp_nonce'] ) || !wp_verify_nonce( $_POST['wp_nonce'], 'paperfig_new_user_signup' ) )
      die( 'Ooops, something went wrong, please try again later.' );
    
    $signup_redirect    = get_field( 'paperfig_option_signup_redirect' , 'option' );
    $all_req_error      = get_field( 'paperfig_signup_all_field_err' , 'option' );
    $email_valid_error  = get_field( 'paperfig_signup_email_valid' , 'option' );
    $mobile_valid_error = get_field( 'paperfig_signup_mobile_valid' , 'option' );
    $already_Reg_error  = get_field( 'paperfig_signup_already_emai_err' , 'option' );
    
    $username   = '';
    $fname      = $_POST['fname'];
    $lname      = $_POST['lname'];
    $email      = $_POST['email'];
    $mobile     = $_POST['mobile'];
    $add1       = $_POST['add1'];
    $add2       = $_POST['add2'];
    $city       = $_POST['city'];
    $country    = $_POST['country'];
    $nonce      = $_POST['wp_nonce'];
    $password   = wp_generate_password( 10, true, true );
    
    if( empty( $fname ) || empty( $lname ) || empty( $email ) || empty( $mobile ) || empty( $add1 ) || empty( $add2 ) || empty( $city ) || empty( $country )){
        $return_data = array(
                'error' => 1,
                'notice' => $all_req_error
        );
        echo json_encode($return_data);
    }
    
    elseif(!valid_email( $email )){
        $return_data = array(
                'error' => 1,
                'notice' => $email_valid_error
        );
        echo json_encode($return_data);
    }
    elseif(!ctype_digit ( $mobile )){
        $return_data = array(
                'error' => 1,
                'notice' => $mobile_valid_error
        );
        echo json_encode($return_data);
    }
    
    elseif( !empty( $fname ) && !empty( $lname ) && valid_email( $email ) && !empty( $mobile ) && !empty( $add1 ) && !empty( $add2 ) && !empty( $city ) && !empty( $country )){
        try {
            $new_customer = wc_create_new_customer( sanitize_email( $email ), wc_clean( $username ), $password );
            if ( is_wp_error( $new_customer ) ) {
                $message_code = $new_customer->get_error_code();
                if($message_code == 'registration-error-email-exists'){
                    $message  = $already_Reg_error;
                }
                $return_data = array(
                        'error' => 1,
                        'notice' => $message,
                );
                echo json_encode($return_data);    
            }
            else{
                if( !empty( $new_customer ) ){
                    /*
                     * Send New User Password Notification
                     */
                    wp_new_user_notification( $new_customer , null ,'user' );
                    /*
                     * Add Extra Field
                     */
                    update_user_meta( $new_customer ,'first_name' , $fname );
                    update_user_meta( $new_customer ,'last_name' , $lname );
                    update_user_meta( $new_customer ,'billing_first_name' , $fname );
                    update_user_meta( $new_customer ,'billing_last_name' , $lname );
                    update_user_meta( $new_customer ,'billing_address_1' , $add1 );
                    update_user_meta( $new_customer ,'billing_address_2' , $add2 );
                    update_user_meta( $new_customer ,'billing_city' , $city );
                    update_user_meta( $new_customer ,'billing_country' , $country );
                    update_user_meta( $new_customer ,'billing_phone' , $mobile );
                    update_user_meta( $new_customer ,'billing_email' , $email );
                }
                if ( apply_filters( 'woocommerce_registration_auth_new_customer', true, $new_customer ) ) {
                    wc_set_customer_auth_cookie( $new_customer );
                }
                if ( !empty( $signup_redirect ) ) {
                    $redirect = wp_sanitize_redirect( $signup_redirect );
                } else {
                    $redirect = wc_get_page_permalink( 'myaccount' );
                }
                $redirect = wp_validate_redirect( apply_filters( 'woocommerce_login_redirect', remove_query_arg( 'wc_error', $redirect ), $user ), wc_get_page_permalink( 'myaccount' ) );
                $return_data = array(
                        'error' => 0,
                        'notice' => '',
                        'redirect' => $redirect
                );
                echo json_encode($return_data);
            }
        } catch ( Exception $e ) {
            $error = $e->getMessage();
            $return_data = array(
                   'error' => 1,
                   'notice' => $error
            );
            echo json_encode($return_data);
        }
    }
   exit(); 
}
