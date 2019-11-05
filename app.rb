require 'sinatra/base'
# require ''

class MakersBNB < Sinatra::Base

  get '/' do
    File.read('./views/index.html')
  end

  get '/list_space' do
    File.read('./views/list_space.html')
  end

  post '/' do
    'Thank you for listing your space!'
  end

  get '/hire_space' do
    File.read('./views/hire_space.html')
  end

  get '/sign_up' do
    File.read('./views/sign_up.html')
  end

  post '/sign_up' do
    'Thank you for signing up!'
  end

end
