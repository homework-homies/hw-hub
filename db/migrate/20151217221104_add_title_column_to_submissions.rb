class AddTitleColumnToSubmissions < ActiveRecord::Migration
  def change
    change_table 
      add_column :submissions, :title, :string
    end
  end
end
