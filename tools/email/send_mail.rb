#!/usr/bin/env ruby
require "bundler/setup"
require 'mail'
require 'logger'



Mail.defaults do
  delivery_method :smtp, { :address   => "smtp.sendgrid.net",
                           :port      => 587,
                           :domain    => "yourdomain.com",
                           :user_name => "yourusername@domain.com",
                           :password  => "yourPassword",
                           :authentication => 'plain',
                           :enable_starttls_auto => true }
end

mail = Mail.new do
  to 'yourRecipient@domain.com'
  from 'Your Name <name@domain.com>'
  subject 'This is the subject of your email'
  text_part do
    body 'Hello world in text'
  end
  html_part do
    content_type 'text/html; charset=UTF-8'
    body '<b>Hello world in HTML</b>'
  end
#add_file :filename => 'somefile.png', :content => File.read('/somefile.png')
  
end

logger = Logger.new('log/email.log')
logger.info("\n================\n"+ mail.to_s)



mail.deliver