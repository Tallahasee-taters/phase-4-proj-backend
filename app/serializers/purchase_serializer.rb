class PurchaseSerializer < ActiveModel::Serializer
  attributes :id, :ticket, :price
  has_one :user
  has_one :show
end
