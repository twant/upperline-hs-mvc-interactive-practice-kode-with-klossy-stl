require 'bundler'
Bundler.require
require_relative "models/pig_latinize.rb"

class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/piglatin' do
    user_sentence=params[:sentence]
    @pig_latinized=to_pig_latin(user_sentence)
    erb :results
  end


end
