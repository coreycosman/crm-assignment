require 'sinatra'

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
