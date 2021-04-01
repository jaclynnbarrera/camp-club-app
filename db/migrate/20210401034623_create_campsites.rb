class CreateCampsites < ActiveRecord::Migration[6.1]
  def change
    create_table :campsites do |t|
      t.string :name
      t.string :address
      t.text :bio

      t.timestamps
    end
  end
end
