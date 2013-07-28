get '/survey/new' do
  @survey = Survey.new
  erb :new_survey
end

post '/survey' do
  p params
  @survey = current_user.surveys.create(title: params[:title])

  params[:questions].each do |question|
    @survey.questions.create(question)
  end

  if @survey.errors.empty?
    redirect to("/survey/#{@survey.id}")
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
  erb :add_question
end

post '/survey/:id/new' do
  p params
  @survey = Survey.find(params[:id])
  params[:questions].each do |question|
    @survey.questions.create(question)
  end
  # params[:choices].each do |choice|
  #   @question.choices.build(content: choice['choice'])
  # end
  # if @question.save
  #   redirect to("/survey/#{@survey.id}")
  # else
  #   erb :add_question
  # end
  redirect to("/survey/#{@survey.id}")
end

post '/photo/:survey_id' do
  survey = Survey.find(params[:survey_id])
  photo = Photo.new()
  photo.file = params[:image]
  photo.save
  survey.photo = photo
  redirect "/survey/#{survey.id}"
end