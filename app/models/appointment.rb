class Appointment < ActiveRecord::Base
belongs_to :student
# validates :date,  :presence => true
# validates :hour,  :presence => true,
#                   :uniqueness => {:scope => :date}
accepts_nested_attributes_for :student
end
