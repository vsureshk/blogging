require 'rubygems'
require "bundler/setup"
require 'mysql2'


host = "127.0.0.1"
port = 3306
username = "root"
password = "root"
#database = "tomn"

begin
client = Mysql2::Client.new(
  :host =>host,
  :username => username,
  :password => password,
  :port => port,
  :encoding => 'utf8'
  )
results = client.query("show databases;")

results.each do |row|
  puts row
  
end  

rescue Exception => e
  puts "Unable to connect to database. Error: \"#{e}\""
  exit 1
end


