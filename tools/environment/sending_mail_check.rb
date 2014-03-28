require 'rubygems'
require "bundler/setup"
require 'net/smtp'
require 'mail'


mail = Mail.new
 
mail.body = "This is a test email"
mail.from = 'senthil@railsfactory.com'
mail.to    = 'senthil@railsfactory.com'
mail.subject = 'Test Mail sent at: ' + Time.now.to_s

mail.header['X-Mailer'] = 'SMTP Mail Tester'

puts mail.to_s 

begin
  
# No Authentication Sendmail
# comment the smtp block itself
# mail.deliver!


# SMTP settings
smtp_server = "127.0.0.1"
smtp_port = 2525
smtp_username = ""
smtp_password = ""
# smtp_auth_type = ""

# No Authentication SMTP
Net::SMTP.start(smtp_server, smtp_port) do |smtp|
  
# Authentication mechanism : if server needs authentication disable the above line and enable the version your server expects

# PLAIN
# Net::SMTP.start(smtp_server, smtp_port, smtp_server,smtp_username, smtp_password, :plain) do |smtp|

# LOGIN
# Net::SMTP.start(smtp_server, smtp_port, smtp_server,smtp_username, smtp_password, :login) do |smtp|

# CRAM MD5
# Net::SMTP.start(smtp_server, smtp_port, smtp_server,smtp_username, smtp_password, :cram_md5) do |smtp|
  
  
  smtp.send_message mail.to_s , mail.from, mail.to


end

rescue Exception => e
  puts "Unable to send email. Error: \"#{e}\""
  exit 1
end
