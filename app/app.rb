require 'sinatra/base'
require './app/models/link.rb'
require 'pry'
# require_relative "./lib/bookmark_manager.rb"

class BookmarkManagerApp < Sinatra::Base

  get "/links" do
    @links = Link.all
    # p @links   #you bring the table to the isntance variable which is called links
    erb :'links/index'
  end

  get "/links/new" do
    # binding.pry
    erb :'links/new'
  end

  post '/links' do
    Link.create(url: params[:url], title: params[:title])
    redirect '/links'
  end

  run! if app_file == $0
end
