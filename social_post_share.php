
<li class="fb-icon">
<a href="https://www.facebook.com/sharer/sharer.php?u=<?php echo urlencode(get_permalink(get_the_ID())); ?>" target="_blank"><i class="fa fa-facebook" aria-hidden="true"></i></a>
</li>
<li class="twit-icon">
<a href="https://twitter.com/intent/tweet?url=<?php echo urlencode(get_permalink(get_the_ID())); ?>&title=<?php echo urlencode(get_the_title()); ?>&text=<?php echo urlencode($excerpt); ?>" target="_blank"><i class="fa fa-twitter" aria-hidden="true"></i></a>
</li>
<li class="linked-icon">
<a href="https://www.linkedin.com/shareArticle?mini=true&url=<?php echo urlencode(get_permalink(get_the_ID())); ?>&title=<?php echo urlencode(get_the_title()); ?>&summary=<?php echo urlencode($excerpt); ?>&source=" target="_blank"><i class="fa fa-linkedin" aria-hidden="true"></i></a>
</li>
<li class="gplus-icon">
<a href="https://plus.google.com/share?url=<?php echo urlencode(get_permalink(get_the_ID())); ?>" target="_blank"><i class="fa fa-google-plus" aria-hidden="true"></i></a>
</li>