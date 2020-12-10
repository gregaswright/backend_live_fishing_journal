class User < ApplicationRecord
    has_many :fish_saves
    has_many :fish_journals
    has_many :pins, through: :fish_journals 
    has_many :comments

    has_secure_password
    validates :username, uniqueness: { case_sensitive: false }

end
