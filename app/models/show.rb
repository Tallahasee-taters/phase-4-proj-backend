class Show < ApplicationRecord
  belongs_to :comedian
  belongs_to :venue
  has_many :purchases
  has_many :users, through: :purchases

  
end
