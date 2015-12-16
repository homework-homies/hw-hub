class CreateEnrollments < ActiveRecord::Migration
  def change
    create_table :enrollments do |t|
      t.references :cohorts
      t.references :students
      t.boolean :is_enrolled
    end
  end
end
