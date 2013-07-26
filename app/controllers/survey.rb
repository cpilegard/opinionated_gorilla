get '/survey/new' do
  erb :create_survey
end

post '/survey' do
  survey = current_user.surveys.create(title: params[:title])
  redirect to("/survey/#{survey.id}")
end

get '/survey/:id' do
  @survey = Survey.find(params[:id])
  erb :survey_stats
end
