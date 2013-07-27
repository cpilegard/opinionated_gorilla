class CompletedSurvey < ActiveRecord::Base
  belongs_to :survey
  belongs_to :user

  validates_uniqueness_of :user_id, scope: :survey_id
end
