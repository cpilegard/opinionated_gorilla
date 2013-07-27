get '/survey/:id/take' do
  @survey = Survey.find_by_id(params[:id])
  # questions = survey.questions
  # @questions_and_choices = [[]]
  # questions.each_with_index do |question, i|
  #   p "question is #{question}"
  #   p "index is #{i}"
  #   @questions_and_choices[i] = question
  #   question.choices.each_with_index do |choice, j|
  #     @questions_and_choices[i][j] = choice
  #   end
  # end
  # p @questions_and_choices

  erb :take_survey
end