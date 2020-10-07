class SessionsController < ApplicationController

get '/login' do
    erb :'sessions/login'
end

post '/login' do
    user = User.find_by(username: params[:username])
    if user && user.authenticate(params[:password])
        session[:user_id] = user.id
        redirect "/posts"
    else
        redirect "/login"
    end
end

get '/signup' do
    erb :'/users/signup'
  end

  post '/signup' do
    @user = User.new(username: params["username"], password: params["password"], goal: params["reading_goal"])
    @user.save
    session[:user_id] = @user.id
    puts params
    redirect '/posts'
  end

get '/logout' do
    session.destroy
    redirect "/"
end

end
