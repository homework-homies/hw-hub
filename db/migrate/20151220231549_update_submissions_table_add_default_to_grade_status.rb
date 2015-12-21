class UpdateSubmissionsTableAddDefaultToGradeStatus < ActiveRecord::Migration
  def change
  	  change_table :submissions do |t|
      t.remove :grade_status
      t.column :grade_status, :string, :default => "Pending"
    end
  end
end
