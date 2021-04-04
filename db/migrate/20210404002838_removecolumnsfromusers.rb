class Removecolumnsfromusers < ActiveRecord::Migration[6.1]
  def change
      remove_column :users, :google_toke, :string
  end
end
