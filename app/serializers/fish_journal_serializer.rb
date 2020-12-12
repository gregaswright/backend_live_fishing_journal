class FishJournalSerializer < ActiveModel::Serializer
  attributes :id, :date, :fish_type, :fish_length, :fish_weight, :moon_phase, :tide, :rod_setup, :note, :image, :pin_id
end
