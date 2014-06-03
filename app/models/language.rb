class Language < ActiveRecord::Base
	has_many :skills
	has_many :students, through: :skills
	accepts_nested_attributes_for :students




end