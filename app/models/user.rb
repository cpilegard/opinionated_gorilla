class User < ActiveRecord::Base
  has_many :surveys
  has_many :user_choices
  has_many :choices, through: :user_choices
  has_many :completed_surveys
  validates :email, presence: true, uniqueness: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i }
  validates :password, presence: true, length: { minimum: 2 }
end
