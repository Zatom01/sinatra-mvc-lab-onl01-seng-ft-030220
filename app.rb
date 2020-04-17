require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base
  get '/' do 
    erb :user_input
  end 
  
  post '/piglatinize' do 
    @pig_latinized=PigLatinizer.new.piglatinize(params[:user_phrase])
    erb :piglatinized
  end 
  
end