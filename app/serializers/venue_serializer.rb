class VenueSerializer < ActiveModel::Serializer
  attributes :id, :name, :city
  has_many :comedians
end
