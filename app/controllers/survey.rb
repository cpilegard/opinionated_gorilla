get '/survey/new' do
  @survey = Survey.new
  erb :create_survey
end

post '/survey' do
  @survey = current_user.surveys.new(title: params[:title])
  if @survey.save
    redirect to("/survey/#{@survey.id}/new")
  else
    erb :create_survey
  end
end

get '/survey/:id' do
  @survey = Survey.find(params[:id])
  erb :survey_stats
end

get '/survey/:id/new' do
  @survey = Survey.find(params[:id])
  @question = Question.new
  erb :add_question
end

post '/survey/:id/new' do
  @survey = Survey.find(params[:id])
  @question = @survey.questions.build(question: params[:question])
  params[:choices].each do |choice|
    @question.choices.build(content: choice['choice'])
  end
  if @question.save
    redirect to("/survey/#{@survey.id}")
  else
    erb :add_question
  end
end