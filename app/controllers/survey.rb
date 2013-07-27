get '/survey/new' do
  erb :create_survey
end

post '/survey' do
  survey = current_user.surveys.create(title: params[:title])
  redirect to("/survey/#{survey.id}/new")
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
  survey = Survey.find(params[:id])
  question = survey.questions.create(question: params[:question])

  params[:choices].each do |choice|
    question.choices.create(content: choice['choice'])
  end
  redirect to("/survey/#{survey.id}")
end

post '/photo/:survey_id' do
  survey = Survey.find(params[:survey_id])
  photo = Photo.new()
  photo.file = params[:image]
  photo.save
  survey.photo = photo
  redirect "/survey/#{survey.id}"
end