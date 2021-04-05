class AddToCampsites < ActiveRecord::Migration[6.1]
  def change
    remove_column :campsites, :address, :string
    add_column :campsites, :state, :string
    add_column :campsites, :rv, :string
    add_column :campsites, :bathroom, :string
    add_column :campsites, :firewood, :string
    add_column :campsites, :pets, :string
  end
end
