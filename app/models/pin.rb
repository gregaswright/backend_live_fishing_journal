class Pin < ApplicationRecord
    has_many :fish_journals
    has_many :users, through: :fish_journals
end
