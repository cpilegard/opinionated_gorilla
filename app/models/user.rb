require 'bcrypt'

class User < ActiveRecord::Base

  include BCrypt
  has_many :surveys
  has_many :user_choices
  has_many :choices, through: :user_choices
  has_many :completed_surveys
  validates :email, presence: true, uniqueness: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i }
  validates :password, presence: true, length: { minimum: 2 }

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end
end
