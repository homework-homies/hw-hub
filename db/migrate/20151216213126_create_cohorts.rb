class CreateCohorts < ActiveRecord::Migration
  def change
    create_table :cohorts do |t|
    	t.string :cohort_name
    	t.references :producer
    	t.date :start_on
    	t.date :end_on
    end
  end
end
