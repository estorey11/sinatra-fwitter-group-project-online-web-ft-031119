require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    erb :index
  end

  helpers do

    def current_user
      @user=User.find(session[:user_id])
    end

    def logged_in?
      !!current_user
    end

  end


end
