
a console based crawler for testing web app

authentication is made manually, after the browser has started

current crawler only does clicks on hyperlinks, no navigation via forms/javascripts

use this for smoke tests, dont do anything which causes writes or deletes,  create records, delete records etc

after the run please check the logs if any 404,403, 500 did occur



todo

* take screenshots - done
* log errors to file(non 200,302)
* additional browsers
* console is irb based now, considering pry as alternative

