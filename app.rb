require 'sinatra/base'
# require ''

class MakersBNB < Sinatra::Base

  set :static, true
  set :public_folder, Proc.new { File.join(root, "interface") }

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

  get '/sign_up' do
    erb (:sign_up)
  end

  get '/view_listed_spaces' do
    erb (:view_listed_spaces)
  end

  post '/sign_up' do
    'Thank you for signing up!'
  end

end
