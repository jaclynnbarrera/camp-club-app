class AddCampsiteIdToReviews < ActiveRecord::Migration[6.1]
  def change
    add_column :reviews, :campsite_id, :integer
  end
end
