class AddSkillLevelToStudents < ActiveRecord::Migration
  def change
  	add_column :students, :skill_level, :integer, :default => 0
  end
end
