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
end