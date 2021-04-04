class DeleteColumnsFromUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :google_token, :string
    remove_column :users, :google_refresh_token, :string
  end
end
