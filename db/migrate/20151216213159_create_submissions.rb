class CreateSubmissions < ActiveRecord::Migration
  def change
    create_table :submissions do |t|
    	t.references :student
    	t.references :assignment 
    	t.date :submitted_on
    	t.string :grade_status
    	t.string :comments
    end
  end
end
