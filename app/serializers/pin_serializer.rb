class PinSerializer < ActiveModel::Serializer
  attributes :id, :title, :latitude, :longitude, :user_id
  has_many :fish_journals
end
