<form action="<?php echo esc_url(admin_url('admin-post.php')); ?>" class="form-horizontal contact-1" enctype="multipart/form-data" role="form" name="contactform" method="post" id="contactform">
                                <div class="form-group">
                                    <div class="col-sm-6">
                                        <input type="text" class="form-control" name="name" id="name" placeholder="Name">
                                    </div>
                                    <div class="col-sm-6">
                                        <input type="text" class="form-control" name="email" id="email" placeholder="Email">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-12">
                                        <input type="subject" name="form_subject" class="form-control" id="subject" placeholder="Subject *">
                                        <div class="text_area">
                                            <textarea name="message" id="msg" class="form-control" cols="30" rows="8" placeholder="Message"></textarea>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-6">
                                        <input type="file" name="form_file_data" class="form-control" id="form_file_data" onchange="readURL1(this)" >
                                    </div>
                                    <div class="col-sm-6">
                                        <img src="" id="form_image" height="100" width="100" hidden=""/>
                                        <a href="javascript:void(0)" class="remove" id="remove" hidden="" onclick="removebtn()">Remove</a>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <button type="submit" class="btn custom-btn" data-loading-text="Loading...">Send</button>
                                </div>
                                <input type="hidden" name="action" value="contact_form">
                            </form>
							
							
							
							
							
							
							
							
							
<?php							
							
							//INSERT FROND SIDE FROM DATA TO CUSTOM POST TYPE FORM
add_action('admin_post_nopriv_contact_form', 'add_contact_form');
add_action('admin_post_contact_form', 'add_contact_form');

function add_contact_form() {

    $name = $_POST['name'];
    $email = $_POST['email'];
    $subject = $_POST['form_subject'];
    $message = $_POST['message'];
    $post = array(
        'post_title' => $subject,
        'post_content' => $message,
        'post_status' => 'publish',
        'post_type' => 'form_data'
    );

    $new_post_id = wp_insert_post($post);
    if (isset($_FILES) && !empty($_FILES)) {
        if (!empty($_FILES['form_file_data']['name']) && !empty($_FILES['form_file_data']['tmp_name'])) {
            $upload = media_handle_upload('form_file_data', $new_post_id);
        }
    }
    if (isset($name) && !empty($name)) {
        update_post_meta($new_post_id, 'form_user_name', $name);
    }
    if (isset($email) && !empty($email)) {
        update_post_meta($new_post_id, 'form_user_email', $email);
    }
    if (isset($upload) && !empty($upload)) {
        update_post_meta($new_post_id, 'form_user_file_data', $upload);
    }
    wp_redirect(site_url());
}
							
							
							
							
							
							
							
							
							
							
							
							
							
							
							
							
							
							
							
							
							
							
							
							
							
							
							
//THIS FILE ADD CUSTOM META FIELD IN FORM_DATA POST TYPE


// Exit if accessed directly
if (!defined('ABSPATH'))
    exit;

add_action('admin_init', 'add_form_metabox');

function add_form_metabox() {
    add_meta_box('form_metabox', 'Users Detail', 'add_meta_box_form', 'form_data', 'normal');
    remove_meta_box('postcustom', 'form_data', 'normal');
}

function add_meta_box_form() {
    global $post;
    $post_id = $post->ID;
    $post_type = $post->post_type;

    $name = get_post_meta($post_id, 'form_user_name', TRUE);
    $email = get_post_meta($post_id, 'form_user_email', TRUE);
    $file_data = get_post_meta($post_id, 'form_user_file_data', TRUE);
    ?>
    <table>
        <thead>
            User Details
        </thead>
        <tbody>
            <tr>
                <td>
                    Name:
                </td>
                <td>
                    <input type="text" name="name" class="name" id="name" value="<?php echo $name ?>"/>
                </td>
            </tr>
            <tr>
                <td>
                    Email:
                </td>
                <td>
                    <input type="text" name="email" class="email" id="email" value="<?php echo $email; ?>"/>
                </td>
            </tr>
            <tr>
                <td>
                    <input type="button" name="form_file_data" id="form_file" class="button-primary" value="Image Upload"/>
                    <input type="hidden" name="form_file_hidden" id="form_file_hidden" value="<?php echo $file_data; ?>"/>
                    <img src="<?Php echo wp_get_attachment_image_url($file_data); ?>" id="form_image" height="100" width="100" <?php echo empty($file_data) ? 'hidden' : ''; ?>/>
                    <a href="javascript:void(0)" class="file_data_remove" id="file_data_remove" <?php echo empty($file_data) ? 'hidden' : ''; ?>>Remove</a>
                </td>
            </tr>
        </tbody>
    </table>     
    <?php
}

add_action('save_post', 'save_form_meta_box');

function save_form_meta_box($post_id) {
    global $post;

    if ($post->post_type == 'form_data') {
        if (isset($_POST['name']) && !empty($_POST['name'])) {
            update_post_meta($post_id, 'form_user_name', $_POST['name']);
        }
        if (isset($_POST['email']) && !empty($_POST['email'])) {
            update_post_meta($post_id, 'form_user_email', $_POST['email']);
        }
    }
//    if (isset($_FILES) && !empty($_FILES)) {
//        if (!empty($_FILES['form_file_data']['name']) && !empty($_FILES['form_file_data']['tmp_name']) && !empty($_POST['form_file_hidden'])) {
//            $upload = media_handle_upload('form_file_data', $new_post_id);
//        }
//    }
    if (isset($_POST['form_file_hidden']) && !empty($_POST['form_file_hidden'])) {
        $image_id = $_POST['form_file_hidden'];
    }

    if (isset($image_id) && !empty($image_id)) {
        update_post_meta($post_id, 'form_user_file_data', $image_id);
    } else {
        $image_id = $_POST['form_file_hidden'];
        update_post_meta($post_id, 'form_user_file_data', $image_id);
    }
}

add_action('admin_head', 'js_form_data');

function js_form_data($post_id) {
    ?>
    <script>
        function readURL(input) {
            console.log(input.files[0]);
            if (input.files && input.files[0]) {
                var reader = new FileReader();

                reader.onload = function (e) {
                    $('#form_image').attr('src', e.target.result);
                }
                reader.readAsDataURL(input.files[0]);
            }
        }
        var frame;
        jQuery(document).ready(function () {

            $('.file_data_remove').click(function () {
                jQuery('#form_file_hidden').val('');
                jQuery('#form_image').attr('src', '');
                jQuery('#form_image').hide();
                jQuery('#file_data_remove').hide();
            });

            $("#form_file").change(function () {
                readURL(this);
            });

            $('#form_file').click(function (event) {
                event.preventDefault();
                frame = wp.media({
                    title: 'Select or Upload Media for form data',
                    button: {
                        text: 'Use this media'
                    },
                    multiple: false  // Set to true to allow multiple files to be selected
                });
                frame.on('select', function () {
                    var attachment = frame.state().get('selection').first().toJSON();
                    jQuery('#form_file_hidden').val(attachment.id);
                    jQuery('#form_image').show();
                    jQuery('#form_image').attr('src', attachment.url);
                    $('#file_data_remove').show();
                });
                frame.open();
            });
        });
    </script>
    <?php
}

							