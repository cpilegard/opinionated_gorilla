class User < ActiveRecord::Base
  has_many :surveys
  has_many :user_choices
  has_many :choices, through: :user_choices
  has_many :completed_surveys
end
