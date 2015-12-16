class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.string :title
      t.string :prompt_link
      t.references :cohort
      t.references :instructor
      t.date :assigned_on
    end
  end
end
