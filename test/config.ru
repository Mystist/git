require 'bundler'
Bundler.setup(:default)

require './qiniu.rb'
run Sinatra::Application