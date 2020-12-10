class FishJournal < ApplicationRecord
    belongs_to :user
    belongs_to :pin
    has_many :comments 
end
