class AddDateColumnToGists < ActiveRecord::Migration
  def change
    change_table 
      add_column :gists, :date, :string
    end
  end
end
