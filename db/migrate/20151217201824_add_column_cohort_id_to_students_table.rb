class AddColumnCohortIdToStudentsTable < ActiveRecord::Migration
  def change
    change_table :students do |t|
      t.references :cohort
    end
  end
end
