enable :sessions

get '/' do
  # Look in app/views/index.erb
  erb :index
end

post '/users' do
  user = User.create(email: params[:email], password: params[:password])
  session[:user_id] = user.user_id
  redirect "users/#{user.id}"
end

get '/users/:id' do |id|
  @user = User.find(id)
  erb :"users/show"
end

get '/sessions' do
  user = User.find_by_email(params[:email])
  if user.password == params[:password]
    session[:user_id] = user.id
    redirect '/users/#{user.id}'
  else
    erb :index
  end
end

get 'sessions/end' do 
  session.clear
  redirect '/'
end



