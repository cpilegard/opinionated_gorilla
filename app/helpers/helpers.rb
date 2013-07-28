helpers do
  def current_user
    if logged_in?
      User.find(session[:user_id])
    end
  end

  def logged_in?
    session[:user_id] != nil
  end

  def taken_survey?(survey)
    !CompletedSurvey.where(user_id: current_user.id, survey_id: survey.id).empty?
  end

  def choice_percentage(choice)
    survey_count = completed_survey_count(choice.survey.id)
    if survey_count == 0
      0
    else
      value = (choice.user_choices.count.to_f/survey_count) * 100
      sprintf("%.1f",value)
    end
  end

  def completed_survey_count(survey_id)
    CompletedSurvey.find_all_by_survey_id(survey_id).count
  end
end