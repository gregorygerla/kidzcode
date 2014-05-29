class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
    	t.belongs_to :student
    	t.belongs_to :language
    	t.integer :skill_level
    end
  end
end
