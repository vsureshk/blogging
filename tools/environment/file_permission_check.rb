require 'rubygems'
require "bundler/setup"
=begin

check if the files/folders have right user, group and file permissions


=end
folders = ["/","/home/","/Users/senthil/","/home/senthil",".","~/"]
folders.each do |folder|
m = File.world_readable?(folder) 
unless m.nil?
puts folder + " : " + sprintf("%o", m)  
else
puts "check if folder exists : " + folder
end  
end