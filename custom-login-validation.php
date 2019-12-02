 <script>
    /*
     * Login Form Ajax
     */
    jQuery('#paperfig-login-btn').on('click', function (e) {
        jQuery('.error-box').hide();
        jQuery('.error-message-text').html( '' );
        var username = jQuery(document).find('#paperfig-login-uname').val();
        var password = jQuery(document).find('#paperfig-login-pass').val();
        var wp_nonce = jQuery(document).find('#paperfig_new_user_nonce_login').val();
        jQuery.ajax({
            url: PAPERFIGPUBLIC.ajaxurl,
            type: 'POST',
            data: {
                action : 'login_user_action',
                username : username,
                password : password,
                wp_nonce : wp_nonce
            },
            beforeSend : function ( xhr ) {
                jQuery('#paperfig-login-btn').text('Loading...');
            },
            success: function (response) {
                jQuery('#paperfig-login-btn').text('LOGIN');
                var obj = jQuery.parseJSON( response );
                if(obj.error == 1){ //has errors
                    jQuery('.error-box').show();
                    jQuery('.error-message-text').html( obj.notice );
                }
                else{
                    setTimeout(function(){
                            window.location = obj.redirect;
                    },300)
                }
            }
        });
    });
    </script>
	
	
	
	<?php 
	
	/*
 * Login Check Ajax
 */
add_action('wp_ajax_login_user_action','fun_paperfig_login_ajax');
add_action('wp_ajax_nopriv_login_user_action','fun_paperfig_login_ajax');
function fun_paperfig_login_ajax(){
    // Verify nonce
    if( !isset( $_POST['wp_nonce'] ) || !wp_verify_nonce( $_POST['wp_nonce'], 'paperfig_new_user_login' ) )
      die( 'Ooops, something went wrong, please try again later.' );
    
    $login_redirect = get_field( 'paperfig_option_login_redirect' , 'option' );
    $empty_uname    = get_field( 'paperfig_login_er_username' , 'option' );
    $empty_pass     = get_field( 'paperfig_login_er_password' , 'option' );
    $inc_uname      = get_field( 'paperfig_login_er_inr_user' , 'option' );
    $inc_pass       = get_field( 'paperfig_login_er_inr_pass' , 'option' );
    
    //Post Value
    $username = $_POST['username'];
    $password = $_POST['password'];
    $wp_nonce = $_POST['wp_nonce'];
    if( empty( $username ) ){
        $return_data = array(
                'error' => 1,
                'notice' => $empty_uname,
        );
        echo json_encode($return_data);
    }
    elseif( empty( $password ) ){
        $return_data = array(
                'error' => 1,
                'notice' => $empty_pass,
        );
        echo json_encode($return_data);
    }
    elseif ( !empty( $username ) &&  !empty( $password ) ) {
        try {
            $creds = array(
                    'user_login'    => trim( $username ),
                    'user_password' => $password,
            );
            // Perform the login
            $user = wp_signon( apply_filters( 'woocommerce_login_credentials', $creds ), is_ssl() );
            if ( is_wp_error( $user ) ) {
                $message_code = $user->get_error_code();
                if($message_code == 'incorrect_password'){
                        $message  = $inc_pass;
                }
                elseif($message_code == 'invalid_username'){
                        $message = $inc_uname;
                }
                elseif($message_code == 'invalid_email'){
                        $message = $inc_uname;
                }
                else{
                        $message = $user->get_error_message();
                        $message = str_replace( '<strong>' . esc_html( $creds['user_login'] ) . '</strong>', '<strong>' . esc_html( $creds['user_login'] ) . '</strong>', $message );
                }
                $return_data = array(
                        'error' => 1,
                        'notice' => $message,
                );
                echo json_encode($return_data);
            } else {
                if ( !empty( $login_redirect ) ) {
                    $redirect = wp_sanitize_redirect( $login_redirect );
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

?>
<form class="meterial">
	<div class="md-input">
		<input class="md-form-control" id="paperfig-login-uname" required="" type="text">
		<span class="highlight"></span>
		<span class="bar"></span>
		<label><?php _e( 'Username','paperfig' ); ?></label>
	</div>
	<div class="md-input">
		<input class="md-form-control" id="paperfig-login-pass" required="" type="password">
		<span class="highlight"></span>
		<span class="bar"></span>
		<label><?php _e( 'Password','paperfig' ); ?></label>
	</div>
	<div class="row error-box" style="display: none">
		<div class="col-md-12">
			<div class="error-message text-center">
				<strong>
					<i class="fas fa-exclamation-triangle"></i>
					<div class="error-message-text"></div>
				</strong>
			</div>
		</div>
	</div>
	<?php wp_nonce_field('paperfig_new_user_login','paperfig_new_user_nonce_login', true, true ); ?>
	<div class="row">
		<div class="col-md-5">
		</div>
		<div class="col-md-7">
			<a class="btn btn-dark pull-right-md" id="paperfig-login-btn"><?php _e( 'Login','paperfig' ); ?></a>
		</div>
	</div>
</form>
   