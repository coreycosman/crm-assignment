require 'sinatra'
require_relative("contacts_class_database")


get '/' do
  erb(:home)
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
  erb :contacts
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

get '/contacts/:id/edit' do
  @contact = Contact.find_by(id: params[:id])
  if @contact
    erb :about_me
  else
    raise Sinatra::NotFound
  end
end

put 'contacts/:id' do
  @contact = Contact.find_by(id: params[:id])
  if @contact
    @contact.update(
    first_name: params[:first_name],
    last_name: params[:last_name],
    email: params[:email],
    note: params[:note]
    )
    redirect to('/contacts')
  else
    raise Sinatra::NotFound
  end
end

delete '/contacts/:id/' do
  @contact = Contact.find(params[:id])
  if @contact
    @contact.delete
    redirect to('contacts')
  else
  raise Sinatra::NotFound
  end
end

after do
  ActiveRecord::Base.connection.close
end
