require 'sinatra/base'
require 'dotenv'
Dotenv.load


class SomeApp < Sinatra::Base
  configure do
    enable :logging
    file = File.new("#{settings.root}/log/#{settings.environment}.log", 'a+')
    file.sync = true
    use Rack::CommonLogger, file
    set :bind, ENV['IP']
    set :port, ENV['PORT']
  end

  get '/' do
    "Hello World via Get\n"
  end

  post '/' do
    "Hello World via Post\n"
  end  


  get '/gettextfile' do
    #send a predifined file from data folder
    content_type :txt
    File.read(File.join('data', 'test.txt'))
  end

  get '/getpdffile' do
    #send a predifined file from data folder
    content_type "application/pdf"
    File.read(File.join('data', 'test.txt.pdf'))
  end

  get '/favicon.ico' do
    content_type "image/x-icon"
    File.read(File.join('data', 'favicon.ico'))
  end  

  get '/getpngfile' do
    #send a predifined file from data folder
    content_type "image/png"
    File.read(File.join('data', 'rails.png'))
  end

  get '/getjsonfile' do
    #send a predifined file from data folder
    content_type "application/json"
    File.read(File.join('data', 'sample.json'))
  end

  get '/getxmlfile' do
    #send a predifined file from data folder
    content_type "application/xml"
    File.read(File.join('data', 'sample.xml'))
  end

  get '/PDFService/getPDFPreview.cfm' do
    #send a predifined file from data folder
    puts params.inspect
    content_type "application/pdf"
    File.read(File.join('data', 'test.txt.pdf'))
  end

  post '/SFTPService.php' do
    #send a predifined file from data folder
    puts params.inspect
    content_type "application/json"
    File.read(File.join('data', 'sample.json'))
  end

  post '/api/Authorization' do
    #send a predifined file from data folder
    puts params.inspect
    content_type "application/json"
    File.read(File.join('data', 'sample.json'))
  end

  get '/api/AddUser2' do
    #send a predifined file from data folder
    puts params.inspect
    content_type "application/json"
    File.read(File.join('data', 'sample.json'))
  end

  get '/api/Tickets' do
    #send a predifined file from data folder
    puts params.inspect
    content_type "application/json"
    File.read(File.join('data', 'sample.json'))
  end

  get '/api/Ticket' do
    #send a predifined file from data folder
    puts params.inspect
    content_type "application/json"
    File.read(File.join('data', 'sample.json'))
  end

  get '/api/comments' do
    #send a predifined file from data folder
    puts params.inspect
    content_type "application/json"
    File.read(File.join('data', 'sample.json'))
  end

  post '/api/comment' do
    #send a predifined file from data folder
    puts params.inspect
    content_type "application/json"
    File.read(File.join('data', 'sample.json'))
  end

  get '/PDFService/getpdfhandbookapproval.cfm' do
    #send a predifined file from data folder
    puts params.inspect
    content_type "application/pdf"
    File.read(File.join('data', 'test.txt.pdf'))
  end

  post '/mailprocess.cfm' do
    #send a predifined file from data folder
    puts params.inspect
    # return type is void
  end

  post '/dev/mailprocess.cfm' do
    #send a predifined file from data folder
    puts params.inspect
    # return type is void
  end

  get '/PDFService/renderStaticFlyer.cfm' do
    #send a predifined file from data folder
    puts params.inspect
    content_type "application/pdf"
    File.read(File.join('data', 'test.txt.pdf'))
  end

  post '/_remote/ImageService/ImageProcessor.cfm' do
    #send a predifined file from data folder
    puts params.inspect
    content_type "application/json"
    File.read(File.join('data', 'sample.json'))
  end

  post '/_remote/ImageService/converttorgb.cfm' do
    #send a predifined file from data folder
    puts params.inspect
    # return type is void
  end

  post '/_remote/ImageService/thumbnailer.cfm' do
    #send a predifined file from data folder
    puts params.inspect
    # return type is void
  end

  post '/_remote/SyncService/syncfonts.cfm' do
    #send a predifined file from data folder
    puts params.inspect
    # return type is void
  end

  post '/_tomnEngine/_tasks/_previewCardwithCover.cfm' do
    #send a predifined file from data folder
    puts params.inspect
    content_type "application/pdf"
    File.read(File.join('data', 'test.txt.pdf'))
  end

  post '/_tomnEngine/_tasks/_previewLetter.cfm' do
    #send a predifined file from data folder
    puts params.inspect
    content_type "application/pdf"
    File.read(File.join('data', 'test.txt.pdf'))
  end

  post '/_tomnEngine/_tasks/_previewSurvey.cfm' do
    #send a predifined file from data folder
    puts params.inspect
    content_type "application/pdf"
    File.read(File.join('data', 'test.txt.pdf'))
  end

  run!
end