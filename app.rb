require 'sinatra/base'
require_relative './models/link.rb'
# require_relative "./lib/bookmark_manager.rb"

class BookmarkManagerApp < Sinatra::Base

  get "/links" do
    @links = Link.all  
    p @links   #you bring the table to the isntance variable which is called links
    erb(:'links/index')
  end

  run! if app_file == $0
end
