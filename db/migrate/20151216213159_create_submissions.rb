class CreateSubmissions < ActiveRecord::Migration
  def change
    create_table :submissions do |t|
    	t.integer :student_id
    	t.integer :assignment_id 
    	t.date :submitted_on
    	t.string :grade_status
    	t.string :comments
    end
  end
end
