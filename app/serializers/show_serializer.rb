class ShowSerializer < ActiveModel::Serializer
  attributes :id, :date
  has_one :comedian
  has_one :venue
end
