class Choice < ActiveRecord::Base
  belongs_to :question
  has_many :user_choices
  has_one :survey, through: :question
  validates :content, presence: true

  def as_json
  	{ 
  		value: self.user_choices.count,
  		color: "#" + "%06x" % (rand(0x666666..0xcccccc)),
  		label: self.content.gsub("'", "&apos;")
  	}
  end

end
