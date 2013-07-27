enable :sessions

get '/' do
  # Look in app/views/index.erb
    if logged_in?
      erb :homepage
    else
    erb :index
  end
end

post '/users' do
  user = User.new(email: params[:email], password: params[:password])
  if user.save
    session[:user_id] = user.id
    redirect "/sessions/new"
  else
    @flash_alert = "Could not create user! <br />" + user.errors.full_messages.join("<br />")
    erb :index
  end
end

get '/users/:id' do |id|
  @user = current_user.id
  erb :show
end

post "/sessions" do
  user = User.find_by_email(params[:email])
  if user.password == params[:password]
    session[:user_id] = user.id
    redirect "/sessions/new"
  else
    @flash_alert = "Could not log you in!"
    erb :index
  end
end

get '/sessions/new' do
  erb :homepage
end

get '/sessions/end' do 
  session.clear
  redirect '/'
end

