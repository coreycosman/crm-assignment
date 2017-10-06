require 'sinatra'
require_relative("contacts_class_database")


get '/' do
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

get '/contacts' do
  @contacts = Contact.all
  erb(:contacts)
end

get '/contacts/:id' do
  @contact = Contact.find_by(id: params[:id])
  if @contact
    erb :show_contact
  else
    raise Sinatra::NotFound
  end
end

get '/new' do
  erb :new
end

post '/contacts' do
  Contact.create(
  first_name: params[:first_name],
  last_name: params[:last_name],
  email: params[:email],
  note: params[:note]
  )
  redirect to('/contacts')
end

after do
  ActiveRecord::Base.connection.close
end
