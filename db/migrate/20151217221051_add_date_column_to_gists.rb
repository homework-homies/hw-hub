class AddDateColumnToGists < ActiveRecord::Migration
  def change 
    add_column :gists, :date, :string
  end
end
