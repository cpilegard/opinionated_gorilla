get '/survey/:id/take' do
  @survey = Survey.find_by_id(params[:id])
  erb :take_survey
end

post '/survey/:id/submit' do
  
end