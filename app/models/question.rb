class Question < ActiveRecord::Base
  belongs_to :survey
  has_many :choices

  accepts_nested_attributes_for :choices

  validates :question, presence: true
  validates :choices, length: { minimum: 1, too_short: "- must have at least one" }

  def as_json
  	self.choices.collect(&:as_json)
  end

  def to_json
  	as_json.to_json
  end
end
