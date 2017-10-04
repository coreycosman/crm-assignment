require 'sinatra'
require_relative("contacts_class_database")


get '/home' do
  erb(:index)
end

get '/gallery' do
  @images = []
  25.times do |num|
    @images << "http://unsplash.it/200/300?random=#{num}"
  end

  erb(:gallery)
end

get '/about_me' do
  @skills = ["git", "html", "css", "ruby"]
  erb(:about_me)
end
#learn now to iterate through database, and access the all method
get '/contacts' do
  @contacts = ActiveRecord::Base.each do |?|
  erb(:contacts)
end
