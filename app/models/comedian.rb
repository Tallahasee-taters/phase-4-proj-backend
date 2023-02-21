class Comedian < ApplicationRecord
    has_many :shows, dependent: :destroy
    has_many :venues, through: :shows

    validates :name, presence: true
end
