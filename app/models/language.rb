class Language < ActiveRecord::Base
	has_many :skills
	has_many :students, through: :skills




end