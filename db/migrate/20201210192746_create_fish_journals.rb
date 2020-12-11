class CreateFishJournals < ActiveRecord::Migration[6.0]
  def change
    create_table :fish_journals do |t|
      t.integer :date
      t.string :fish_type
      t.float :fish_length
      t.float :fish_weight
      t.string :moon_phase
      t.string :tide
      t.string :rod_setup
      t.string :note
      t.string :image
      t.integer :pin_id

      t.timestamps
    end
  end
end
