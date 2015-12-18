class UpdateGistsTableDateDataTypeToDate < ActiveRecord::Migration
  def change
    change_table :gists do |t|
      t.remove :date
      t.column :date, :date
    end
  end
end
