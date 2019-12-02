
<?php 
/*
* jquery validation path : Z:\TRAINING 2018\Kajal Dhameliya\BackUp\social-network\20-2-2019\socialnetwork\js
* cdn.jsdelivr.net/jquery.validation/1.15.0/jquery.validate.min.js
*/
<form role="form">
	<div class="form-group">
		<label for="name">Name:</label>
		<input type="text" class="form-control" id="name" name="name">
	</div>
	<div class="form-group">
		<label for="email">Email address:</label>
		<input type="email" class="form-control" id="email" name="email">
	</div>
	<button type="submit" class="btn btn-default">Subscribe</button>
</form>

<script>
var $form = $("form");
var $successMsg = $(".alert");
jQuery.validator.addMethod("letters", function(value, element) {
  return this.optional(element) || value == value.match(/^[a-zA-Z\s]*$/);
});
$form.validate({
	rules: {
		name: {
			required: true,
			minlength: 3,
			letters: true
		},
		email: {
			required: true,
			email: true
		}
	},
	messages: {
		name: "Please specify your name (only letters and spaces are allowed)",
		email: "Please specify a valid email address"
	},
	submitHandler: function() {
		$successMsg.show();
	}
});
</script>