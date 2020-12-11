class Pin < ApplicationRecord
    has_many :fish_journals
    belongs_to :user
end
