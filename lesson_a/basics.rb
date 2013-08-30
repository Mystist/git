require 'sinatra'
require "sinatra/reloader" if development?

get '/' do
  'Hello, World!'
end

get '/about' do
  'A little about me.'
end

get '/hello/:name/:age' do
  "Hello there, #{params[:name].upcase}, whose age is #{params[:age]}."
end

get '/more/*' do
  params[:splat]
end

get '/form' do
  erb :form
end

post '/form' do  
  "You said '#{params[:message]}'"  
end

get '/secret' do  
  erb :secret  
end

post '/secret' do  
  params[:secret].reverse  
end

get '/decrypt/:secret' do  
  params[:secret].reverse  
end