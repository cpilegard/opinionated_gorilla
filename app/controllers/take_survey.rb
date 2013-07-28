get '/survey/:id/take' do
  @survey = Survey.find_by_id(params[:id])
  if current_user
    redirect '/' if current_user.completed_surveys.find_by_id(@survey) != nil
  end
  erb :take_survey
end

post '/survey/:id/submit' do
  survey = Survey.find(params[:id])

  survey.questions.each do |question|
    chosen = Choice.find(params["#{question.id}"].to_i)
    UserChoice.create(user: current_user, choice: chosen)
    
  end

  CompletedSurvey.create(user: current_user, survey: survey)

  redirect '/'
end