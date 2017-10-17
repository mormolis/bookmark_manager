require 'sinatra/base'
require_relative "./lib/bookmark_manager.rb"

class BookmarkManagerApp < Sinatra::Base

  get "/" do
    erb(:index)
  end

  run! if app_file == $0
end