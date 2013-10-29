require 'sinatra'
require 'sinatra/reloader' if development?
require 'qiniu-rs'

Qiniu::RS.establish_connection! :access_key => '4drJ2mqHlMuy1sXSfd7W9KYQj3Z9iBAWUZ5kC-9g',
                                :secret_key => '75lbFP5RQIjkZAlcnAGdKIOyxJlPuxVCsAoBLEXj'

get '/' do
  erb :index
end