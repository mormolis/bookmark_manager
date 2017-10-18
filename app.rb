require 'sinatra/base'
require_relative './models/link.rb'
# require_relative "./lib/bookmark_manager.rb"
ENV['RACK_ENV'] ||= 'development'

class BookmarkManagerApp < Sinatra::Base

  get "/" do
    "hello"
  end
  get "/links" do
    @links = Link.all  
    p @links   #you bring the table to the isntance variable which is called links
    erb(:'links/index')
  end
  post "/links" do
    Link.create(:url  => params[:url], :title => params[:title])
    redirect '/links' 
  end

  get "/links/new" do

     erb(:'links/new')
  end

  run! if app_file == $0
end
