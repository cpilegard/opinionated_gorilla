class Survey < ActiveRecord::Base
  belongs_to :user
  has_many :questions
  has_many :completed_surveys
  has_many :users, through: :completed_surveys
  has_one :photo
  
  validates :title, presence: true, uniqueness: {case_sensitive: false, scope: :user_id }
end
