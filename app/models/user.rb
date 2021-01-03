class User < ApplicationRecord
    has_many :pins
    has_many :fish_saves

    has_secure_password
    validates :username, uniqueness: { case_sensitive: false }

end
