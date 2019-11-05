require 'sinatra/base'
# require ''

class MakersBNB < Sinatra::Base

  set :static, true
  set :public_folder, Proc.new { File.join(root, "interface") }

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

  get '/view_listed_spaces' do
    File.read('./views/view_listed_spaces.html')
  end

end
