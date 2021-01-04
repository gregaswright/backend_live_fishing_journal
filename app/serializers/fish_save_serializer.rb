class FishSaveSerializer < ActiveModel::Serializer
  attributes :id, :species_name, :taste, :texture, :biology, :habitat, :population_status, :phyiscal_description, :fisheries_region, :location, :availability, :image, :personal_note, :user_id
end
