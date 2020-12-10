class CreateFishSaves < ActiveRecord::Migration[6.0]
  def change
    create_table :fish_saves do |t|
      t.string :species_name
      t.string :taste
      t.string :texture
      t.string :biology
      t.string :habitat
      t.string :population_status
      t.string :phyiscal_description
      t.string :fisheries_region
      t.string :location
      t.string :availability
      t.string :image
      t.string :personal_note
      t.integer :user_id

      t.timestamps
    end
  end
end
