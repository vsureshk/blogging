require 'rubygems'
require "bundler/setup"
require 'nokogiri'
require "selenium-webdriver"
require 'open-uri'
require 'fileutils'

class Crawler

def initialize(url, credentials=[["sftest","1qaz2wsxQ!"],["rf_clientadmin","Clientadmin1!"]])
  profile = Selenium::WebDriver::Firefox::Profile.new
  profile['browser.download.dir'] = "./tmp/"
  #profile['general.useragent.override'] = "some UA string"
  profile["browser.download.folderList"] = 2
  profile["browser.download.manager.showWhenStarting"] = false
  #profile["browser.download.dir"]=>"tmp"
  profile["browser.helperApps.neverAsk.saveToDisk"] = "text/csv,application/pdf,fnm"
  @page_count =1
  @screenshot_location = './tmp/'
  @driver = Selenium::WebDriver.for  :firefox, :profile => profile 
 #  @start_url = start_url
   @visited_links = []
	 @start_url = url.include?("http") ? url : "http://#{url}"
	 @logout_url = url.include?("http") ? url : "http://#{url}/users/destroy"
	 
	 File.exist?("./tmp") ? FileUtils.rm_rf("./tmp/.") : FileUtils.mkdir_p("./tmp/")
	 
	 credentials.each do |each_user|
		 username = each_user[0]
		 password = each_user[1]
		 
		 @temp_path = "./tmp/#{username}"
		 FileUtils.rm_rf(@temp_path) if File.exist?(@temp_path)
	   FileUtils.mkdir_p(@temp_path)
		 
		 navigate(@start_url)
		 
     element = @driver.find_element(:name, "username")
	   element.send_keys username
     element = @driver.find_element(:name, "password")
	   element.send_keys password
	   element.submit
		 
	   run_crawler
		 
	   navigate(@logout_url)
   end
	quit
 #  @found_links =[]
 #  @end_url=end_url
end

def navigate(url=@start_url)
  puts @page_count.to_s + " - " + url
  @driver.navigate.to url
	url_path = "#{@temp_path}/urls.txt"
	File.open(url_path, 'a+') {|f| f.write("#{@page_count.to_s} - #{url} \n")}
  @driver.save_screenshot("#{@temp_path}/" + @page_count.to_s + ".png")
  @page_count = @page_count + 1
  html = @driver.page_source
  @visited_links << url
  html
end

def find_links(html,url)
  doc = Nokogiri::HTML.parse html
hrefs = doc.css("a").map do |link|
    if (href = link.attr("href")) && !href.empty?
      begin
      # puts url
      # puts href
      URI::join(url, href) unless href.include? 'https://Avalanche'
    rescue URI::InvalidURIError
      puts "rescued: #{url}, #{href}"
    end
    end
  end.compact.uniq
  hrefs.map! {|l| l.to_s}
end  

def crawl(url)
  html = navigate(url)
  links = find_links(html,url)  
end
 
 
 def filter(urls,options={})
   selects = options[:selects] 
   rejects = options[:rejects] 

   selects.each do |to_select|
     urls =  urls.select {|l| l.include? to_select}
   end

   rejects.each do |to_reject|
     urls =  urls.reject {|l| l.include? to_reject}
   end

   urls.uniq
 end 
 
 def run_crawler()
	links = crawl(@start_url)

	links.reject! {|l| l.include? "#"} # inline hyperlink, for tabs etc
	links.reject! {|l| l.include? "javascript"} # ajax calls and other stuff
	links.reject! {|l| l.include? "mailto"} # this will open a mail client, which is configured in user machine , we dont want to test it
	links.select! {|l| l.include? @start_url} # we dont want to go to other sites
	links.reject! {|l| l.include? "#{@start_url}/users/destroy"} # logout url, we dont want to logout


	# iterating it one more time

	newlinks = []
	links.each  {|l| newlinks << crawl(l) ; sleep 2  }
	alinks = newlinks.flatten
	alinks.map! {|l| l.to_s}
	alinks.reject! {|l| l.include? "mailto"}
	alinks.reject! {|l| l.include?  "#"}
	links.reject! {|l| l.include? "javascript"}
	alinks.select! {|l| l.include? @start_url}
	alinks.reject! {|l| l.include? "#{@start_url}/users/destroy"}
	alinks.uniq!
	alinks =  alinks - links
	newlinks2 = []
	alinks.each  {|l| newlinks2 << crawl(l) ; sleep 2  }
 end

 def quit
  @driver.quit
  exit 0
 end
end
