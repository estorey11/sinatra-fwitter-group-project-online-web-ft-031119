require 'pry'

class TweetsController < ApplicationController
  get '/tweets/new' do
    binding.pry
    if logged_in?
      erb :'/tweets/new'
    else
      redirect to '/login'
    end
  end

  post '/tweets' do
    if logged_in?
      @tweet=Tweet.new(params)
    else
      redirect to '/login'
    end
  end

end
