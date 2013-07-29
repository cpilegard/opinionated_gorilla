get '/survey/new' do
  erb :new_survey
end

post '/survey' do
  p params
  @survey = current_user.surveys.new(params)

  if @survey.save
    redirect to("/survey/#{@survey.id}")
  else
    erb :new_survey
  end
end

get '/survey/:id' do
  @survey = Survey.find(params[:id])
  erb :survey_stats
end

post '/photo/:survey_id' do
  survey = Survey.find(params[:survey_id])
  photo = Photo.new()
  photo.file = params[:image]
  photo.save
  survey.photo = photo
  redirect "/survey/#{survey.id}"
end

post '/survey/:id/invite' do
  send_invite_message(current_user.email, params[:to], "http://www.opinionatedguerilla.com/survey/" + params[:id].to_s + "/take")
end