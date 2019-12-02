301 redirect .htaccess

# BEGIN 301 Redirects
Redirect 301 /old-page/ http://www.testdomain.com/new-page/
# END 301 Redirects

===================================================================

wordpress

wp_redirect( "http://www.my-blog.com/a-new-destination", 301 );

==================================================================

php

Header( “HTTP/1.1 301 Moved Permanently” );
Header( “Location: http://www.new-url.com” );

===============================================================