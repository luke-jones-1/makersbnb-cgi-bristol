require 'sinatra/base'

class MakersBNB < Sinatra::Base

  get '/' do
    erb (:index)
  end

  get '/list_space' do
    erb (:list_space)
  end

  post '/' do
    'Thank you for listing your space!'
  end

  get '/hire_space' do
    erb (:hire_space)
  end

end
