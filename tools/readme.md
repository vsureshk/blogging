

these tools would replicate all the third party services

==============================
DO NOT RUN IT IN PRODUCTION
==============================


all this could be run by running foreman start


bundle install



ruby http.rb

http://127.0.0.1:4567/

run multiple instaces, pass port parameters
ruby http.rb -p 3000
ruby http.rb -p 27001


host,  service name,   port, protocol, purpose

static file
pdf service



HTTP

curl -d "" http://127.0.0.1:4567/
Hello World via Post

curl  http://127.0.0.1:4567/
Hello World via Get

test the below url's with a browser

http://127.0.0.1:4567/gettextfile
http://127.0.0.1:4567/getpdffile
http://127.0.0.1:4567/getxmlfile
http://127.0.0.1:4567/getjsonfile

when running foreman sinatra runs on port 5000 and 5100


SMTP/mail/web interface

mailcatcher smtp runs on port 1025, no authentication
mailcatcher web interface to see the app runs on port 1080



when want to use with custom settings


cp Procfile Procfile.development

make the changes in Procfile.development

run

foreman start -f Procfile.development

similarly for staging 

foreman start -f Procfile.staging


please dont commit Procfile.development, and get authorization to modify the tools folder from Senthil/Kishore/Krishnan
