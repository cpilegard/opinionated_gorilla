get '/survey/new' do
  erb :create_survey
end

post '/survey' do
  # survey = current_user.surveys.create(title: params[:title])
  survey = Survey.create(title: params[:title])

  question = survey.questions.create(question: params[:question])

  params[:choices].each do |choice|
    question.choices.create(content: choice['choice'])
  end
  redirect to("/survey/#{survey.id}")
end

get '/survey/:id' do
  @survey = Survey.find(params[:id])
  erb :survey_stats
end
