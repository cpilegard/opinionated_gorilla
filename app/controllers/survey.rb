get '/survey/new' do
  @survey = Survey.new
  erb :new_survey
end

post '/survey' do
  p params
  @survey = current_user.surveys.create(params)

  if @survey.errors.empty?
    redirect to("/survey/#{@survey.id}")
  else
    erb :new_survey
  end
end

get '/survey/:id' do
  @survey = Survey.find(params[:id])
  erb :survey_stats
end

get '/survey/:id/new' do
  @survey = Survey.find(params[:id])
  erb :add_question
end

post '/photo/:survey_id' do
  survey = Survey.find(params[:survey_id])
  photo = Photo.new()
  photo.file = params[:image]
  photo.save
  survey.photo = photo
  redirect "/survey/#{survey.id}"
end