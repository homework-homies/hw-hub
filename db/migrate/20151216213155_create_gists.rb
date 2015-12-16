class CreateGists < ActiveRecord::Migration
  def change
    create_table :gists do |t|
      t.string :title
      t.string :content
      t.string :gist_link
      t.references :instructor
      t.references :cohort
    end
  end
end
