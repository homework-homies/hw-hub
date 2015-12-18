class AddSubmissionLinkColumnToSubmissions < ActiveRecord::Migration
  def change
    add_column :submissions, :submission_link, :string
  end
end
