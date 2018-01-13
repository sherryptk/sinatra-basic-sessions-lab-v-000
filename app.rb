require_relative 'config/environment'

class App < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, "secret"
  end

  get '/' do
    erb :index
  end

  post '/checkout' do
    binding.pry
    session[:item] = params[:item]
    @session = session
    <h2>Item: <%= @session[:item] %> </h2>
  end

end
