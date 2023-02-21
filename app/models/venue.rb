class Venue < ApplicationRecord
    has_many :shows, dependent: :destroy
    has_many :comedians, through: :shows

    validates :name, presence: true
end
