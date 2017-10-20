require 'sinatra/base'
require_relative './models/link.rb'
require_relative './datamapper_setup.rb'
# require_relative "./lib/bookmark_manager.rb"
ENV['RACK_ENV'] ||= 'development'

class BookmarkManagerApp < Sinatra::Base

  get "/" do
    "hello"
  end
  get "/links" do
    @links = Link.all  
    @tags = Tag.all
    p @links   #you bring the table to the isntance variable which is called links
    erb(:'links/index')
  end
  
  post "/links" do
    link = Link.new(:url  => params[:url], :title => params[:title])

    tags = params[:tags].split(" ")
    tags.each do |t|
      tag = Tag.first_or_create(:tags => t)
      link.tags << tag
      link.save
    end
    redirect '/links' 
  end

  get "/links/new" do

     erb(:'links/new')
  end
  
  post '/tags' do
    redirect "/tags/#{params[:tag]}"
  end

  get '/tags/:tag' do
    
    tag = Tag.first(:tags => params[:tag])
    @links = tag ? tag.links : []

    erb(:search_results)
   end

  run! if app_file == $0
end
