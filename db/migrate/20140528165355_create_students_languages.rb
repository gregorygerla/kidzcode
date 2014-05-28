class CreateStudentsLanguages < ActiveRecord::Migration
  def change
    create_table :students_languages do |t|
    	t.belongs_to :students
    	t.belongs_to :languages
    	t.integer :skill_level
    end
  end
end
