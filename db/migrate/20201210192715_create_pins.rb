class CreatePins < ActiveRecord::Migration[6.0]
  def change
    create_table :pins do |t|
      t.string :title
      t.float :latitude
      t.float :longitude
      t.integer :user_id
      t.timestamps
    end
  end
end
